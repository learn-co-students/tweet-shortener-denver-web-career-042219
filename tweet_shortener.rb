def dictionary 
  dictionary = {"hello" =>"hi", "to"=>"2", "two"=>"2", "too" =>"2", "for" => "4", "four" =>"4", "be" => "b", "you" =>"u", 
  "at" =>"@", "and" => "&"}
  
end


def word_substituter(tweet)
  new_tweet = tweet.split
  dict = dictionary
  dict_keys = dict.keys
 new_array= new_tweet.map { |word|
   if dict_keys.include?word.downcase
    dict[word.downcase]
  else word
  end
  }
return new_array.join(" ")
  
end


def bulk_tweet_shortener(tweet_array)
 tweet_array.each do |tweet|
   puts word_substituter(tweet)
  
end
end 


def selective_tweet_shortener(tweet)
  if tweet.length>140
    return word_substituter(tweet)
  else return tweet
end
end

def shortened_tweet_truncator(tweet)
  final_tweet= word_substituter(tweet)

if final_tweet.length > 140
  final_tweet=final_tweet[0..136]+"..."
end
return final_tweet

end
