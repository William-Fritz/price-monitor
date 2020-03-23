require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        name: "Name",
        current_price: 2,
        description: "Description",
        images: "Images"
      ),
      Product.create!(
        name: "Name",
        current_price: 2,
        description: "Description",
        images: "Images"
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
    assert_select "tr>td", text: "Images".to_s, count: 2
  end
end
