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
require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
