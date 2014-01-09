class Book < ActiveRecord::Base
  # Bookis' upvote method that ties to the show form. This has a hidden field that when the button is sumbitted, it also changes the upvote to true
  # attr_accessor :upvote
  # validates :name, presence: true
  # before_save :upvote!, if: :upvote

  # def upvote!
  #   self.upvote = nil
  #   self.rank += 1
  # end

end
