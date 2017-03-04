# http://docs.aws.amazon.com/lambda/latest/dg/lambda-python-how-to-create-deployment-package.html#deployment-pkg-for-virtualenv
# NOTE - this is only for reference. 
# Sets-up the local python environment
# This setup used virtual environmens for installing any additional dependencies
#  - virtual environment is setup at the root of the project folder (even though the packaging is done manually so can get the libraries from anywhere)
# this is setting up default python on the box (2.7) - this can be changed though
# Note: The requests package is not required here - this has been added only as a sample


virtualenv -p /usr/bin/python env
source env/bin/activate
pip install requests  
pip freeze > requirements.txt 