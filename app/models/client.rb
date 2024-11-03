class Client < ApplicationRecord
  enum status: {active: 0, inactive: 1}
end
