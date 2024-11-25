import { DynamoDB } from '@aws-sdk/client-dynamodb';
import { DynamoDBDocument } from '@aws-sdk/lib-dynamodb';

const client = new DynamoDB({ region: 'us-east-1' });
const dynamodb = DynamoDBDocument.from(client);

export const handler = async (event) => {
    if (event.httpMethod === 'OPTIONS') {
        return {
            statusCode: 200,
            headers: {
                'Access-Control-Allow-Origin': 'https://d5z5n79osgism.cloudfront.net',
                'Access-Control-Allow-Headers': 'Content-Type',
                'Access-Control-Allow-Methods': 'GET,OPTIONS'
            },
            body: ''
        };
    }

    const params = {
        TableName: 'VisitorCounter',
        Key: { id: 'visitors' },
        UpdateExpression: 'SET #count = if_not_exists(#count, :zero) + :incr',
        ExpressionAttributeNames: { '#count': 'count' },
        ExpressionAttributeValues: { ':incr': 1, ':zero': 0 },
        ReturnValues: 'UPDATED_NEW'
    };

    try {
        const result = await dynamodb.update(params);
        return {
            statusCode: 200,
            headers: {
                'Access-Control-Allow-Origin': 'https://d5z5n79osgism.cloudfront.net',
                'Access-Control-Allow-Headers': 'Content-Type',
                'Access-Control-Allow-Methods': 'GET,OPTIONS',
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ count: result.Attributes.count })
        };
    } catch (error) {
        console.error('Error:', error);
        return {
            statusCode: 500,
            headers: {
                'Access-Control-Allow-Origin': 'https://d5z5n79osgism.cloudfront.net',
                'Access-Control-Allow-Headers': 'Content-Type',
                'Access-Control-Allow-Methods': 'GET,OPTIONS',
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ error: 'Failed to update visitor count' })
        };
    }
};
