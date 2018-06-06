require 'rails_helper'

RSpec.describe "missions/edit", type: :view do
  before(:each) do
    @mission = assign(:mission, Mission.create!(
      :nom => "MyString",
      :date_debut => "",
      :date_fin => "",
      :lieu => "MyString",
      :descriptif => "MyString",
      :objectifs => "MyString",
      :competences => "MyString"
    ))
  end

  it "renders the edit mission form" do
    render

    assert_select "form[action=?][method=?]", mission_path(@mission), "post" do

      assert_select "input[name=?]", "mission[nom]"

      assert_select "input[name=?]", "mission[date_debut]"

      assert_select "input[name=?]", "mission[date_fin]"

      assert_select "input[name=?]", "mission[lieu]"

      assert_select "input[name=?]", "mission[descriptif]"

      assert_select "input[name=?]", "mission[objectifs]"

      assert_select "input[name=?]", "mission[competences]"
    end
  end
end
