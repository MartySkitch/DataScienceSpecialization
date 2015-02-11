## Question 1
## Set the directory
setwd("D:/Skitch/Code/R/DataScienceSpecialization/DataScienceSpecialization/GettingCleaningData/Quiz 2")


library(httr)
library(httpuv)
# 0. Set source directory
setwd("D:/Skitch/Code/R/DataScienceSpecialization/DataScienceSpecialization/GettingCleaningData/Quiz 2")


# 1. Find OAuth settings for github:
#    http://developer.github.com/v3/oauth/
oauth_endpoints("github")

# 2. Register an application at https://github.com/settings/applications;
#    Use any URL you would like for the homepage URL (http://github.com is fine)
#    and http://localhost:1410 as the callback url
#
#    Insert your client ID and secret below - if secret is omitted, it will
#    look it up in the GITHUB_CONSUMER_SECRET environmental variable.
myapp <- oauth_app("github", "8bdaf45c395e9b1d9a4b", "6e0e8763ee2bec1614ffc550100eec10a2651281")

# 3. Get OAuth credentials
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp, cache = FALSE)

# 4. Use API
gtoken <- config(token = github_token)
req <- GET("https://api.github.com/users/jtleek/repos", gtoken)
stop_for_status(req)
content(req)
library(jsonlite)
json1 = content(req)
json2 = jsonlite::fromJSON(toJSON(json1))
json2[5,]

## Use the name command to get the column names
names(json2)
##load dplyr to use the select command
library(dplyr)
## Now select all the git_url and created
select(json2, git_url, created_at)
## results
##                                               git_url           created_at
##   5              git://github.com/jtleek/datasharing.git 2013-11-07T13:25:07Z
