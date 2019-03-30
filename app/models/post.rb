class Post < ApplicationRecord
	acts_as_votable

  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :category
  belongs_to :admin

    has_attached_file :cover, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/
end
