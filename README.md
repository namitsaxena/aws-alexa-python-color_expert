# AWS Lambda Hello World Example (Python)
AWS lambda template for python (with local package deployment using cli). Starter project

## Notes
- function handler: should be your script_file.lambda_handler (online only sample typically have this as lambda.lambda_handler)
- Role: is not set here. Can be set on the AWS ui (https://console.aws.amazon.com/lambda/home?region=us-east-1#/functions/). 
-- This should be Role: choose an existing role. Existing Role: lambda_basic_execution

## Prerequisites
- Python (the included script use version 2.7)
- pip
- virtual environments
- aws account and cli should have been configured

## Setup
- Setup virtual environment with dependencies (optional - not really required for this code)
- setup.sh is inclued, only as a reference
- activite your virtual environment

## Packaging & Deployment
- package the code using package.sh. This will create the upload zip file
- deploy_new.sh: will deploy the zip to aws, and create a new functions 
- deploy_update.sh: deploy to update a function script
- update the role

## Testing
- test.sh can be used to execute the test output will be produced locally
- The code can also be tested on aws via website
- The test json is available on aws as a test sample for color expert skill

## References
- [Deploying a Sample Custom Skill to AWS Lambda](https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/deploying-a-sample-skill-to-aws-lambda#creating-the-lambda-function-for-the-sample)
