# AWS Lambda: Send Email using AWS SES
This function will send templated (by Jinja) email message with image attachment using AWS SES to the specified email address. 
May be useful for landing (marketing) static website which contains "Contact Us" form.


## Requirements

* SAM CLI - [Install the SAM CLI](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-install.html)
* [Python 3 installed](https://www.python.org/downloads/)
* Docker - [Install Docker community edition](https://hub.docker.com/search/?type=edition&offering=community)

### Requirements (shorten)
In most cases for MacOS it will be enough


```bash
brew install awscli
brew install aws-sam-cli
aws init  # Authenticate by administrative access key's pair
```


## Configure
Copy `env_example.json` to `env.json` and set secrets in new file.
> Optionally you can disable Sentry integration by commenting out `sentry_sdk.init` in `send_email/app.py`


## Local (build & run)
```bash
sam build            # Build package
sam local start-api  # Run package

# In case if sam says Docker not running in your system
DOCKER_HOST=unix://$HOME/.docker/run/docker.sock sam local start-api
```


# Deploy
```bash
sam build    # Build package
./deploy.sh  # Run Cloudformation deployment
```


## Use
```
curl -X POST <FUNCTION_URL> \
   -H "Content-Type: application/json" \
   -d '{"your_name": "Denis"}'
```


## Destroy resources
```bash
sam delete
```