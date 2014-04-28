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

## I18n

The default labels for 'hours', 'minutes', 'seconds' and 'and' are stored in the
I18n yaml inside the gem. You can switch the value per I18n.locale for your
internationalized application. Keys and the default values are the following.
You can override them by adding to a YAML file in your <tt>Rails.root/config/locales</tt>
directory.

  en:
    datetime:
      precise_distance_in_words:
        x_minutes:
          one: '%{count} minute'
          other: '%{count} minutes'
        x_seconds:
          one: '%{count} second'
          other: '%{count} seconds'
        x_hours:
          one: '%{count} hour'
          other: '%{count} hours'
        and: and


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
