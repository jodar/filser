require 'rails_helper'

RSpec.describe "episodios/edit", :type => :view do
  before(:each) do
    @episodio = assign(:episodio, Episodio.create!(
      :title => "MyString"
    ))
  end

  it "renders the edit episodio form" do
    render

    assert_select "form[action=?][method=?]", episodio_path(@episodio), "post" do

      assert_select "input#episodio_title[name=?]", "episodio[title]"
    end
  end
end
