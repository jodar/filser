require 'rails_helper'

RSpec.describe "series/index", :type => :view do
  before(:each) do
    assign(:series, [
      Series.create!(
        :title => "Title",
        :season => "Season",
        :episodes => "Episodes",
        :status => false,
        :description => "MyText"
      ),
      Series.create!(
        :title => "Title",
        :season => "Season",
        :episodes => "Episodes",
        :status => false,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of series" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Season".to_s, :count => 2
    assert_select "tr>td", :text => "Episodes".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
