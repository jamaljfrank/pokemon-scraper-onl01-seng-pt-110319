class Pokemon
  attr_accessor :name, :type
  attr_reader :id, :db 
  
  def initialize(id:, name:, type:, db:)
    @db = db
  end
  
  def self.save(name, type)
    sql = <<-SQL
      INSERT INTO pokemon (name, type)
      VALUES (?, ?)
    SQL
 
    DB[:conn].execute(sql, self.name, self.type)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end
end
