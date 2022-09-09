#!/bin/sh 
 
# Delete a bunch of GitHub repos 
nukem="test1 test2 test3" 
user="${{ USER }}" 
password_or_oauth_token="${{ TOKEN }}" 
 
for repo in $nukem do 
    echo "Ixnay on the eporay! https://github.com/$user/$repo" 
    curl -v -u "$user:$password_or_oauth_token" -X DELETE \ 
       "https://api.github.com/$user/$repo" 
done 
