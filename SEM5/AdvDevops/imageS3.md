To set up an AWS Lambda function to log "an image has been added" whenever a file is uploaded to an S3 bucket, follow these steps:

**Step 1: Create an S3 Bucket**

If you haven't already created an S3 bucket to store the uploaded images, you can create one using the AWS Management Console.

**Step 2: Create an AWS Lambda Function**

1. Log in to your AWS Management Console.
2. Go to the Lambda service.
3. Click the "Create function" button.
4. Choose "Author from scratch" and provide a name for your Lambda function.
5. For the runtime, select a suitable runtime like Node.js or Python.
6. In the "Execution role" section, create a new role with permissions to read from the S3 bucket and write logs to CloudWatch Logs.
7. Click "Create function" to create the Lambda function.

**Step 3: Configure S3 Event Trigger**

1. In the Lambda function's configuration, under the "Designer" section, click on "Add trigger."
2. Search for and select "S3" as the trigger source.
3. Configure the trigger settings:
   - Choose the S3 bucket where you want to monitor uploads.
   - Choose the event type, typically "All object create events."
   - Enable "Enable trigger" and click "Add."

**Step 4: Write Lambda Function Code**

1. In the Lambda function's configuration, scroll down to the "Function code" section.
2. Replace the default code with code that logs the desired message. Here's an example in Python:

```python
import json
import logging

def lambda_handler(event, context):
    # Log that an image has been added
    logging.info("An image has been added")
    
    return {
        "statusCode": 200,
        "body": json.dumps("Lambda function executed successfully.")
    }
```
```
import json
def lambda_handler(event, context):
    # Check if the event is an S3 event
    if 'Records' in event:
        for record in event['Records']:
            if record['eventSource'] == 'aws:s3' and record['eventName'].startswith('ObjectCreated'):
                # Handle the event when an object (image) is created in the S3 bucket
                print("Image Uploaded")
                # You can perform additional processing here if needed
    return {
        'statusCode': 200,
        'body': json.dumps('Lambda executed successfully!')
    }
```

3. Save the Lambda function.

**Step 5: Test Your Setup**

You can test your setup by uploading an image to the S3 bucket you specified in the trigger configuration. This should trigger the Lambda function, which will log the message to CloudWatch Logs.

**Step 6: View Logs in CloudWatch**

To view the logs, go to the CloudWatch service in the AWS Management Console, and navigate to your Lambda function's log group. You should see log entries indicating that "An image has been added" whenever an image is uploaded to the S3 bucket.

That's it! Your Lambda function is now set up to log "an image has been added" whenever a file is uploaded to the specified S3 bucket. You can further enhance this function to perform additional actions based on the uploaded files, such as processing or analyzing the images.
