require 'rails_helper'

RSpec.describe "temporadas/new", :type => :view do
  before(:each) do
    assign(:temporada, Temporada.new(
      :title => "MyString",
      :year => "MyString"
    ))
  end

  it "renders new temporada form" do
    render

    assert_select "form[action=?][method=?]", temporadas_path, "post" do

      assert_select "input#temporada_title[name=?]", "temporada[title]"

      assert_select "input#temporada_year[name=?]", "temporada[year]"
    end
  end
end
