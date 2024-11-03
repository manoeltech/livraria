class Order < ApplicationRecord
  belongs_to :shipping
  belongs_to :client
  belongs_to :book
end
