require 'rails_helper'

RSpec.describe "temporadas/edit", :type => :view do
  before(:each) do
    @temporada = assign(:temporada, Temporada.create!(
      :title => "MyString",
      :year => "MyString"
    ))
  end

  it "renders the edit temporada form" do
    render

    assert_select "form[action=?][method=?]", temporada_path(@temporada), "post" do

      assert_select "input#temporada_title[name=?]", "temporada[title]"

      assert_select "input#temporada_year[name=?]", "temporada[year]"
    end
  end
end
