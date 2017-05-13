class Category < ActiveRecord::Base
    has_many :informs
    has_many :posts
end
