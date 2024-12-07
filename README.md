## Introduction

The architecture diagram below is used to depict the resources that are created by Terraform in this repo.

![Screenshot 2024-12-07 010738](https://github.com/user-attachments/assets/cffd0494-3160-48bb-8c99-23ebcf65fa71)

## SSM Port Forwarding

We would also be using the SSM Port Forwarding feature to be able to remotely access our database from our local machine. This is useful if you want to access a database in a DB subnet via SQL workbench locally.

### Pre-Requisites

- AWS CLI with permissions configured to use the SSM:StartSession API call
- A AWS system manager managed instance - EC2, ECS, EKS etc.
- Make sure that your database instance is remotely accessible from your instance, i.e., the associated security group or firewall isn’t blocking remote connections.
- Session manager plugin installed for your local machine
- SQL workbench(Optional) if you want to test connections

### Verify & Test SSM permissions

This command will work only if you have installed and configured the AWS CLI, and if your Session Manager administrator has granted you the necessary IAM permissions to access the target managed node using Session Manager.

```console
aws ssm start-session --target instance-id
```

![Screenshot 2024-12-07 085543](https://github.com/user-attachments/assets/b7d998c9-e8ce-426e-a218-b563f617790f)

### Testing connection from terminal

