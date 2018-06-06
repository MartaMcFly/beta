require 'rails_helper'

RSpec.describe "missions/index", type: :view do
  before(:each) do
    assign(:missions, [
      Mission.create!(
        :nom => "Nom",
        :date_debut => "",
        :date_fin => "",
        :lieu => "Lieu",
        :descriptif => "Descriptif",
        :objectifs => "Objectifs",
        :competences => "Competences"
      ),
      Mission.create!(
        :nom => "Nom",
        :date_debut => "",
        :date_fin => "",
        :lieu => "Lieu",
        :descriptif => "Descriptif",
        :objectifs => "Objectifs",
        :competences => "Competences"
      )
    ])
  end

  it "renders a list of missions" do
    render
    assert_select "tr>td", :text => "Nom".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Lieu".to_s, :count => 2
    assert_select "tr>td", :text => "Descriptif".to_s, :count => 2
    assert_select "tr>td", :text => "Objectifs".to_s, :count => 2
    assert_select "tr>td", :text => "Competences".to_s, :count => 2
  end
end
