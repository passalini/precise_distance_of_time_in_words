# PreciseDistanceOfTimeInWords

This gem offers a more precise "distance_of_time_in_words"

## Installation

Add this line to your application's Gemfile:

    gem 'precise_distance_of_time_in_words'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install precise_distance_of_time_in_words

## Usage

    This gem offers to you a method called "precise_distance_of_time_in_words(from, to)"
    To you user it just puts that method in where you want (console, view, model) with the times.
    For exemple:
      precise_distance_of_time_in_words(0, 1) #return '1 second'
      precise_distance_of_time_in_words(Time.now, Time.now + 1.hour + 1.minute) #return '1 hour and 1 minute'

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
