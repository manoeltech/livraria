class Book < ApplicationRecord
  belongs_to :author
  belongs_to :category
  enum status: { active: 0, inactive: 1}
  before_create :unique_name

  def sell_book
    if amount > 0
      self.amount -= 1
      self.save!
    else
      errors.add(:amount, "Livro #{name} sem estoque!")
    end
  end

  private

  def unique_name
    books = Book.all.pluck(:name)
    current_book = name

    if books.include?(current_book)
      errors.add(:name, " - Livro #{name} já foi criado.")
      throw(:abort)
    end
  end
end
