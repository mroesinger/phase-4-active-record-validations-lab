class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]   }

    validate :title
      def must_be_clickbait
          if title.match?("Won't Believe""Secret""Top [number]""Guess")
            errors.add(:title, "this is an errror")
          else
    end
end
