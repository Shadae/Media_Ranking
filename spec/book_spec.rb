require 'spec_helper'

describe Book do
  let (:book) { Book.new(name: "Eat, Pray, Love")}

  describe 'validations' do

    it "must have a name" do
      book = Book.create
      expect(book.errors[:name]).to include "cant be blank"
    end

    it "has a unique name" do 
      book
      invalid_book = Book.new(name: "Eat, Pray, Love")
      expect(invalid_book).to eq false
      # expect(invalid_book).to be_invalid same
      expect(invalid_book).errors[:name].to include "has already been taken"
    end
  end
  
  describe '#upvote' do
    it "increments the rank field by 1" do
      rank = book.rank 
      book.upvote
      expect(book.rank).to eq count + 1
      expect { book.upvote}. to change(book, :rank).by(1)
    end
  end
end