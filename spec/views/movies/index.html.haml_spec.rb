require 'spec_helper'

describe "movies/index" do
  before(:each) do
    assign(:movies, [
      stub_model(Movie,
        :title => "Title",
        :production_company => "Production Company",
        :image => "Image"
      ),
      stub_model(Movie,
        :title => "Title",
        :production_company => "Production Company",
        :image => "Image"
      )
    ])
  end

  it "renders a list of movies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Production Company".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
