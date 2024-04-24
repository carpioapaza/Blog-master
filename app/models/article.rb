# == Schema Information
#
# Table name: articles
#
#  id         :bigint           not null, primary key
#  content    :text
#  name       :string
#  status     :integer          default("inactive")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Article < ApplicationRecord
  enum status: %i[inactive active]

  has_one_attached :picture

  validate :validate_status

  def validate_status
    q = status_before_type_cast
    return if q == q.to_i

    errors.add(:status, 'invalid status') unless q.to_i.to_s == q
  end
end
