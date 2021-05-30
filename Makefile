include .env
export $(shell sed 's/=.*//' .env)

init:
	terraform init 

plan:
	terraform plan 

apply:
	terraform apply 

exe:
	terraform plan && \
	terraform apply --auto-approve

import:
	terraform init  && \
	terraform import aws_cloudfront_distribution.www_distribution E3LG665SRJ9ZVD && \
	terraform destroy --auto-approve

destroy:
	terraform destroy --auto-approve

infra:
	terraform plan -out infra && \
	terraform apply -input=false infra;