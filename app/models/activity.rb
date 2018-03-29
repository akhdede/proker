class Activity < ApplicationRecord
  extend FriendlyId
  friendly_id :nama_kegiatan, use: :slugged

  belongs_to :section, counter_cache: true

  counter_cache_with_conditions :section, :activities_achieved, status: 1
  counter_cache_with_conditions :section, :activities_not_achieved, status: 0
end
