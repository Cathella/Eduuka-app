require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      name: "MyString",
      retail_price: 1,
      quantity: 1,
      wholesale_price: 1
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input[name=?]", "item[name]"

      assert_select "input[name=?]", "item[retail_price]"

      assert_select "input[name=?]", "item[quantity]"

      assert_select "input[name=?]", "item[wholesale_price]"
    end
  end
end
