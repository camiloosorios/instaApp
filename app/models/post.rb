class Post < ApplicationRecord

    has_one_attached :photo;

    has_many :comment

    validates :description, presence: true

end
