library(workflowr)
?workflowr

getwd()

setwd("C:/Egnyte/Private/dkillian/AMELA/BPPS/workflowr")

wflow_git_config(user.name = "dkillian", user.email = "dkillian@gmail.com")

wflow_start("USAID Baseline Public Perception Survey")

?wflow_build
wflow_build()

wflow_view()

wflow_status()

wflow_publish(c("analysis/index.Rmd", "analysis/about.Rmd", "analysis/explore.Rmd", "analysis/license.Rmd"),
              "Publish the initial files for myproject", republish=T)

wflow_publish(republish=T)

wflow_use_github("dkillian")

wflow_git_push()

wflow_open("analysis/survey-management.Rmd")

wflow_open("analysis/demographics.Rmd")

wflow_open("analysis/module-B.Rmd")

wflow_open("analysis/module-C.Rmd")

wflow_open("analysis/frequencies.Rmd")

wflow_publish(c("analysis/index.Rmd", "analysis/survey-management.Rmd", "analysis/demographics.Rmd", "analysis/module-B.Rmd", "analysis/frequencies.Rmd"),
              "Publish the initial analytical files for myproject")

wflow_publish("analysis/index.Rmd", "update frequencies")

wflow_publish("analysis/_site.yml", "Add headers", republish=T)

wflow_open("analysis/descriptives.Rmd")
wflow_open("analysis/methods.Rmd")
wflow_open("analysis/explore.Rmd")

wflow_publish("analysis/methods.Rmd")
wflow_publish("analysis/descriptives.Rmd")
wflow_publish("analysis/explore.Rmd")
wflow_publish("analysis/frequencies.Rmd")

wflow_publish("analysis/module-C.Rmd")

wflow_publish()
wflow_view()

wflow_build("analysis/demogaphics")
wflow_build("analysis/univariate frequencies.Rmd")
wflow_build("analysis/freq-check.Rmd")
wflow_build("analysis/frequencies.Rmd")


#

wflow_use_gitlab(username = "dkillian", repository = "bpps")

wflow_status()

wflow_git_commit()

wflow_git_push()


wflow_build("analysis/index.Rmd")
