class Group < ApplicationRecord
  scope :search_keywords, lambda {
    |search_word| where("(name ILIKE ?) OR (cathegory ILIKE ?)", "%#{search_word}%", "%#{search_word}%").limit(20)
  }
end
