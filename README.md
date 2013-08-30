# PreciseDistanceOfTimeInWords

This gem offers a more precise "distance_of_time_in_words"


## Installation

Add this line to your application's Gemfile:

``` ruby
gem 'precise_distance_of_time_in_words'
```

And then execute:

``` shell
$ bundle
```

Or install it standalone:

``` shell
$ gem install precise_distance_of_time_in_words
```


## Usage

This gem offers you the ```precise_distance_of_time_in_words(from, to)"``` method, that you can 
use anywhere (views, helpers, controllers, models, console). For exemple:

``` ruby
precise_distance_of_time_in_words(0, 1) # return '1 second'
precise_distance_of_time_in_words(Time.now, Time.now + 1.hour + 1.minute) # return '1 hour and 1 minute'
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
