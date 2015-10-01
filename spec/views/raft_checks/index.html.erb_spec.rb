require 'rails_helper'

RSpec.describe "raft_checks/index", :type => :view do
  before(:each) do
    assign(:raft_checks, [
      RaftCheck.create!(
        :contact_code => "Contact Code",
        :raft_code => "Raft Code",
        :any_species => false,
        :mink => 1,
        :mink_scat => 2,
        :bird => 3,
        :cat => 4,
        :hedgehog => 5,
        :mouse => 6,
        :otter => 7,
        :pine_marten => 8,
        :rat => 9,
        :squirrel => 10,
        :stoat => 11,
        :water_vole => 12,
        :weasel => 13,
        :unidentif => 14,
        :comments => "MyText"
      ),
      RaftCheck.create!(
        :contact_code => "Contact Code",
        :raft_code => "Raft Code",
        :any_species => false,
        :mink => 1,
        :mink_scat => 2,
        :bird => 3,
        :cat => 4,
        :hedgehog => 5,
        :mouse => 6,
        :otter => 7,
        :pine_marten => 8,
        :rat => 9,
        :squirrel => 10,
        :stoat => 11,
        :water_vole => 12,
        :weasel => 13,
        :unidentif => 14,
        :comments => "MyText"
      )
    ])
  end

  it "renders a list of raft_checks" do
    render
    assert_select "tr>td", :text => "Contact Code".to_s, :count => 2
    assert_select "tr>td", :text => "Raft Code".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
    assert_select "tr>td", :text => 11.to_s, :count => 2
    assert_select "tr>td", :text => 12.to_s, :count => 2
    assert_select "tr>td", :text => 13.to_s, :count => 2
    assert_select "tr>td", :text => 14.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
