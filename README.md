# VASP RT Infra based on Red Baron and Terraform


<p align="center">
  <img src="https://www.esecforte.com/wp-content/uploads/2019/04/red-teaming-services-e1554980392711-1024x269.png" alt="VASP"/>
</p>



This is a set of [modules](https://www.terraform.io/docs/modules/index.html) and custom/third-party providers for [Terraform](https://www.terraform.io/) which tries to automate the creation of resilient, disposable, secure and agile infrastructure for Red Teams.


# Setup

**Only Terraform version 0.11.x is supported and will only work on Linux x64 systems.** 

```
#~ export AWS_ACCESS_KEY_ID="accesskey"
#~ export AWS_SECRET_ACCESS_KEY="secretkey"
#~ export AWS_DEFAULT_REGION="us-east-1"
#~ export LINODE_API_KEY="apikey"
#~ export DIGITALOCEAN_TOKEN="token"
#~ export GODADDY_API_KEY="gdkey"
#~ export GODADDY_API_SECRET="gdsecret"
#~ export ARM_SUBSCRIPTION_ID="azure_subscription_id"
#~ export ARM_CLIENT_ID="azure_app_id"
#~ export ARM_CLIENT_SECRET="azure_app_password"
#~ export ARM_TENANT_ID="azure_tenant_id"

# For Google Cloud Compute see https://www.terraform.io/docs/providers/google/index.html#configuration-reference 
# and set the appropriate environment variable for your use case

# copy an infrastructure configuration file from the examples folder to the root directory and modify it to your needs
#~ cp examples/complete_c2.tf .

#~ terraform init
#~ terraform plan
#~ terraform apply
```

# License

This is a modified version of the original Red Baron repository which is licensed under the GNU General Public License v3.0.

# Red Baron Author and Acknowledgments

Author: Marcello Salvati ([@byt3bl33d3r](https://twitter.com/byt3bl33d3r))

And [@bluscreenofjeff's](https://twitter.com/bluscreenofjeff) amazing [Red Team Infrastructure Wiki](https://github.com/bluscreenofjeff/Red-Team-Infrastructure-Wiki)

Both of these resources were referenced heavily while building this.
