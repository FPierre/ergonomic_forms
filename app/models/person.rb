class Person < ActiveRecord::Base
  before_validation :set_public_id

  validates_uniqueness_of :public_id

  enum gender: [:male, :female, :unknow]

  private

  def set_public_id
    public_id = UniqueIdService::generate unless public_id
  end
end
