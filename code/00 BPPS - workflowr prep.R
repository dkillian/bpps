# BPPS
# prep

packages <- c("arm", "BMA", "brms", "corrplot", "dummies","DescTools", "estimatr","extrafont", "extrafontdb", "janitor", "reshape2","tidyr","broom", "haven", "HH","Hmisc","lubridate","knitr", "margins", "magrittr", "plotrix", "scales","survey", "srvyr", "sysfonts", "foreign","car", "ICC", "PowerUpR", "openxlsx", "ggrepel", "readr", "readxl", "sjmisc", "sjPlot", "sjstats", "sjlabelled", "skimr","labelled", "texreg", "janitor","psych","dplyr", "tidyverse", "bbplot", "viridis", "here", "ggridges", "ggthemes", "DT", "jtools", "huxtable", "stringi", "gghighlight", "plm", "rethinking" , "brms", "rstan", "rstanarm","tidybayes","texreg","gt","gtsummary","huxtable","stargazer", "gsynth", "panelView", "assertr", "pointblank", "validate", "sandwich")

lapply(packages, library, character.only=T)

font_add_google("Source Sans Pro", "sans-serif")

options(digits=3, scipen=6)

# set default
theme_set(theme_bw() + theme(panel.grid.minor.x=element_blank(),
                             panel.grid.minor.y=element_blank(),
                             plot.title=element_text(face="bold",size=18, hjust=.5, family = "Source Sans Pro"),
                             plot.subtitle = element_text(size=16, family="Source Sans Pro"),
                             plot.caption=element_text(size=12, family="Source Sans Pro"),
                             axis.title=element_text(size=16, family="Source Sans Pro"),
                             axis.text=element_text(size=14, family="Source Sans Pro"),    
                             legend.text=element_text(size=14, family="Source Sans Pro"),
                             strip.text=element_text(size=14, family="Source Sans Pro"))) 


# without border
base_style <- function(){theme_bw() +
    theme(panel.grid.minor.x=element_blank(),
          panel.grid.minor.y=element_blank(),
          plot.title=element_text(face="bold",size=18, hjust=.5, family = "Source Sans Pro"),
          plot.subtitle = element_text(size=16, family="Source Sans Pro"),
          plot.caption=element_text(size=12, family="Source Sans Pro"),
          axis.title=element_text(size=16, family="Source Sans Pro"),
          axis.text=element_text(size=14, family="Source Sans Pro"),    
          legend.text=element_text(size=14, family="Source Sans Pro"),
          strip.text=element_text(size=14, family="Source Sans Pro"),
          panel.border=element_blank(),
          axis.ticks = element_blank()) 
}

# with default setting, this shouldn't be needed
# facet_style <- function(){theme_bw() +
#     theme(panel.grid.minor.x=element_blank(),
#           panel.grid.minor.y=element_blank(),
#           plot.title=element_text(face="bold",size=18, hjust=.5, family = "Source Sans Pro"),
#           plot.subtitle = element_text(size=16, family="Source Sans Pro"),
#           plot.caption=element_text(size=12, family="Source Sans Pro"),
#           axis.title=element_text(size=16, family="Source Sans Pro"),
#           axis.text=element_text(size=14, family="Source Sans Pro"),    
#           legend.text=element_text(size=14, family="Source Sans Pro"),
#           strip.text=element_text(size=14, family="Source Sans Pro"))
# }


path <- "../../BPPS analysis/data/BPPS hh instrument pre-codebook.xlsx"

labs <- path %>%
  excel_sheets() %>%
  set_names() %>%
  lapply(function(x) read_xlsx(x, path=path))

lablist <- names(labs) %>%
  as.data.frame()

# dat <- read_dta("data/raw/BPPS_Phase2_raw.dta") 
# 
# datNames <- names(dat) %>%
#   as.data.frame()
# 
# 
# 
# svydat <- svydesign(data = dat,
#                     ids= ~PSU + A9,
#                     strata = ~strata,
#                     weights = ~Wgt1)


