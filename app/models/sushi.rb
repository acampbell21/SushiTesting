class Sushi < ApplicationRecord

  validates_presence_of :name, :price, :ingredients

  def info
    "#{name} #{ingredients}"
  end



end
