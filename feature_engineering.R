#' @param t A cleaned dataframe of user data. 
#' @return A user dataframe with additional feature engineered columns. 
feature_engineer <- function(t) {
  library(dplyr)
  t <- t %>% mutate(has_collected_artwork = gp.daily_artwork_count >0, avg.events_per_session = Total_Events/Total_Sessions, avg.min_on_app = Total_Sessions/ Usage_Min)
}
