require 'rails_helper'

RSpec.describe "tsightings/show", :type => :view do
  before(:each) do
    @tsighting = assign(:tsighting, Tsighting.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/X Coord/)
    expect(rendered).to match(/Y Coord/)
    expect(rendered).to match(/Date/)
    expect(rendered).to match(/Your Name/)
    expect(rendered).to match(/Contact Info/)
    expect(rendered).to match(/Catchment/)
    expect(rendered).to match(/River/)
    expect(rendered).to match(/No Of Minks/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Comments/)
  end
end
