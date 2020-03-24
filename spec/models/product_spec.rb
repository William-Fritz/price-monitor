require 'rails_helper'

RSpec.describe Product, type: :model do
  
  subject {
    described_class.new(
      name: "Test",
      current_price: 10000,
      url: "http://www.example.com/") 
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a current_price" do
    subject.current_price = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without an url" do
    subject.url = nil
    expect(subject).to_not be_valid
  end

  it "should validate uniqueness of name" do
    expect(subject).to validate_uniqueness_of(:name)
  end

  it "should validate uniqueness of url" do
    expect(subject).to validate_uniqueness_of(:url)
  end
end

