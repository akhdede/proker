class Activity < ApplicationRecord
  belongs_to :section, counter_cache: true

  counter_cache_with_conditions :section, :activities_achieved, status: 1
  counter_cache_with_conditions :section, :activities_not_achieved, status: 0
end
