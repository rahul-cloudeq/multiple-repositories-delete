#!/bin/sh  
delete="test1 test2 test3" 
user="rahul-cloudeq" 
password_or_oauth_token="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" 
 
for repo in $delete 
do 
    echo "Ixnay on the eporay! https://github.com/$user/$repo" 
    curl -v -u "$user:$password_or_oauth_token" -X DELETE \ 
       "https://api.github.com/$user/$repo" 
done 
