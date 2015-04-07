require 'rails_helper'

RSpec.describe "temporadas/show", :type => :view do
  before(:each) do
    @temporada = assign(:temporada, Temporada.create!(
      :title => "Title",
      :year => "Year"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Year/)
  end
end
