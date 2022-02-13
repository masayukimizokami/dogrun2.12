class Comment < ApplicationRecord
    belongs_to :dogrun
   


    validates :title, presence: true
    validates :contents, presence: true
end
