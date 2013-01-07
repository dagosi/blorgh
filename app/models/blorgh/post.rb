module Blorgh
  class Post < ActiveRecord::Base
    include Blorgh::Concerns::Models::Post
  end
end
