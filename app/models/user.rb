class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_presence_of :first_name, :last_name, :gender, :age


  def is_old_enough?
    age > 13 ? true : false
  end

  def self.by_age
    order(:age)
  end

end
