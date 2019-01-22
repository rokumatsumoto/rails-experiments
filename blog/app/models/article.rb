# == Schema Information
#
# Table name: articles
#
#  id         :bigint(8)        not null, primary key
#  title      :string
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Article < ApplicationRecord
  include ActiveModel::Serializers::Xml
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: {minimum: 5}


  def test
    return 'xsdfssfdf'
  end
end
