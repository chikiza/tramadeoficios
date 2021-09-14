class Review < ApplicationRecord
  belongs_to :craft
  belongs_to :consumer
end
