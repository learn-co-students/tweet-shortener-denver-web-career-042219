

# tweet = "Hey guys, can anyone teach me how to be cool?"

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  tweet_string = String.new
  mod_tweet_array = Array.new

  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
      }

    tweet_array.each do |word|
      if dictionary.keys.include?(word.downcase)
        mod_tweet_array << dictionary[word.downcase]
      else
        mod_tweet_array << word
      end
    end
  return mod_tweet_array.join(" ")
end



def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end



def selective_tweet_shortener(tweet)
  if tweet.length > 140
   puts word_substituter(tweet)
   return word_substituter(tweet)
  end
  puts tweet
  return tweet
end


def shortened_tweet_truncator(tweet)

no_mas = String.new
  if tweet.length > 140
    no_mas << word_substituter(tweet)
    puts no_mas[0..136] + "..."
    return no_mas[0..136] + "..."
  end
  puts tweet
  return tweet
end

# I guess its either 1 - 140 or 0 - 139 




# long_tweet = "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"
