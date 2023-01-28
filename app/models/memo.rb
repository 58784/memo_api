class Memo < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    validates  :description, length: {maximum: 30}
end
