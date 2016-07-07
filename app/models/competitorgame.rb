class Competitorgame < ActiveRecord::Base
  belongs_to :game
  belongs_to :competitor
end
