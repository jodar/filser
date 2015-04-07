require 'rails_helper'

RSpec.describe "temporadas/index", :type => :view do
  before(:each) do
    assign(:temporadas, [
      Temporada.create!(
        :title => "Title",
        :year => "Year"
      ),
      Temporada.create!(
        :title => "Title",
        :year => "Year"
      )
    ])
  end

  it "renders a list of temporadas" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
  end
end
