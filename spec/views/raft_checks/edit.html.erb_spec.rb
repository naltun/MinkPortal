require 'rails_helper'

RSpec.describe "raft_checks/edit", :type => :view do
  before(:each) do
    @raft_check = assign(:raft_check, RaftCheck.create!(
      :contact_code => "MyString",
      :raft_code => "MyString",
      :any_species => false,
      :mink => 1,
      :mink_scat => 1,
      :bird => 1,
      :cat => 1,
      :hedgehog => 1,
      :mouse => 1,
      :otter => 1,
      :pine_marten => 1,
      :rat => 1,
      :squirrel => 1,
      :stoat => 1,
      :water_vole => 1,
      :weasel => 1,
      :unidentif => 1,
      :comments => "MyText"
    ))
  end

  it "renders the edit raft_check form" do
    render

    assert_select "form[action=?][method=?]", raft_check_path(@raft_check), "post" do

      assert_select "input#raft_check_contact_code[name=?]", "raft_check[contact_code]"

      assert_select "input#raft_check_raft_code[name=?]", "raft_check[raft_code]"

      assert_select "input#raft_check_any_species[name=?]", "raft_check[any_species]"

      assert_select "input#raft_check_mink[name=?]", "raft_check[mink]"

      assert_select "input#raft_check_mink_scat[name=?]", "raft_check[mink_scat]"

      assert_select "input#raft_check_bird[name=?]", "raft_check[bird]"

      assert_select "input#raft_check_cat[name=?]", "raft_check[cat]"

      assert_select "input#raft_check_hedgehog[name=?]", "raft_check[hedgehog]"

      assert_select "input#raft_check_mouse[name=?]", "raft_check[mouse]"

      assert_select "input#raft_check_otter[name=?]", "raft_check[otter]"

      assert_select "input#raft_check_pine_marten[name=?]", "raft_check[pine_marten]"

      assert_select "input#raft_check_rat[name=?]", "raft_check[rat]"

      assert_select "input#raft_check_squirrel[name=?]", "raft_check[squirrel]"

      assert_select "input#raft_check_stoat[name=?]", "raft_check[stoat]"

      assert_select "input#raft_check_water_vole[name=?]", "raft_check[water_vole]"

      assert_select "input#raft_check_weasel[name=?]", "raft_check[weasel]"

      assert_select "input#raft_check_unidentif[name=?]", "raft_check[unidentif]"

      assert_select "textarea#raft_check_comments[name=?]", "raft_check[comments]"
    end
  end
end
