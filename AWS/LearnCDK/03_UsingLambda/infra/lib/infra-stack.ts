import * as cdk from 'aws-cdk-lib/core';
import { Construct } from 'constructs';
import * as lambda from 'aws-cdk-lib/aws-lambda';
import * as cloudwatch from 'aws-cdk-lib/aws-cloudwatch'
import { Alias } from 'aws-cdk-lib/aws-kms';

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

    const cloudWatchInstance = new cloudwatch.Alarm(this,'cloudwatchlogicalid',{
      evaluationPeriods:1,
      threshold:1,
      metric: lambdaInstance.metricErrors()
    })
  }
}
