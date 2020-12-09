# epam_lab_iac
Hometask IaC in EPAM LAB

Task:

Create nginx webserver with php backend and database MYSQL for Wordpress
installation. For infrastructure configuration pls use Terraform/Cloudformation.

For setup Wordpess into instance pls use ansible roles:

https://galaxy.ansible.com/nginxinc/nginx - for nginx

https://galaxy.ansible.com/geerlingguy/php - for php



##############################

This project create one ec2_instance for NGINX with PHP_FPM
and one RDS instance in AWS cloud

After estimating time for deploy Wordpress, I figured out to skip this step for that moment. It will be released in nearest future.

##############################

### Environment

0. You nee to have installed Terraform (ver 0.12/0.13) in your system (it was check on Terraform v0.12.26, v0.13.2)

1. You have to have generated private key, which will be used while creating AWS
 ec2_instance.
2. Private key file should be placed in home directory with right permissions
on instance where terraform will be started
3. To get access to AWS you should use environment variable:
        AWS_ACCESS_KEY_ID=
        AWS_SECRET_ACCESS_KEY=
    (use  export AWS_ACCESS_KEY_ID=YOUR_ID
          export AWS_SECRET_ACCESS_KEY=YOUR_KEY before run script)
4. Revise and edit variable file variables.tf (every variable has description)

5. Essential variables to personalise your infrastructure:

    1. private_key_ec2
    2. cluster_name
    3. createdby
    4. aws_region
    5. instance_type
    6. instance_access_private_key
    7. db_allocated_storage
    8. db.t2.micro
    9. db_username    
    10. db_password
    11. nginx_http_host
    12. nginx_http_conf

     (Be careful with sensible information - do not push config files
     with your real credentials into public accessible repository)

6. To Store terraform state it used S3 Bucket. You need to have this bucket before running project. Edit state.tf to access to your bucket.

7. To adopt this project to use with your repository you need to edit state.tf line 68

    *(It will be improved (in a future releases) by using S3 for storing files and "vault system" to store secrets to access to s3 and to store other project secrets)

### Running

  To check this homework task:

    1. git clone https://github.com/briukhanov/epam_lab_iac.git
    2. edit veriables.tf
          1. private_key_ec2
          2. instance_access_private_key
    3. edit state.tf (to access to your s3_bucket)
    4. Set environment variables to get access to AWS
          1. AWS_ACCESS_KEY_ID
          2. AWS_SECRET_ACCESS_KEY
    5. at cloned project directory run:

```
terraform init
terraform plan
terraform apply
```

    6. after successful terraform run you can copy web server address from terminal output and check your infrastructure.
      For example:
      http://http://ec2-18-156-175-4.eu-central-1.compute.amazonaws.com
      will return page with database address and sql server version on success

      http://ec2-18-156-175-4.eu-central-1.compute.amazonaws.com/info.php/info.php
      will return php info page


  ### Cleaning UP

  Run:

```
terraform destroy
```
