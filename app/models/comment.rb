class Comment < ApplicationRecord
  belongs_to :article

  VALID_STATUS = ['public', 'private', 'archived']

  validates :status, inclusion: { in: VALID_STATUS }
  
  def archived? 
    status == 'archived'
  end
end
