import operator
from xml.sax import parse
from xml.sax.handler import ContentHandler
from operator import itemgetter

class OpenPNPHandler(ContentHandler):
    def __init__(self):
        super().__init__()
        self.element_stack = []

    @property
    def current_element(self):
        return self.element_stack[-1]

    def startElement(self, name, attrs):
        self.element_stack.append({
            "name": name,
            "attributes": dict(attrs),
            "children": [],
            "value": ""
        })

    def endElement(self, name):
        clean(self.current_element)
        if len(self.element_stack) > 1:
            child = self.element_stack.pop()
            self.current_element["children"].append(child)

    def characters(self, content):
        self.current_element["value"] += content

def clean(element):
    element["value"] = element["value"].strip()
    for key in ("attributes", "children", "value"):
        if not element[key]:
            del element[key]

def process(md, element, depth):

    md.write('\t' * depth)
    #Output title for section
    md.write(f"{element['name']}")

    if 'attributes' in element:
        if 'name' in element['attributes']:
            md.write(" (")
            md.write(element['attributes']['name'])
            md.write(")")

    md.write("\n")

    #Underline
    md.write('\t' * depth)
    md.write("-" * len(element['name']))
    md.write("\n")


    if 'value' in element:
        md.write('\t' * depth)
        md.write(f"Value = \"{element['value']}\"\n")

    if 'attributes' in element:
        #md.write(f"Attributes = {section['attributes']}\n")
        #md.write('\t' * depth)
        #md.write("|Attribute\t|Value\t|\n")

        #Sort the dictionary keys to keep the output text consistant
        sorted_dict = dict(sorted(element['attributes'].items()))
        for attrib,value in sorted_dict.items():
            md.write('\t' * depth)
            md.write(f"{attrib}=")
            md.write(f"'{value}'")
            md.write("\n")

        md.write("\n")

    #Do we have children?
    if 'children' in element:
        children=element['children']
        
        #Sort the list using the name from the childs attributes
        if len(children)>1 and 'attributes' in children[0]:           
            if 'name' in children[0]['attributes']:
                #print('sort >')
                #print(children)
                children = sorted(children, key=lambda k: k.get('attributes',{}).get('name',''))

        for child in children:
            process(md,child, depth+1)

    #Line break
    md.write(f"\n")

# Parse the XML into native Python lists/dicts
handler=OpenPNPHandler()
parse("machine.xml", handler)

root = handler.current_element

# Debug dump the structure into JSON
#import json
#with open('data.json', 'w') as f:
#    json.dump(root, f)

with open('document.md', 'w') as md:

    md.write("machine.xml\n")
    md.write("===========\n")

    for machine in root['children']:
        #Need to sort these keys here before output...

        all_sections=[]
        for section in machine['children']:
            all_sections.append(section['name'])
        all_sections=sorted(all_sections)
        
        # Process alphabetically
        for name in all_sections:
            #'actuators', 'axes', 'cameras', 'discard-location', 'drivers' ....
            for s in machine['children']:
                if s['name'] == name:
                    process(md,s,0)
