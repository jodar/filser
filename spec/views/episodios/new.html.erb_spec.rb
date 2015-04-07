require 'rails_helper'

RSpec.describe "episodios/new", :type => :view do
  before(:each) do
    assign(:episodio, Episodio.new(
      :title => "MyString"
    ))
  end

  it "renders new episodio form" do
    render

    assert_select "form[action=?][method=?]", episodios_path, "post" do

      assert_select "input#episodio_title[name=?]", "episodio[title]"
    end
  end
end
