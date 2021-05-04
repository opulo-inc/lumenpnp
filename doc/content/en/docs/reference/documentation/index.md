---
title: "Documentation"
linkTitle: "Documentation"
weight: 30
description: >-
     Page containing topics to do with how the documentation works.
---

## Folder structure

The documentation is essentially built up using markdown with a certain folder structure. Section pages are made with folders containing an `_index.md` file in the root, subsections are built with folders and an `index.md` file in the root. The `weight` is what gives the certain ordering of the pages in each section.

The easiest way is to click the buttons on the right hand side of the docs page and it will generate, you just need to rename the file with the correct folder name and file name from the default `change-me.md`.

See below for an example file structure for the section pages or subsection pages which is auto-generated on clicking of the buttons.

```
---
title: "Long Page Title"
linkTitle: "Short Nav Title"
weight: 100
description: >-
     Page description for heading and indexes.
---

## Heading

Edit this template to create your new page.

* Give it a good name, ending in `.md` - e.g. `getting-started.md`
* Edit the "front matter" section at the top of the page (weight controls how its ordered amongst other pages in the same directory; lowest number first).
* Add a good commit message at the bottom of the page (<80 characters; use the extended description field for more detail).
* Create a new branch so you can preview your new file and request a review via Pull Request.

```

## Testing

Testing changes requires that you be able to run `docker` and `docker-compose`. Once these tools are installed, follow the steps below to test.

1. Navigate to the `doc` directory of the repository.
1. Build the docker image
   
   ```bash
   docker-compose build
   ```

1. Run the build image

   ```bash
   docker-compose up
   ```

1. Open the address `http://localhost:1313/index` in your web browser to preview your documentation. You can now make changes to the source files, those changes will be live-reloaded in your browser.
1. Press CTRL+C to exit
1. Remove the docker images.

   ```bash
   docker-compose rm
   ```


## Building the docs

Generation is done with Hugo doc generator and the docsy theme. Take a look at https://www.docsy.dev if you want to get set up for local preview. Updates to the site happen automatically on merge to the `assembly-guide` branch via GitHub actions. So contributing pull requests is the proper way to update the site.

See [this comment](https://github.com/index-machines/index/issues/247#issuecomment-808963090) for more details.
