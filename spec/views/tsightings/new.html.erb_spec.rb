require 'rails_helper'

RSpec.describe "tsightings/new", :type => :view do
  before(:each) do
    assign(:tsighting, Tsighting.new(
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

  it "renders new tsighting form" do
    render

    assert_select "form[action=?][method=?]", tsightings_path, "post" do

      assert_select "input#tsighting_x_coord[name=?]", "tsighting[x_coord]"

      assert_select "input#tsighting_y_coord[name=?]", "tsighting[y_coord]"

      assert_select "input#tsighting_date[name=?]", "tsighting[date]"

      assert_select "input#tsighting_your_name[name=?]", "tsighting[your_name]"

      assert_select "input#tsighting_contact_info[name=?]", "tsighting[contact_info]"

      assert_select "input#tsighting_catchment[name=?]", "tsighting[catchment]"

      assert_select "input#tsighting_river[name=?]", "tsighting[river]"

      assert_select "input#tsighting_no_of_minks[name=?]", "tsighting[no_of_minks]"

      assert_select "input#tsighting_status[name=?]", "tsighting[status]"

      assert_select "input#tsighting_comments[name=?]", "tsighting[comments]"
    end
  end
end
