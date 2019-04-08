require 'pry'

def dictionary
  replacement_words = {
      "hello" => "hi",
      "to" => "2",
      "two" => "2",
      "too" => "2",
      "for" => "4",
      "four" => "4",
      "be" => "b",
      "you" => "u",
      "at" => "@",
      "and" => "&"
  }
end

def word_substituter(tweet)
#binding.pry
  array = []
  main_key = dictionary.to_a
  main_values = dictionary.values
  tweet_array = tweet.split(" ")
  tweet_array.each do |word|
    main_key.each do |key|
#      binding.pry
      if word.downcase == key[0]
        word = key[1]
#        binding.pry
      end
    end
    array << word
  end
# binding.pry
  return array.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |array|
    puts word_substituter(array)
  end
end

def selective_tweet_shortener(tweets)
  if tweets.length > 140
    word_substituter(tweets)
  else
    tweets
  end
end

def shortened_tweet_truncator(tweet)
  tweet[0..139]
end
