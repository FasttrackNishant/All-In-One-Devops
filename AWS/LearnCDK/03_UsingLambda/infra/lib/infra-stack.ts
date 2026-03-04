import * as cdk from 'aws-cdk-lib/core';
import { Construct } from 'constructs';
import * as lambda from 'aws-cdk-lib/aws-lambda';

export class InfraStack extends cdk.Stack {
  constructor(scope: Construct, id: string, props?: cdk.StackProps) {
    super(scope, id, props);

    // The code that defines your stack goes here

    const lambdaInstance = new lambda.Function(this,'lambdalogicalid',{
      handler: 'lambda_function.lambda_handler', 
      runtime : lambda.Runtime.PYTHON_3_10,
      code : lambda.Code.fromAsset('../services/'),
      functionName : 'testcdklambdafirst'
    });
  }
}
