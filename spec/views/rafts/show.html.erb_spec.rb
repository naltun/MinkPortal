require 'rails_helper'

RSpec.describe "rafts/show", :type => :view do
  before(:each) do
    @raft = assign(:raft, Raft.create!(
      :x_cord => "X Cord",
      :y_cord => "Y Cord",
      :river => "River",
      :catchment => "Catchment",
      :raft_code => "Raft Code",
      :raft_or_tunnel => "Raft Or Tunnel",
      :raft_status => "Raft Status",
      :contact_code => "Contact Code",
      :organisation => "Organisation",
      :landowner_contact_code => "Landowner Contact Code",
      :dispatcher_contact_code => "Dispatcher Contact Code",
      :access_notes => "MyText",
      :comments => "MyText",
      :created_by => "Created By"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/X Cord/)
    expect(rendered).to match(/Y Cord/)
    expect(rendered).to match(/River/)
    expect(rendered).to match(/Catchment/)
    expect(rendered).to match(/Raft Code/)
    expect(rendered).to match(/Raft Or Tunnel/)
    expect(rendered).to match(/Raft Status/)
    expect(rendered).to match(/Contact Code/)
    expect(rendered).to match(/Organisation/)
    expect(rendered).to match(/Landowner Contact Code/)
    expect(rendered).to match(/Dispatcher Contact Code/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Created By/)
  end
end
