require 'rails_helper'

RSpec.describe "test_sightings/index", :type => :view do
  before(:each) do
    assign(:test_sightings, [
      TestSighting.create!(
        :x_coord => "X Coord",
        :y_coord => "Y Coord",
        :date => "Date",
        :your_name => "Your Name",
        :contact_info => "Contact Info",
        :catchment => "Catchment",
        :river => "River",
        :no_of_minks => "No Of Minks",
        :status => "Status",
        :comments => "Comments"
      ),
      TestSighting.create!(
        :x_coord => "X Coord",
        :y_coord => "Y Coord",
        :date => "Date",
        :your_name => "Your Name",
        :contact_info => "Contact Info",
        :catchment => "Catchment",
        :river => "River",
        :no_of_minks => "No Of Minks",
        :status => "Status",
        :comments => "Comments"
      )
    ])
  end

  it "renders a list of test_sightings" do
    render
    assert_select "tr>td", :text => "X Coord".to_s, :count => 2
    assert_select "tr>td", :text => "Y Coord".to_s, :count => 2
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => "Your Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Info".to_s, :count => 2
    assert_select "tr>td", :text => "Catchment".to_s, :count => 2
    assert_select "tr>td", :text => "River".to_s, :count => 2
    assert_select "tr>td", :text => "No Of Minks".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Comments".to_s, :count => 2
  end
end
