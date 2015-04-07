require 'rails_helper'

RSpec.describe "episodios/index", :type => :view do
  before(:each) do
    assign(:episodios, [
      Episodio.create!(
        :title => "Title"
      ),
      Episodio.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of episodios" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
