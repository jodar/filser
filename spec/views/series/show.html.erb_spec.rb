require 'rails_helper'

RSpec.describe "series/show", :type => :view do
  before(:each) do
    @series = assign(:series, Series.create!(
      :title => "Title",
      :season => "Season",
      :episodes => "Episodes",
      :status => false,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Season/)
    expect(rendered).to match(/Episodes/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
  end
end
