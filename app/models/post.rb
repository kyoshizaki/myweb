# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Post < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates :title, presence: true, length: {minimum: 3}
    validates :body, presence: true
end
