class Post < ApplicationRecord

    has_one_attached :photo;

    # belongs_to :user

    validates :description, presence: true

end
