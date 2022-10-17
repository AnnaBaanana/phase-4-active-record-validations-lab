class Post < ApplicationRecord

    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: { in: 0..250}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}

    #private validation method
    validate :title_valid

    def title_valid
        if title == 'True Facts'
            errors.add(:title, "cannot be True Facts")
        end
    end

end
