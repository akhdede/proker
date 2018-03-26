class Section < ApplicationRecord
  extend FriendlyId
  friendly_id :nama_bidang, use: :slugged

  has_many :activities
end
