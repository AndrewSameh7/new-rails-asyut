class Editor < ApplicationRecord
  has_many :post_editors
  has_many :posts, through: :post_editors
end