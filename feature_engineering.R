#' @param t A cleaned dataframe of user data.
#' @return a user dataframe with additional feature engineered columns.
feature_engineer <- function(t){
  library(dplyr)
  t <- t %>% mutate(user_age = as.integer(Last_Seen - First_Seen))

}
#possible features: ############
#Add average time spent on app : total_sessions / usage_time
#Add user age 
#has collected daily artwork boolean
#tag users with their quintile of spending, engagement, user age, project_count 
#Add user engagement - total_events / total_sessions 

