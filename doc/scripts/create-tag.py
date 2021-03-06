#!/usr/bin/env python3

import argparse
import subprocess
import os
from typing import List, Optional, TextIO


def git_tag_list(ignore_tags: Optional[List[str]] = list()) -> List[str]:
    """
    Queries git for a list of tags which are then filtered according to the ignore_tags parameter.
     a list of git tar
    :param ignore_tags: an optional list of tags to filter from the returned list.
    :return: a list of tags in the current repository
    """
    # Use the subprocess module to fetch the return from git tag
    p = subprocess.Popen('git tag', stdout=subprocess.PIPE, shell=True)
    output = p.communicate()[0]
    tags = output.decode('utf-8').splitlines()
    return list(set(tags) - set(ignore_tags))


def append_version(file: TextIO, version: str, url: str) -> None:
    """
    Adds a version entry to file based on the inputs version and url.

    :param file: the file object to append the version entry to
    :param version: the version to use in the version entry
    :param url: the url to use in the version entry
    :return: None
    """
    file.write('[[params.versions]]\n')
    file.write('\tversion="{}"\n'.format(version))
    file.write('\turl="{}"\n'.format(url))


def append_versions(file: TextIO, tags: List[str], base_url: str) -> None:
    """
    Adds version entries to the specified config.toml file based on the provided tag list.

    :param filename: the filename to append the version entries
    :param tags: a list of tag names for which version entries should be output for
    :param base_url: the base url which is used for all output
    :return: None
    """

    # Ensure the base url doesn't end with a slash as we insert slashes
    url = base_url
    if url.endswith('/'):
        url = url[:-1]

    # Output Versions
    for tag in tags:
        append_version(file, tag, '{}/tag/{}/'.format(url, tag))


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('base_url', metavar='baseURL', type=str,
                        help="Specifies the base URL to deploy to")
    parser.add_argument('-o', '--output', default='config.toml',
                        help="Specifies the file to append the versions to")

    args = parser.parse_args()

    ignore_list = os.getenv('ignore_tags', '').splitlines()
    tag_list = git_tag_list(ignore_list)

    with open(args.output, 'a') as config:
        config.write('\n')
        append_version(config, 'main', args.base_url)
        append_versions(config, tag_list, args.base_url)
        config.write('\n')
