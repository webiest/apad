class Project < ActiveRecord::Base

  ##because of floor more likely to select first id (0 or 1 => 1, 2 => 2, 3 => 3 etc )
  def self.random
    id = floor((last.id * rand).round, 1)
    find(id)
  end

  private
  def self.floor(num, floor)
    num >= floor ? num : floor
  end
end
