#cidr :  Classless Inter-Domain Routing
#/2  --> 100.0.0.0    to  105.255.255.255   The 1st  2 bits are taken 30 bits > Bilion      posssibilities
#/8  --> 10.0.0.0     to   10.255.255.255   The 1st  8 bits are taken 24 bits ~ 16.7 Milion posssibilities --> Network
#/16 --> 10.255.0.0   to   10.255.255.255   The 1st 16 bits are taken 16 bits = 65,536      posssibilities
#/24 --> 10.255.255.0 to   10.255.255.255   The 1st 24 bits are taken  8 bits = 256         posssibilities --> Subnet
#/30 --> 10.255.200   to   10.255.255.255   The 1st 30 bits are taken  2 bits = 4           posssibilities

# 1st ip is  the subnet representation 
# 2nd is the gateway 
# last ip is broadcastin  (so in 10.)
# taken numbers -->   Class A: 10.0.0.0 to 10.255.255.255
#                     Class B: 172.16.0.0 to 172.31.255.255
#                     Class C: 192.168.0.0 to 192.168.255.255

# tenancy :  the instance hardware 
# -----------------------------------
# Default Tenancy (Shared instance) 
# Dedicated Instances
# Dedicated Hosts

# when we declare vcp - we need to make sure that each of 
# the components there will be 
# a communication means 

resource "aws_vpc" "custom_vpc" {
  cidr_block           = "10.0.0.0/16" # available ip range
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    "Name" = "custom_vpc"
  }
}



