require_relative '../../config/application'

class User < ActiveRecord::Base
  has_many :tasks
end