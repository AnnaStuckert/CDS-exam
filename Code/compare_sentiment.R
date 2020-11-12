comparing_sentiments <- function(df1, df2, hashtag1 = "df1", hashtag2 = "df2") {
  
  sentiment_score1 <- df1 %>%
    group_by(sentiment) %>%  # we group by sentiment
    summarise(proportion = n() / nrow(df1), #calculating as proportion of total tweets
              group = hashtag1) #we add a column with hashtag1
  
  sentiment_score2 <-df2 %>% #we repeat the procedure for our second df 
    group_by(sentiment) %>% 
    summarise(proportion = n() / nrow(df2),
              group = hashtag2)
  
  #we combine the two data frames
  plot_df <- rbind(sentiment_score2, sentiment_score1)
  
  #lastly we make a plot
  plot_df %>%  
    ggplot(aes(sentiment, proportion, fill = group)) +
    geom_col() +
    facet_grid(.~group)
  
}
