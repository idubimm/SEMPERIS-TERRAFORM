#!/bin/bash
get_load_balance_ip(){
    output=$(terraform output)
    lb_dns_name=$(echo "$output" | grep lb_dns_name | cut -d'=' -f2 | tr -d ' "')
    lb_ip_address=$(dig +short $lb_dns_name)
}