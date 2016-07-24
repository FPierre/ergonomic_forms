class Lead < ApplicationRecord
  enum gender: [:male, :female, :unknow]
end
