# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  title       :string
#  year        :integer
#  duration    :integer
#  description :text
#  image_url   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

# Copy this file into your spec/support folder; create one if you don't have it.
# https://github.com/firstdraft/increasing_random/blob/master/increasing_random.rb

require Rails.root.join("spec", "support", "increasing_random.rb")

FactoryGirl.define do
  factory :movie do
    sequence(:id, IncreasingRandom.new) { |n| n.value }
    sequence(:title, IncreasingRandom.new) { |n| "Some fake title #{n}" }
    sequence(:year, IncreasingRandom.new) { |n| n.value }
    sequence(:duration, IncreasingRandom.new) { |n| n.value }
    sequence(:description, IncreasingRandom.new) { |n| "Some fake description #{n}" }
    sequence(:image_url, IncreasingRandom.new) { |n| "Some fake image url #{n}" }
  end
end
