require 'rails_helper'

RSpec.describe "raft_checks/show", :type => :view do
  before(:each) do
    @raft_check = assign(:raft_check, RaftCheck.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Contact Code/)
    expect(rendered).to match(/Raft Code/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/10/)
    expect(rendered).to match(/11/)
    expect(rendered).to match(/12/)
    expect(rendered).to match(/13/)
    expect(rendered).to match(/14/)
    expect(rendered).to match(/MyText/)
  end
end
