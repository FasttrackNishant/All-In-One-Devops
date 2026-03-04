import * as cdk from 'aws-cdk-lib/core';
import { Construct } from 'constructs';
import * as dynamodb from 'aws-cdk-lib/aws-dynamodb';
import { PartitionKey } from 'aws-cdk-lib/aws-appsync';
// import * as sqs from 'aws-cdk-lib/aws-sqs';

export class InfraStack extends cdk.Stack {
  constructor(scope: Construct, id: string, props?: cdk.StackProps) {
    super(scope, id, props);

    // The code that defines your stack goes here

    const dbInstance = new dynamodb.Table(this,'dynamodbId',{
      readCapacity:3,
      writeCapacity:3,
      partitionKey:{
        name:'customerId',
        type:dynamodb.AttributeType.NUMBER,
      },
      tableName:"AmazonCustomers"
    })

    // example resource
    // const queue = new sqs.Queue(this, 'InfraQueue', {
    //   visib ilityTimeout: cdk.Duration.seconds(300)
    // });
  }




}
