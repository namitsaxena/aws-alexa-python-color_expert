#!/bin/bash
# http://docs.aws.amazon.com/lambda/latest/dg/python-programming-model-handler-types.html
# update below with your
# region, account number, zip file, handler (python file and function) (and python version if needed)
# most of the this information is available if you login
# https://console.aws.amazon.com/lambda/home?region=us-east-1#/

# function name should be the same as skill name

# update with correct information
vRegion="us-east-1"
vAccountNumber="000000000" #update the code with your account number 

aws lambda create-function \
--region us-east-1 \
--function-name ColorExpert \
--zip-file fileb://aws-package.zip \
--role arn:aws:iam::116854872724:role/lambda_basic_execution  \
--handler color_expert.lambda_handler \
--runtime python2.7 \
--timeout 15 \
--memory-size 512
