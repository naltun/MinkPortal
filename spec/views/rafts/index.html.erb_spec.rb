require 'rails_helper'

RSpec.describe "rafts/index", :type => :view do
  before(:each) do
    assign(:rafts, [
      Raft.create!(
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
      ),
      Raft.create!(
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
      )
    ])
  end

  it "renders a list of rafts" do
    render
    assert_select "tr>td", :text => "X Cord".to_s, :count => 2
    assert_select "tr>td", :text => "Y Cord".to_s, :count => 2
    assert_select "tr>td", :text => "River".to_s, :count => 2
    assert_select "tr>td", :text => "Catchment".to_s, :count => 2
    assert_select "tr>td", :text => "Raft Code".to_s, :count => 2
    assert_select "tr>td", :text => "Raft Or Tunnel".to_s, :count => 2
    assert_select "tr>td", :text => "Raft Status".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Code".to_s, :count => 2
    assert_select "tr>td", :text => "Organisation".to_s, :count => 2
    assert_select "tr>td", :text => "Landowner Contact Code".to_s, :count => 2
    assert_select "tr>td", :text => "Dispatcher Contact Code".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Created By".to_s, :count => 2
  end
end
