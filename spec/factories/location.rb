FactoryGirl.define do

  factory :location do
    device_id         1000
    gps_latitude      -37.92557
    gps_longitude     145.18125
    gps_speed         50.25
    gps_heading       45.78
    gps_timestamp     Time.now.to_i
  end

end