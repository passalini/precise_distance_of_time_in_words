require "precise_distance_of_time_in_words/version"

module PreciseDistanceOfTimeInWords
  def precise_distance_of_time_in_words(from_time, to_time)
    dist = (to_time - from_time).round

    hours = dist / 3600
    minutes = (dist - hours*60*60) / 60
    seconds = (dist - hours*60*60 - minutes*60)

    words = ''

    words << "#{hours} #{hours > 1 ? 'hours' : 'hour' }" if hours > 0
    add_and_between?(words, hours, minutes)
    words << "#{minutes} #{minutes > 1 ? 'minutes' : 'minute' }" if minutes > 0

    if seconds > 0 && (minutes <= 0 && hours <= 0)
      words << "#{seconds} #{seconds > 1 ? 'seconds' : 'second' }"
    end

    return words
  end

  private

  def add_and_between?(words, time_1, time_2)
    words << ' and ' if (time_1 > 0 && time_2 > 0)
  end
end

include PreciseDistanceOfTimeInWords