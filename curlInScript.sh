#!/bin/bash

# man curl for check options

# to download
url="put URL"
curl ${url} -O # for original file name
curl ${url} -o NewFileName # for change file name
curl ${url} > NewFileName # for change file name
curl -I ${url} # info about a target file

