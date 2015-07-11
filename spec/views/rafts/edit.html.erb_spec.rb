require 'rails_helper'

RSpec.describe "rafts/edit", :type => :view do
  before(:each) do
    @raft = assign(:raft, Raft.create!(
      :x_cord => "MyString",
      :y_cord => "MyString",
      :river => "MyString",
      :catchment => "MyString",
      :raft_code => "MyString",
      :raft_or_tunnel => "MyString",
      :raft_status => "MyString",
      :contact_code => "MyString",
      :organisation => "MyString",
      :landowner_contact_code => "MyString",
      :dispatcher_contact_code => "MyString",
      :access_notes => "MyText",
      :comments => "MyText",
      :created_by => "MyString"
    ))
  end

  it "renders the edit raft form" do
    render

    assert_select "form[action=?][method=?]", raft_path(@raft), "post" do

      assert_select "input#raft_x_cord[name=?]", "raft[x_cord]"

      assert_select "input#raft_y_cord[name=?]", "raft[y_cord]"

      assert_select "input#raft_river[name=?]", "raft[river]"

      assert_select "input#raft_catchment[name=?]", "raft[catchment]"

      assert_select "input#raft_raft_code[name=?]", "raft[raft_code]"

      assert_select "input#raft_raft_or_tunnel[name=?]", "raft[raft_or_tunnel]"

      assert_select "input#raft_raft_status[name=?]", "raft[raft_status]"

      assert_select "input#raft_contact_code[name=?]", "raft[contact_code]"

      assert_select "input#raft_organisation[name=?]", "raft[organisation]"

      assert_select "input#raft_landowner_contact_code[name=?]", "raft[landowner_contact_code]"

      assert_select "input#raft_dispatcher_contact_code[name=?]", "raft[dispatcher_contact_code]"

      assert_select "textarea#raft_access_notes[name=?]", "raft[access_notes]"

      assert_select "textarea#raft_comments[name=?]", "raft[comments]"

      assert_select "input#raft_created_by[name=?]", "raft[created_by]"
    end
  end
end
