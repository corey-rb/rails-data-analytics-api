class App < ApplicationRecord
    validates :name, uniqueness: true
    validates :token, uniqueness: true
end
