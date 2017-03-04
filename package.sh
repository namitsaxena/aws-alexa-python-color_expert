#!/bin/bash
# http://docs.aws.amazon.com/lambda/latest/dg/lambda-python-how-to-create-deployment-package.html#deployment-pkg-for-virtualenv
# creates a package for uploading to aws with code and dependencies

vWorkDir=tmp

rm -rf "${vWorkDir}" 2> /dev/null
mkdir ${vWorkDir}
cp -r env/lib/python2.7/site-packages/* ${vWorkDir}
cp *.py ${vWorkDir}

cd ${vWorkDir}
zip aws-package.zip * -r -X
cp aws-package.zip ..

cd ..
rm -rf "${vWorkDir}" 2> /dev/null


