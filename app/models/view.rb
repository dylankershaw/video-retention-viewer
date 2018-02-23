class View < ApplicationRecord
    belongs_to :user
    belongs_to :video
    validates :user, :video, :date, :completion, presence: true
    validates :completion, :inclusion => {:in => [0,1.0]}
end
