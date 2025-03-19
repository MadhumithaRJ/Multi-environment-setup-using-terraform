1. install az CLI
2. configure azure
   az login
3. create 3 workspace, select the workspace and assign the value for the variable env.
   
    a) Dev environment:
   
         terraform workspace new dev
   
         terraform workspace select dev
   
         terraform plan
   
         terraform apply -var="env=dev" --auto-approve

    b) Staging environment:
   
         terraform workspace new staging
      
         terraform workspace select staging
      
         terraform plan
      
         terraform apply -var="env=staging" --auto-approve
  
    c) Production environemnt:
   
         terraform workspace new prod
      
         terraform workspace select prod
      
         terraform plan
      
         terraform apply -var="env=production" --auto-approve
