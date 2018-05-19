class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
validates_presence_of :first_name

def first_name_here
  self.first_name.split.first
end

def last_name_here
  self.first_name.split.last
end

end
