# CDS-exam
Exam project in Cultural Data Science

The project saught to mine Tweets from Joe Biden, Donald Trump, and their respective followers. this was done with python, mainly using the package tweepy. the script for mining and saving the tweet data can be found in the file named XXX.
Preprocessing, plotting and statistical analyses was conducted in R. The overall script for conducting preprocessing preprocessing, plotting and statistcial analyses can be found in the file called "Twitter scraping preprocessing.Rmd", which calls upon the function "Tweet_cleaning_function.R" for cleaning the tweets (for specifications, see report on the project).
The tweet datasets contain the following columns: 
- an unnamed column indicating the number of the tweet, running to the length of the dataset (i.e. the total number of tweets)
- tweet: this is the actual textual content of the mined tweet.
- date: the timestamp of when the tweet was posted to Twitter.
- id: an original id for each tweet 

Unique for presidential datasets
- handle (renamed to Candidate): The Twitter handle of the presidential candidate, which is during preprocessing renamed to match the surname of the candidate

Unique for follower datasets
- handle: The Twitter handle of each follower
- follwing: Which presidential candidate the user in question followers.
