class Activity < ApplicationRecord
  extend FriendlyId
  friendly_id :nama_kegiatan, use: :slugged

  WillPaginate.per_page = 5

  belongs_to :section, counter_cache: true

  counter_cache_with_conditions :section, :activities_achieved, status: 1
end
