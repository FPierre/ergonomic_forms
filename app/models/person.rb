class Person < ActiveRecord::Base
  has_many :car

  before_validation :set_public_id

  validates_uniqueness_of :public_id

  enum gender: [:male, :female, :unknow]

  geocoded_by :address, latitude: :lat, lon: :lng

  after_validation :geocode, if: -> (obj){ self.city.present? and self.city_changed? }

  private

    def set_public_id
      public_id = UniqueIdService::generate unless public_id
    end

    def address
      [thoroughfare, city, postal_code, country].compact.join(', ')
    end
end
