class Book < ApplicationRecord
  # belongs_to :user
  enum status: [:currently_reading,  :to_read, :read]
end
