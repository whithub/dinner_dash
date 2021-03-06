require 'rails_helper'

RSpec.describe "Admin Categories" do
  context "with a logged in admin" do
    before(:each) do
      @admin = User.create(full_name: "Admin",
                           email: "admin@email.com",
                           role: 1, password: "dinnerdash")
      visit root_path
      click_on("Toggle navigation")
      find('.dropdown-menu').click
      fill_in('Email', with: @admin.email)
      fill_in('Password', with: 'dinnerdash')
      click_on "Login"

      click_on 'Categories'
      click_link('Create Category')
      fill_in("Title", with: "Category Title #1")
      click_on "Create Category"
    end

    it 'edits a category' do
      expect(page).to have_content('Category Title #1')
      expect(current_path).to eq(admin_categories_path)

      click_link "Edit"
      fill_in('Title', with: 'Category Title #5')
      click_button('Update Category')

      expect(current_path).to eq(admin_categories_path)
      expect(page).to have_content('Category Title #5')
      expect(page).to_not have_content('Category Title #1')
    end

    it "cannot update category title with one that already exists" do
      click_link('Create Category')
      fill_in("Title", with: "Category Title #8")
      click_on "Create Category"

      expect(page).to have_content('Category Title #1')
      expect(page).to have_content('Category Title #8')

      first(:link, "Edit").click
      fill_in "Title", with: "Category Title #8"
      click_on "Update Category"
      expect(page).to have_content("Title has already been taken")
    end

    it "cannot update a category with a blank title" do
      click_link('Edit')
      fill_in('Title', with: "")
      click_on('Update Category')
      expect(page).to have_content("Title can't be blank")
    end

  end
end
