#!/bin/bash
RESOURCE_GROUP_NAME=rg-terraform
STORAGE_ACCOUNT_NAME=devopsprojectisaac
CONTAINER_NAME=tfstate
SUBCRIPTION_ID=8c0e6db4-4c40-41df-8c25-44f856ed6301

# # Create resource group
# az group create --name $RESOURCE_GROUP_NAME --location eastus

# # Create storage account
# az storage account create --resource-group $RESOURCE_GROUP_NAME --name $STORAGE_ACCOUNT_NAME --sku Standard_LRS --encryption-services blob

# # Get storage key
# ACCOUNT_KEY=$(az storage account keys list --resource-group $RESOURCE_GROUP_NAME --account-name $STORAGE_ACCOUNT_NAME --query '[0].value' -o tsv)

# # Create blob storage container
# az storage container create --name tfstate --account-name $STORAGE_ACCOUNT_NAME --account-key $ACCOUNT_KEY

# Create service principal
az ad sp create-for-rbac -n "SP Contributor Global" --role Contributor --scopes /subscriptions/$SUBCRIPTION_ID --sdk-auth