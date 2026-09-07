require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'sunny day: valid title inputs' do
    visit new_book_path
    fill_in 'Title', with: 'Lord of the Rings'
    fill_in 'Author', with: 'J.R.R. Tolkien'
    fill_in 'Price', with: '35.00'
    
    select '2020', from: 'book_published_date_1i'
    select 'January', from: 'book_published_date_2i'
    select '1', from: 'book_published_date_3i'

    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Lord of the Rings')
  end

  scenario 'rainy day: invalid title inputs' do
    visit new_book_path
    fill_in 'Title', with: ''
    fill_in 'Author', with: 'J.R.R. Tolkien'
    fill_in 'Price', with: '35.00'
    click_on 'Create Book'
    expect(page).to have_content("Title can't be blank")
  end

  scenario 'sunny day: adding author, price, and published date' do
    visit new_book_path
    fill_in 'Title', with: 'Lord of the Rings'
    fill_in 'Author', with: 'J.R.R. Tolkien'
    fill_in 'Price', with: '35.00'
    
    select '2020', from: 'book_published_date_1i'
    select 'January', from: 'book_published_date_2i'
    select '1', from: 'book_published_date_3i'

    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('J.R.R. Tolkien')
  end

  scenario 'rainy day: missing author' do
    visit new_book_path
    fill_in 'Title', with: 'Lord of the Rings'
    fill_in 'Price', with: '35.00'
    click_on 'Create Book'
    expect(page).to have_content("Author can't be blank")
  end

  scenario 'rainy day: missing price' do
    visit new_book_path
    fill_in 'Title', with: 'Lord of the Rings'
    fill_in 'Author', with: 'J.R.R. Tolkien'
    click_on 'Create Book'
    expect(page).to have_content("Price can't be blank")
  end

  scenario 'rainy day: price is not a number' do
    visit new_book_path
    fill_in 'Title', with: 'Lord of the Rings'
    fill_in 'Author', with: 'J.R.R. Tolkien'
    fill_in 'Price', with: 'abc'
    click_on 'Create Book'
    expect(page).to have_content("Price is not a number")
  end
end