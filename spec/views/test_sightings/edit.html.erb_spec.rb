require 'rails_helper'

RSpec.describe "test_sightings/edit", :type => :view do
  before(:each) do
    @test_sighting = assign(:test_sighting, TestSighting.create!(
      :x_coord => "MyString",
      :y_coord => "MyString",
      :date => "MyString",
      :your_name => "MyString",
      :contact_info => "MyString",
      :catchment => "MyString",
      :river => "MyString",
      :no_of_minks => "MyString",
      :status => "MyString",
      :comments => "MyString"
    ))
  end

  it "renders the edit test_sighting form" do
    render

    assert_select "form[action=?][method=?]", test_sighting_path(@test_sighting), "post" do

      assert_select "input#test_sighting_x_coord[name=?]", "test_sighting[x_coord]"

      assert_select "input#test_sighting_y_coord[name=?]", "test_sighting[y_coord]"

      assert_select "input#test_sighting_date[name=?]", "test_sighting[date]"

      assert_select "input#test_sighting_your_name[name=?]", "test_sighting[your_name]"

      assert_select "input#test_sighting_contact_info[name=?]", "test_sighting[contact_info]"

      assert_select "input#test_sighting_catchment[name=?]", "test_sighting[catchment]"

      assert_select "input#test_sighting_river[name=?]", "test_sighting[river]"

      assert_select "input#test_sighting_no_of_minks[name=?]", "test_sighting[no_of_minks]"

      assert_select "input#test_sighting_status[name=?]", "test_sighting[status]"

      assert_select "input#test_sighting_comments[name=?]", "test_sighting[comments]"
    end
  end
end
