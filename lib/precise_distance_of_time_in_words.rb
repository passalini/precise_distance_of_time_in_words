require "precise_distance_of_time_in_words/version"

module PreciseDistanceOfTimeInWords
  def precise_distance_of_time_in_words(from_time, to_time=0, options = {})
    options = {
      scope: :'datetime.precise_distance_in_words'
    }.merge!(options)

    # using to_time casting method of objects when presented
    from_time = from_time.to_time if from_time.respond_to?(:to_time)
    to_time = to_time.to_time if to_time.respond_to?(:to_time)

    # make sure distance is positive
    from_time, to_time = to_time, from_time if from_time > to_time

    dist = (to_time - from_time).round

    hours = dist / 3600
    minutes = (dist - hours*60*60) / 60
    seconds = (dist - hours*60*60 - minutes*60)

    words = ''

    I18n.with_options( locale: options[:locale], scope: options[:scope] ) do |locale|
      words << locale.t(:x_hours, count: hours) if hours > 0
      words << " #{locale.t(:and)} " if (hours > 0 && minutes > 0) # add_and_between?
      words << locale.t(:x_minutes, count: minutes) if minutes > 0

      if seconds > 0 && (minutes <= 0 && hours <= 0)
        words << locale.t(:x_seconds, count: seconds)
      end
    end

    return words
  end
end

include PreciseDistanceOfTimeInWords

Dir["#{File.dirname(__FILE__)}/precise_distance_of_time_in_words/locales/*.yml"].each do |file|
  I18n.load_path << file
end