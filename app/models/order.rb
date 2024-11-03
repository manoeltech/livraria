class Order < ApplicationRecord
  belongs_to :shipping
  belongs_to :client
  belongs_to :book
  enum status: {active: 0, inactive: 1}
  enum method_of_payment: {money: 0, credit_card: 1, ticket: 2}
  before_save :set_total, :check_discount

  private
  
  def set_total
    self.total = (book.value + shipping.value ||= 0) - discount ||= 0
  end

  def check_discount
    if discount > book.value
      errors.add(:discount, "Desconto não pode ser maior que o valor do livro")
      throw(:abort)
    end
  end
end
