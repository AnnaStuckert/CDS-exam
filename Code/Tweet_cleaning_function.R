library(tidyverse, pacman)
pacman::p_load("twitteR", "ROAuth", "instaR", "tidyverse", "tidytext", "stringr")

clean_tweets <- function(df, dictionary = "afinn"){
  
  reg_words <- "([^A-Za-z_\\d#@']|'(?![A-Za-z_\\d#@]))"
  
  tidy_df <-df %>%
    filter(!str_detect(tweet, "^RT")) %>% #filtering out tweets starting with RT: retweets
    mutate(text = str_replace_all(tweet, "https://t.co/[A-Za-z\\d]+|http://[A-Za-z\\d]+|&amp;|&lt;|&gt;|RT|https", "")) %>% #removes homepage adresses and unecessary stuff
    unnest_tokens(word, text, token = "regex", pattern = reg_words) %>% #removes unnests text document
    filter(!word %in% stop_words$word) #removes stop words
  
  
  
  sentiment_df <- tidy_df %>% 
    inner_join(get_sentiments(dictionary))
  
  return(sentiment_df)
}


