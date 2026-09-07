require 'rails_helper'

RSpec.describe Book, type: :model do
    let(:valid_attributes) do
        {
            title: 'Lord of Rings',
            author: 'J.R.R. Tolkien',
            price: 35.00,
            published_date: Date.today
        }
    end

    context 'title validations' do
        it 'is valid with a title (sunny day)' do
            book = Book.new(valid_attributes)
            expect(book).to be_valid
        end

        it 'is invalid without a title (rainy day)' do
            book = Book.new(valid_attributes.merge(title: nil))
            expect(book).not_to be_valid
        end
    end

    context 'author validations' do
        it 'is valid with an author (sunny day)' do
            book = Book.new(valid_attributes)
            expect(book.author).to eq('J.R.R. Tolkien')
        end

        it 'is invalid without an author (rainy day)' do
            book = Book.new(valid_attributes.merge(author: nil))
            expect(book).not_to be_valid
        end
    end

    context 'price validations' do
        it 'is valid with a number price (sunny day)' do
            book = Book.new(valid_attributes)
            expect(book.price).to eq(35.00)
        end

        it 'is invalid without a number price (rainy day)' do
            book = Book.new(valid_attributes.merge(price: nil))
            expect(book).not_to be_valid
        end
    end

    context 'published date validations' do
        it 'is valid with a published date (sunny day)' do
            book = Book.new(valid_attributes)
            expect(book.published_date).to eq(Date.today)
        end

        it 'is invalid without a published date (rainy day)' do
            book = Book.new(valid_attributes.merge(published_date: nil))
            expect(book).not_to be_valid
        end
    end
end