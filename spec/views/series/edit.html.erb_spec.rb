require 'rails_helper'

RSpec.describe "series/edit", :type => :view do
  before(:each) do
    @series = assign(:series, Series.create!(
      :title => "MyString",
      :season => "MyString",
      :episodes => "MyString",
      :status => false,
      :description => "MyText"
    ))
  end

  it "renders the edit series form" do
    render

    assert_select "form[action=?][method=?]", series_path(@series), "post" do

      assert_select "input#series_title[name=?]", "series[title]"

      assert_select "input#series_season[name=?]", "series[season]"

      assert_select "input#series_episodes[name=?]", "series[episodes]"

      assert_select "input#series_status[name=?]", "series[status]"

      assert_select "textarea#series_description[name=?]", "series[description]"
    end
  end
end
