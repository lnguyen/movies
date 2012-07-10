require 'spec_helper'

describe "movies/new" do
  before(:each) do
    assign(:movie, stub_model(Movie,
      :title => "MyString",
      :production_company => "MyString",
      :image => "MyString"
    ).as_new_record)
  end

  it "renders new movie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => movies_path, :method => "post" do
      assert_select "input#movie_title", :name => "movie[title]"
      assert_select "input#movie_production_company", :name => "movie[production_company]"
      assert_select "input#movie_image", :name => "movie[image]"
    end
  end
end
