require_relative '../../config/application'

class Task < ActiveRecord::Base
  belongs_to :user
end