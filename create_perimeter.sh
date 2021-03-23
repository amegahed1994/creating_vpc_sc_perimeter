# Lists organization (that you have access to) and their IDs
gcloud organizations list

# Returns the POLICY_NAME for amega.info == 212996153568
gcloud access-context-manager policies list \
    --organization 422800608572

# Creating a perimeter with ingress policies
gcloud beta access-context-manager perimeters create my_access_level \
  --title="testing ingress policies" \
  --resources=projects/812330920236 \
  --restricted-services=bigquery.googleapis.com \
  --policy=212996153568 \
  --ingress-policies=ingress_policies.yaml

# Creating a perimeter with egress policies
gcloud beta access-context-manager perimeters create my_access_level \
  --title="testing ingress policies" \
  --resources=projects/812330920236 \
  --restricted-services=bigquery.googleapis.com \
  --policy=212996153568 \
  --ingress-policies=egress_policies.yaml
