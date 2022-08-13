export TF_AWS_ACCESS_KEY=
export TF_AWS_SECRET_KEY=

terraform plan -var=billing_code="ACCT8675309" -var=project="web-app" -var=aws_access_key="" -var=aws_secret_key="" -out nginx-webapp4.tfplan
