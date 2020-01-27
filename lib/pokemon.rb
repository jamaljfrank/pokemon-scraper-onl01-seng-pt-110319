class Pokemon
  attr_accessor :name, :type
  attr_reader :id, :db 
  
  def self.initialize(id:, name:, type:, db:)
    @db = db
  end
end
