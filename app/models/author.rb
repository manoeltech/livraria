class Author < ApplicationRecord
  has_many :books
  validates :name, presence: true
  enum status: { active: 0, inactive: 1 }
  before_create :unique_name, :block_in_status_inactive


  private

  def unique_name
    all_names = Author.pluck(:name)
    current_author = name

    if all_names.include?(current_author)
      errors.add(:name, "- Autor #{name} já foi criado!")
      throw(:abort)
    end
  end

  def block_in_status_inactive
    if self.status == "inactive"
      errors.add(:status, "- Não crie um autor com status inativo")
      throw(:abort)
    end
  end
end
