class Tag < ApplicationRecord
    has_many :post_tags
    has_many :posts, through: :post_tags

    validates :name, presence: {message: "Introduce a name for the tag" }, uniqueness: {message : "This tag name has already been taken, use another one"}
end