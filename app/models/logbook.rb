class Logbook < ActiveRecord::Base
  belongs_to :car

  before_validation :set_public_id

  validates_uniqueness_of :public_id

  private

  def set_public_id
    public_id = UniqueIdService::generate unless public_id
  end
end
