class Pokemon
  
  attr_accessor :name, :type
  attr_reader :id, :db
  
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end
  
  def self.save(name, type, db)
    sql = "INSERT INTO pokemon (name, type) VALUES (?, ?)"
    db.execute(sql, name, type)
    @id = db.execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end
  
  def self.find(id_number, db)
    sql = "SELECT * FROM pokemon WHERE id = ?"
    result = db.execute(sql, id_number)[0]
<<<<<<< HEAD
    find_poke_by_id = Pokemon.new(id: result[0], name: result[1], type: result[2], db: db)
    find_poke_by_id
=======
    new_poke = Pokemon.new(id: id_number, name: result[1], type: result[2], db: db)
    # binding.pry
>>>>>>> c2560e1e2ca5a9bf5d574ea3168862b14cbafc5f
  end
  
  
  
end
