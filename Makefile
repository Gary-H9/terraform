init:
	terraform init

plan: 
	terraform plan

validate: 
	terraform validate

apply:
	terraform apply

destroy: 
	terraform destroy

.PHONY: init plan validate apply destroy
