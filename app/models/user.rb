class User < ApplicationRecord
  has_many :created_posts,
           class_name: 'Post',
           foreign_key: :creator_id,
           dependent: :destroy
end