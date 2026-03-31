#setup on environments
#Portability

# already installed
# install.packages("renv")

renv::init()
# welcoome message
# "Welcome to renv! It looks like this is your first time using renv.
# This is a one-time message, briefly describing some of renv's functionality."

#important output
# - Lockfile written to "~/Documents/AneLab/BetterRsoftware_workshop/spacewalks/renv.lock".

#Check installation status
renv::status()

#install packages withing renv
renv::install()
#If you already library the renv package (library(renv)), you don't need to use the renv:: option. 

#Install packages
#It does install the latest versions.
renv::install("jsonlite", "lubridate", "ggplot2")


#Check installation status
renv::status()
#Sometimes you get incompatibility between packages

renv::snapshot()
#Will update all packages in the lock file. 

#practice uninstall
remove.packages(c("jsonlite", "lubridate", "ggplot2"))

library("jsonlite")
# Error in library("jsonlite") : there is no package called ‘jsonlite’

renv::restore()
# The following package(s) will be updated:
#   
#   # CRAN -----------------------------------------------------------------------
# - jsonlite    [* -> 2.0.0]
# - lubridate   [* -> 1.9.5]

#On the console
# echo "renv/" >> .gitignore to add folder with dependencies to gitignore
# just want the lock file, not the rest. 
