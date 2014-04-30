

xxx='_:AdminOrg/@id'
echo ${xxx//@/}

xxx='/_:AdminOrg/_:Settings/_:VAppTemplateLeaseSettings'
echo ${xxx//_:/}


xxx='_:AdminOrg'
echo ${xxx//_:/}

xxx='_:AdminOrg/_:Settings'
echo ${xxx//_:/}

xxx=${xxx//_:/}
z=/
echo ${xxx//${z}/}