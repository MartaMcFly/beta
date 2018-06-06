require 'rails_helper'

RSpec.describe "missions/show", type: :view do
  before(:each) do
    @mission = assign(:mission, Mission.create!(
      :nom => "Nom",
      :date_debut => "",
      :date_fin => "",
      :lieu => "Lieu",
      :descriptif => "Descriptif",
      :objectifs => "Objectifs",
      :competences => "Competences"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nom/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Lieu/)
    expect(rendered).to match(/Descriptif/)
    expect(rendered).to match(/Objectifs/)
    expect(rendered).to match(/Competences/)
  end
end
