class Activity < ApplicationRecord
  extend FriendlyId
  friendly_id :nama_kegiatan, use: :slugged

  WillPaginate.per_page = 5

  belongs_to :section, counter_cache: true

  counter_cache_with_conditions :section, :activities_achieved, status: 1

  validates :nama_kegiatan, presence: {message: 'Nama kegiatan harus diisi!'}
  validates :status, numericality: {message: 'Status kegiatan harus dipilih!'}
  validates :target_pelaksanaan, presence: {message: 'Target pelaksanaan harus diisi!'}
  validates :realisasi_pelaksanaan, presence: {message: 'Realisasi pelaksanaan harus diisi!'}, if: :status_equal_one

  def status_equal_one
    if status == 1
      if realisasi_pelaksanaan == nil
        errors.add(:realisasi_pelaksanaan, 'Harus diisi!')
      end
    end
  end

end
