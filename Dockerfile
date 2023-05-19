FROM nginx

# Install the AWS Command Line Interface (CLI)
RUN apt-get update && apt-get install -y awscli

# Set AWS credentials (replace with your own)
ENV AWS_ACCESS_KEY_ID="ASIA4NVGMN52Q5OIVYI6"
ENV AWS_SECRET_ACCESS_KEY="WVY29tuaPAsDfZFeSKSbqn/PYOMapghIE/9w4wK7"
ENV AWS_SESSION_TOKEN="IQoJb3JpZ2luX2VjEEoaCXVzLWVhc3QtMSJHMEUCIQCpImACDi2Fe+EztAORrSrfxx//d4kEt6t5v4fS15BdeAIgVDvCJ/4yddinRq5kHJ79It4sHEuI+qDL0EUnaMQkuxUqjwMIchABGgw4NTM5NzM2OTIyNzciDCYe4gdv6sqqQ3QwCyrsAqgRt7A8IOo+Y2bq0fY6AMDUw9Rx7zl4hFAjTc7CyQEc/sbCdBr9hLSbeqozO1rCyLFu1ILkgDLJYz+Vh1ZWpKKtqyRv3tAxrKu4a+xDhVJc0g4ZscHuUh77A1zbAsuIHi9fwGdxZQvk02K414G2xofbqrj/hBEP7wlMEPJbChK9kJ2RZJtFaJ0GvkyT0qWg+QCsF//No8Tl6vtcAeXZyzzHN7SE0Bs4aXwR3x2PiR7uehPjmyN4W/1PQsC4SrBjRDwgNtPY3hbDMawkBm1d5spoMiPlxlBAry7bc3+ExqcIwLLKixllzxlElFvgZrWgxphFdV7n+ghXOsFt77j3Yidyebrk783xN2SgQmGtihGK2vzzEdvNrh30xpuf+PQ5Bnzb5HO2iHRKB/VxM/qqTNlp6pHYGIy23cp4MGB9mSCS6iH51IZJSPEtbOEwlp7/MFD+/JrAnVuUT995l5lmTCW0jcNTlOqFUAU2pmcw+fycowY6pgEmPsEya0qPc3pNwtNq0JBNkT/Vr+WeKJKbT5Qas5sBcVKLEPyG2N0vn0j/P2nDD+oioM3/lBuvzGJUl3en71kkQb/mTlXNdxkIuhJZMLUCxaLars+xwj9CV/8QKTtUqzFNx+HdcdOCUH3hIZ2qVqO6ej//R3CO+mNCEfDx9IO0nSe0HB365KqCdIGJE7tGCxrex/ZEXQ4OeVqftJ7nfzt7wfUjl+mP"
ENV AWS_DEFAULT_REGION="us-east-1"
# Set the S3 bucket and file path
RUN echo ${AWS_REGION}

# Copy the content from S3 to the Nginx server
RUN aws s3 cp s3://adarsh-code-source-bucket-2/j/ /usr/share/nginx/html/ --recursive

# Expose the Nginx port
EXPOSE 80