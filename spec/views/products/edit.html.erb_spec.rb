require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      name: "MyString",
      current_price: 1,
      description: "MyString",
      images: "MyString"
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "input[name=?]", "product[current_price]"

      assert_select "input[name=?]", "product[description]"

      assert_select "input[name=?]", "product[images]"
    end
  end
end
