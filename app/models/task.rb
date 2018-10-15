class Task < ApplicationRecord
  belongs_to :project

  

  def self.incomplete
    where(complete: false)
  end

  def self.complete
    where(complete: true)
  end
end
