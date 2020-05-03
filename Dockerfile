FROM hashicorp/terraform:light

RUN apk update && apk add curl

RUN mkdir -p ~/.terraform.d/plugins && \
    curl -sSfL https://github.com/secrethub/terraform-provider-secrethub/releases/latest/download/terraform-provider-secrethub-linux-amd64.tar.gz | \
    tar zxf - -C ~/.terraform.d/plugins
