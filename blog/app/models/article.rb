# frozen_string_literal: true

# == Schema Information
#
# Table name: articles
#
#  id         :bigint(8)        not null, primary key
#  title      :string
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint(8)
#  slug       :string
#

class Article < ApplicationRecord
  include ActiveModel::Serializers::Xml
  extend FriendlyId

  has_many :comments, dependent: :destroy
  belongs_to :user

  validates :title, presence: true, length: { minimum: 5 }
  friendly_id :title, use: %i[slugged history]

  def should_generate_new_friendly_id?
    title_changed?
  end
end
