require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      name: "MyString",
      current_price: 1,
      description: "MyString",
      images: "MyString"
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "input[name=?]", "product[current_price]"

      assert_select "input[name=?]", "product[description]"

      assert_select "input[name=?]", "product[images]"
    end
  end
end