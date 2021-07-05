def dictionary
    { "hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "Four" => "4", "For" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&" }
end

def word_substituter(str)
    arr = str.split(" ")
    arr.collect do | word | 
        dictionary.collect do | key, value |
            if word == key
            word.replace(value)
          end
       end
    end
  arr.join(" ")
end

def bulk_tweet_shortener(tweets)
    tweets.collect do | words |
        puts word_substituter(words) 
    end
end

def selective_tweet_shortener(tweets)
     tweets.length > 140 ? word_substituter(tweets) : tweets
end
        

def shortened_tweet_truncator(tweets)
    if tweets.length > 140
       return tweets[0..136] + "..."
    end 
 tweets        
end
 