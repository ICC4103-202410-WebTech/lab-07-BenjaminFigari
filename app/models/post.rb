class Post < ApplicationRecord
    belongs_to :User #1
    has_many :post_tags #2
    has_many :tags, through: :post_tags #2
    belongs_to :parent_post, class_name: 'Post', optional: true #3
    has_many :child_posts, class_name: 'Post', foreign_key: 'parent_post_id' #3

    #5
    validates :title, presence: {message: "The post must have a title "}
    validates :content, presence: {message: "The post must have content "}
    validates :user_id, presence: {message: "The post must have an user_id"}
    validates :answers_count, numericality: { greater_than_or_equal_to: 0, message: "the answer count should be a positive number. How many is the quantity?:"}
    validates :likes_count, numericality: { greater_than_or_equal_to: 0, message: "the likes_count should be a positive number. How many likes have the post?:"}

    before_validation :set_default_published_at, if: -> { published_at.blank? }

    private
    def set_default_published_at
        self.published_at = Time.zone.now
    end
end