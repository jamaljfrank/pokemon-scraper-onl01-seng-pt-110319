class Pokemon
  attr_accessor :name, :type
  attr_reader :id, :db 
  
  def initialize(id:, name:, type:, db:)
  end
  
  def self.save
    sql = <<-SQL
      INSERT INTO pokemon (id, name, type, db)
      VALUES (?, ?, ?, ?)
    SQL
 
    DB[:conn].execute(sql, self.name, self.album)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM songs")[0][0]
    
end
