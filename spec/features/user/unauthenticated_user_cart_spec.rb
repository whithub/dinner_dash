require 'rails_helper'

describe 'unauthenticated user', type: :feature do

  before(:each) do
    @item1 = Item.create(title: "Item #1", description: "food", price: 10)
    @item2 = Item.create(title: "Item #2", description: "wine", price: 12)
    @item3 = Item.create(title: "Item #3", description: "beer", price: 5)
    visit items_path
  end

  it 'can view, add, and remove items from cart' do
    first(:button, "Add to Cart").click
    first(:button, "Add to Cart").click
    first(:button, "Add to Cart").click
    expect(page).to have_content("You now have 3 Item #1s in your cart.")

    click_on("Toggle navigation")
    find('#cart').click
    expect(page).to have_content("Item #1")
    expect(page).to have_content(30)

    click_on "Remove"
    expect(page).to have_content("You have removed Item #1 from your cart.")
    expect(page).to_not have_content(30)
  end

  it 'can increase the quantity of a item in my cart' do
    first(:button, "Add to Cart").click
    expect(page).to have_content("You now have 1 Item #1 in your cart.")

    click_on("Toggle navigation")
    find('#cart').click

    expect(page).to have_content(10)

    click_button "+"
    click_button "+"

    expect(page).to have_content(30)
  end

  it 'log in and cart does not get cleared' do
    @user = User.create(full_name: "Tom Petty",
                        display_name: 'Tom',
                        email: "petty@gmail.com",
                        password: "freefallin")

    first(:button, "Add to Cart").click
    first(:button, "Add to Cart").click
    expect(page).to have_content("You now have 2 Item #1s in your cart.")



    click_on("Toggle navigation")
    find('.dropdown-menu').click

    fill_in "Email", with: @user.email
    fill_in "Password", with: "freefallin"
    click_button "Login"

    click_on("Toggle navigation")
    find('#cart').click

    expect(page).to have_content(20)
    expect(page).to have_content("Item #1")
  end
end