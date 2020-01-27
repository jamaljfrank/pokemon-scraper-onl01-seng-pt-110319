class Pokemon
  attr_accessor :name, :type
  attr_reader :id, :db 
  
  def initialize(id:, name:, type:, db:)
  end
  
  def self.save
    new_pokemon = self.new
    
end
