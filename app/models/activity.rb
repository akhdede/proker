class Activity < ApplicationRecord
  extend FriendlyId
  friendly_id :nama_kegiatan, use: :slugged

  WillPaginate.per_page = 5

  belongs_to :section, counter_cache: true

  counter_cache_with_conditions :section, :activities_achieved, status: 1

  validates :nama_kegiatan, presence: {message: 'Harus diisi, tidak boleh kosong!'}
  validates :status, numericality: {message: 'Harus dipilih!'}
  validates :target_pelaksanaan, presence: {message: 'Harus diisi, tidak boleh kosong!'}
  validates :realisasi_pelaksanaan, presence: {message: 'Harus diisi, tidak boleh kosong!'}, if: :status_equal_one 

  def status_equal_one
    status == 1
  end

end
