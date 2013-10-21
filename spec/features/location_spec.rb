require 'spec_helper'

describe 'Location' do
  it 'index' do
    location = FactoryGirl.create(:location)
    visit locations_path
    page.should have_content(location.gps_latitude)
    page.should have_content(location.gps_longitude)
    page.should have_content(location.gps_speed)
    page.should have_content(location.gps_heading)
    #save_and_open_page
  end
end