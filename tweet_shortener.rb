# Write your code here.
require 'pry'
# "Hey guys, can anyone teach me how to be cool?
# I really want to be the best at everything,
# you know what I mean? Tweeting is super fun you guys!!!!"

# "OMG you guys, you won't believe how sweet my kitten is.
# My kitten is like super cuddly and too cute to be believed right?"

# "I'm running out of example tweets for you guys,
# which is weird, because I'm a writer and this is
# just writing and I tweet all day. For real, you guys. For real."

# "GUISEEEEE this is so fun! I'm tweeting for you guys and
# this tweet is SOOOO long it's gonna be way more than you
# would think twitter can handle, so shorten it up you
# know what I mean? I just can never tell how long to keep typing!"

# "New game. Middle aged tweet followed by #youngPeopleHashTag
# Example: Gotta get my colonoscopy and mammogram soon. Prevention is key! #swag"
def dictionary
  dictionary = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "For" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&",
  }
end

def word_substituter(tweets)
  array = tweets.split
  dictionary.each do |key, value|
    array.each do |word|
      if key == word
        word.replace(value)
      end
      end
    end
    #binding.pry
    tweets = array.join(' ')
    return tweets
  end


def bulk_tweet_shortener(tweets)
  edited = []
  tweets.map do |tweet|
    test = tweet.to_s
    array = test.split(" ")
      dictionary.each do |key, value|
          array.each do |word|
            if key == word
                word.replace(value)
              end
            end
          end
          each_tweet = array.join(' ')
          edited << each_tweet
      end
     #binding.pry
    puts edited[0]
    puts edited[1]
    puts edited[2]
    puts edited[3]
    puts edited[4]
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
  shortened = String.new
  if tweet.length > 140
    shortened << word_substituter(tweet)
    puts shortened[0..136] + "..."
    return shortened[0..136] + "..."
  end
  puts tweet
  return tweet
end
