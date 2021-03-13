require 'rails_helper'

RSpec.describe "items/new", type: :view do
  before(:each) do
    assign(:item, Item.new(
      name: "MyString",
      retail-price: 1,
      quantity: 1,
      wholesale-price: 1
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input[name=?]", "item[name]"

      assert_select "input[name=?]", "item[retail-price]"

      assert_select "input[name=?]", "item[quantity]"

      assert_select "input[name=?]", "item[wholesale-price]"
    end
  end
end
