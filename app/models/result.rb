class Result < ActiveRecord::Base
  belongs_to :event
  belongs_to :competitor
end
