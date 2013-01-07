module Blorgh
  class Post < ActiveRecord::Base
    attr_accessible :text, :title, :author_id
    belongs_to :author, class_name: "User"
    has_many :comments

    before_save :set_author

    private
      def set_author
        self.author = User.find_or_create_by_name(author.name)
      end
    
  end
end
