#!/bin/bash

# Option 1
# #!/bin/bash -x

# Option 2
# Enter: bash -x ./fileName

# Option 3 for target point of program

set -x

echo "Enter file name to substitute using SED: "
read fileName

set +x

if [ -f $fileName ]
then
    cat newFile | sed 's/i/I/'
else
    echo "$fileName does no exist!!!"
fi
