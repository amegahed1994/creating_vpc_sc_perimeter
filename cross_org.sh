# Lists organization (that you have access to) and their IDs
gcloud organizations list

# Returns the POLICY_NAME for megahed.ca == 518900189187
gcloud access-context-manager policies list \
    --organization 518900189187
    
gcloud beta access-context-manager perimeters update perimeter \ 
    --policy=20639544693 --set-ingress-policies=myingress.yaml
