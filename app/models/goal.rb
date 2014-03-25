class Goal < ActiveRecord::Base
attr_accessible :name, :user_id, :S, :M, :A, :R, :T

belongs_to :user
end
