class Subscriber < ApplicationRecord
  belongs_to :subscriber, class_name: :User, foreign_key: :subscriber_id
end
