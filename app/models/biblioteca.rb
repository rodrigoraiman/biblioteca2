class Biblioteca < ApplicationRecord
    validates :title, presence: true
    validates :author, presence: true
    validates :status, presence: true

    paginates_per 5
   
   
end
