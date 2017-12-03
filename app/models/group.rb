class Group < ApplicationRecord
  scope :search_keywords, lambda {
    |search_word| where("(name LIKE ?) OR (cathegory LIKE ?)", "%#{search_word}%", "%#{search_word}%").limit(20)
  }
end
