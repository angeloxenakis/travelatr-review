class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    validates :name, uniqueness: true
    validates :bio, length: {minimum: 30}

    def total_likes
        self.posts.map { |post| post.likes }.sum
    end

    def featured_post
        self.posts.sort { |post| post.likes }.last(5)
    end
end
