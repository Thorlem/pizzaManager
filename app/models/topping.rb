class Topping < ApplicationRecord
    has_and_belongs_to_many :pizzas, dependent: :delete_all

    # Validations
    validates :name, presence: true, uniqueness: { case_sensitive: false },
                length: { minimum: 3 },
                format: { with: /\A[a-zA-Z]+\z/, message: "Only letters allowed in the name" }

  before_destroy :delete_associated

  def delete_associated
      self.pizzas.each do |p|
        p.destroy!
      end
  end
end
