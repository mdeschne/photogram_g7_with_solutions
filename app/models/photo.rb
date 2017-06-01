class Photo < ApplicationRecord
validates(:source, { :presence => true, :uniqueness => true})
  
end
