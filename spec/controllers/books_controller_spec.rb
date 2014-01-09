require 'spec_helper'

describe BooksController do

  describe 'GET #index' do
    let!(:book) {Book.create(name: "Eat, Pray, Love")}

    it 'is sucessful' do
      get :index
      expect(response.status).to eq(200)
    end

    it 'assigns @books' do
      get :index

      expect(assigns(:book)).first.to be_an_instance_of Book
    end
  end
 
  describe 'Post #create' do 

    # it 'is successful' do 
    #   post :create, book: {name: "Twilight"}
    #   expect(response).to be_successful
    # end

    it 'redirects to a show template' do
      post :create, book: {name:'Twilight'}
      expect(response).to redirect_to book_path(assigns(:book).id)
    end

    it 'assigns @book' do
      post :create, book: {name:'Twilight'}
      expect(assigns(:book)).to be_valid
    end
  end

end