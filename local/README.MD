1. create a new IAM Policy (name:eni) using the file eni-policy 
2. attach that policy to the new role (name: mlogic)
3. create a S3 bucket and direcotry in that, keep note on those S3 bucket and directory details.
4. Change the trustreliationship with the file trustrelationship for the role mlogic
5. get the role arn
6. Upload files to S3 bucket files list: m1-managedeni.template, m1-nodemanager.template,managed_eni.zip,node_manager.zip files
7. From the file ml-managedeni.tempalte, Check line no 74 for role and provide your role arn
8. From the file ml-nodemanager.tempalte, Check line no 32 for role and provide your role arn
9. on main template ml-security3.template, line no 348,349,368 & 369 change the bucket names and diretory 
10. on main template, 356 line provide S3 url for ml-managedeni.tempalte and  370 provide S3 url for ml-nodemanager.tempalte
11. on main template, 469, 512,555 provide the role arn 

