class Trick < ActiveRecord::Base
  validates :title, :content, presence: true

  belongs_to :user

  paginates_per 20
end
