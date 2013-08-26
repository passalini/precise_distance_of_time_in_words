require 'spec_helper'
include PreciseDistanceOfTimeInWords

describe PreciseDistanceOfTimeInWords do
  context 'Distance of Time in Hours and Minutes' do
    before do
      @time1 = Time.utc(2013,10,10,10,0,0)
      @time2 = @time1 + 1.second
      @time3 = @time1 + 1.minute
      @time4 = @time1 + 1.hour
      @time5 = @time1 + 1.hours + 5.minutes
      @time6 = @time1 + 1.hours + 5.minutes + 3.seconds
    end

    it 'calculates time differences properly' do
      precise_distance_of_time_in_words(@time1, @time1).should == ''
      precise_distance_of_time_in_words(@time1, @time2).should == '1 second'
      precise_distance_of_time_in_words(@time1, @time3).should == '1 minute'
      precise_distance_of_time_in_words(@time1, @time4).should == '1 hour'
      precise_distance_of_time_in_words(@time1, @time5).should == '1 hour and 5 minutes'
      precise_distance_of_time_in_words(@time1, @time6).should == '1 hour and 5 minutes'
    end
  end
end