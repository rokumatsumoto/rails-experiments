# frozen_string_literal: true

# == Schema Information
#
# Table name: comments
#
#  id         :bigint(8)        not null, primary key
#  commenter  :string
#  body       :text
#  article_id :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint(8)
#

class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :user
end
