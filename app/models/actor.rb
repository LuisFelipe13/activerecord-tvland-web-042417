class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    roles = []
    x = 0
    while x < self.characters.size
      roles << "#{self.characters[x].name} - #{self.shows[x].name}"
      x += 1
    end
    roles
  end
  
end
