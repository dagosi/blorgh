require 'active_support/concern'

class Post < ActiveRecord::Base
  include Blorgh::Concerns::Models::Post
end
