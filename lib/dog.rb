class Dog

  attr_accessor :name, :breed
  attr_reader :id

  def initialize(name, breed, id=nil)
    @name = name
    @breed = breed
    @id = id
  end

  def self.create_table
    sql = <<-SQL
      CREATE TABLE dog
      id PRIMARY KEY INTEGER
      VALUES name TEXT,
      breed TEXT
    SQL

    DB[:conn].execute(sql)
  end

  def self.drop_table
    sql = <<-SQL
      DROP TABLE dog
    SQL

    DB[:conn].execute(sql)
  end

  def save
    if self.id
      self.update
    else
    sql = <<-SQL

    SQL

    DB[:conn].execute(sql, self.name, self.breed)
  end

  def self.create
    sql = <<-SQL

    SQL

    DB[:conn].execute(sql)
  end




end
