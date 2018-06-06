require 'rails_helper'

RSpec.describe "missions/new", type: :view do
  before(:each) do
    assign(:mission, Mission.new(
      :nom => "MyString",
      :date_debut => "",
      :date_fin => "",
      :lieu => "MyString",
      :descriptif => "MyString",
      :objectifs => "MyString",
      :competences => "MyString"
    ))
  end

  it "renders new mission form" do
    render

    assert_select "form[action=?][method=?]", missions_path, "post" do

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
