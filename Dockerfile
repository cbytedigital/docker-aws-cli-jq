FROM amazonlinux:latest

# Install required dependencies
RUN yum install -y \
    python3 \
    python3-pip \
    jq \
    && yum clean all

# Install AWS CLI
RUN pip3 install awscli

# Define entrypoint
ENTRYPOINT ["/usr/local/bin/aws"]
