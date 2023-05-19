FROM nginx

# Install the AWS Command Line Interface (CLI)
RUN apt-get update && apt-get install -y awscli
# ARG AWS_ACCESS_KEY_ID
# ARG AWS_SECRET_ACCESS_KEY
# ARG AWS_SESSION_TOKEN
# # Set AWS credentials (replace with your own)
# ENV AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
# ENV AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
# ENV AWS_SESSION_TOKEN=$AWS_SESSION_TOKEN
# ENV AWS_DEFAULT_REGION="us-east-1"
# Set the S3 bucket and file path
# RUN echo ${AWS_REGION}

# # Copy the content from S3 to the Nginx server
# RUN aws s3 cp s3://adarsh-code-source-bucket-2/j/ /usr/share/nginx/html/ --recursive
COPY ./s3 /usr/share/nginx/html/
# Expose the Nginx port
EXPOSE 80