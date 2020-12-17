unifreq <- function(item, lab, x, y, Response, header) {
  ...
  }

e2a <- svyrdat %>%
  group_by(E2a) %>%
  summarise(proportion = survey_mean(),
            total = survey_total()) %>%
  as.data.frame() %>%
  left_join(direction,
            by=c("E2a" = "job")) %>%
  mutate(Percent=proportion,
         `Margin of error` = 1.96*proportion_se,
         Sample=round(total,0)) %>%
  select(Response=job_lab,
         Percent,
         `Margin of error`,
         Sample) %>%
  gt() %>%
  fmt_percent(vars(Percent, `Margin of error`),
              decimals=1) %>%
  fmt_number(vars(Sample),
             decimals=0) %>%
  tab_header("E2a National government")

