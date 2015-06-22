require 'rails_helper'

describe 'creating a new item', type: :feature do

  it 'blocks a regular user from creating an item'

  it 'has a link from the index page to add a new item' do
    visit items_path
    expect(page).to have_link('Add New Item', href: new_item_path)
  end

  it 'lets me create a new item' do
    visit new_item_path
    fill_in('Title', with: "Fried Oreos")
    fill_in('Description', with: "Literally fried Oreos")
    fill_in('Price', with: 3 )
    click_on "Create New Item"

    expect(current_path).to eq(item_path(Item.last))
    expect(page).to have_text("Fried Oreos")
  end

  it 'errors if title, description, or price are blank' do
    visit new_item_path
    expect(page).to have_text('Creating a New Item')

    fill_in('Description', with: 'my new item')
    click_on('Create New Item')

    expect(page).to have_text('Creating a New Item')
    expect(page).to have_text("Title can't be blank")
    expect(page).to have_text("Price can't be blank")


    fill_in('Title', with: 'Brand New Fabulous Item')
    click_on('Create New Item')

    expect(page).to have_text('Creating a New Item')
    expect(page).to have_text("Price can't be blank")
  end

  it 'must have a unique title for all items; errors if title is repeated' do
    @item = Item.create(title: "Item #1", description: "Description of Item", price: 18)

    visit items_path
    expect(page).to have_text('Item #1')

    visit new_item_path
    fill_in('Title', with: "Item #1")
    fill_in('Description', with: "A more slammin' description")
    fill_in('Price', with: 3 )
    click_on "Create New Item"

    expect(page).to have_text("Title has already been taken")
  end


  it 'has a price with a decimal numeric value' do
    visit new_item_path
    fill_in('Title', with: "Item Title")
    fill_in('Description', with: "description of title")
    fill_in('Price', with: 3500 )
    click_on "Create New Item"

    expect(current_path).to eq(item_path(Item.last))
    expect(page).to have_text('$35.00')
  end

  it 'must have a price greater than zero in order to be valid' do
    visit new_item_path
    fill_in('Title', with: "Item Title")
    fill_in('Description', with: "description of title")
    fill_in('Price', with: 0 )
    click_on "Create New Item"

    expect(page).to have_text('Price must be greater than 0')
  end

  it 'errors when entered price has letters or symbols in it' do
    visit new_item_path
    fill_in('Title', with: "Item Title")
    fill_in('Description', with: "description of title")
    fill_in('Price', with: '86j0')
    click_on "Create New Item"

    expect(page).to have_text('Price is not a number')

    fill_in('Price', with: '!&$%' )
    click_on "Create New Item"

    expect(page).to have_text('Price is not a number')
  end

  it 'can have a price greater than 0, but less than 1 dollar'  #we need to do??

  xit 'has a default photo if one is not given, no errors' do
    visit new_item_path
    fill_in('Title', with: "Item Title")
    fill_in('Description', with: "description of title")
    fill_in('Price', with: 58 )
    click_on "Create New Item"

    expect(page).to have_text('$35.00')
  end

end

describe 'view an item', type: :feature do

  before(:each) do
    Item.create(title: "Item #1", description: "item description", price: 10)
  end

  it 'lists all items on items page' do
    visit items_path
    expect(page).to have_text("All Items")
    expect(page).to have_text("Item #1")
  end

  it "visits the items page when that item title is clicked" do
    visit items_path
    click_on('Item #1')

    expect(current_path).to eq(item_path(Item.last))
    expect(page).to have_text('Item #1')
    expect(page).to have_text(10)
  end
end


describe 'editing an existing item', type: :feature do
  before(:each) do
    @item = Item.create(title: "Item #1",
      description: "sweet item description", price: 10)
  end

  it 'blocks a regular user from editing an item'

  it 'allows updating items from only admin user(s)'

  it 'allows changing the title, description, and/or price' do

    visit edit_item_path(@item)
    expect(page).to have_text('Edit Item')

    fill_in('Title', with: 'Item #4')
    fill_in('Description', with: 'Better description')
    fill_in('Price', with: 17)
    click_on('Update')

    # visit category_path(curr_category)
    expect(page).to have_no_text('Item #1')
    expect(page).to have_text('Item #4')
    expect(page).to have_no_text('sweet item description')
    expect(page).to have_text('Better description')
    expect(page).to have_no_text(10)
    expect(page).to have_text(17)
  end

  it 'allows changing the category of the item'

  xit 'has an edit link next to the item on the items own page' do
    my_category = FactoryGirl.create(:category, title: 'My Category')
    existing_item = FactoryGirl.create(:item, title: 'Existing Item',
                                       description: 'Existing Item Description',
                                       category: my_category)

    visit items_path(existing_item)
    expect(page).to have_link('Edit', href: edit_item_path(existing_item))
  end

  it 'blocks a unauthenticated admin user from editing an item'

  it 'allows an authenticated admin user to edit an item'

end


describe 'deleting an existing item', type: :feature do

  before(:each) do
    @item1 = Item.create(title: "Food", description: "fatty food", price: 10)
    @item2 = Item.create(title: "Drink", description: "wine", price: 10)
    @item3 = Item.create(title: "Alcohol", description: "beer", price: 10)
  end

  it 'allows an item to be deleted' do

    visit item_path(@item2)
    click_on "Delete Item"

    expect(current_path).to eq(items_path)
    expect(page).not_to have_text("Drink")
  end

  it 'blocks a regular user from deleting an item'

  it 'blocks a unauthenticated admin user from deleting an item'

  it 'allows an authenticated admin user to delete an item'

end

describe 'cart_items item(s)', type: :feature do

  it 'can add an item to the cart_items'

  it 'can remove an item from the cart_items'

  it 'can increase the quantity count of an item in the cart_items'

end


describe 'retired items', type: :feature do

  it 'allows retired items to be viewed on items page and are marked/labeled as retired'

  it 'blocks users from adding retired items to cart_items'
end
