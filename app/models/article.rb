class Article < ApplicationRecord
    has_many :comments
    
    VALID_STATUS = ['public', 'private', 'archived']

    validates :status, inclusion: { in: VALID_STATUS }
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }

    def archived?
        status == 'archived'
    end
end
