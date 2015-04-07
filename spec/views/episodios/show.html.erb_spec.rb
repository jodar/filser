require 'rails_helper'

RSpec.describe "episodios/show", :type => :view do
  before(:each) do
    @episodio = assign(:episodio, Episodio.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
