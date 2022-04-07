This folder contains the following challenge

Challenge #1

A 3-tier environment is a common setup. Use a tool of your choosing/familiarity create these resources. Please remember we will not be judged on the outcome but more focusing on the approach, style and reproducibility.

Link Referred - https://github.com/Azure/azure-quickstart-templates/tree/master/application-workloads/redhat/rhel-3tier-iaas



This script will deploy:

One Virtual Network with four subnets
4 Network Security Group, one for each subnet
External Load Balancer to load balance Web Traffic(HTTP & HTTPS) to web servers
Internal Load Balancer to load balance traffic for app VM's
2 Public IP’s, one for external Load balancer and other for Jump VM
Virtual Machine Availability sets for Web Tier, Application Tier and Database tier
One Jump VM to faclitate RDP access to all other tier VMs
Multiple windows VMs with nics



Deployment Instruction:
- Copy the Shell script / parameter file to azure cli 
- set subscription
  az accout set --subscription <subscription_id>
- update the template file to change the resourse name as needed.
- Execute the shript
  bash azureinfrasetup.sh
