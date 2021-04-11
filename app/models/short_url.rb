class ShortUrl < ApplicationRecord
  validates :url, presence: true, format: URI::regexp(%w[http https])
  validates :code, presence: true, length: { minimum: 5 }
end