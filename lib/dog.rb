class Dog

  attr_accessor :name, :breed
  attr_reader :id

  def initialize(attributes)
    attributes.each {|key, value| self.send (("#{key}=", value)}
  end

#   def self.create_table
#     sql = <<-SQL
#       CREATE TABLE dog
#       id PRIMARY KEY INTEGER
#       VALUES name TEXT,
#       breed TEXT
#     SQL
#
#     DB[:conn].execute(sql)
#   end
#
#   def self.drop_table
#     sql = <<-SQL
#       DROP TABLE dog
#     SQL
#
#     DB[:conn].execute(sql)
#   end
#
#   def save
#     if self.id
#       self.update
#     else
#     sql = <<-SQL
#
#     SQL
#
#     DB[:conn].execute(sql, self.name, self.breed)
#   end
# end
#
#   def self.create
#     sql = <<-SQL
#
#     SQL
#
#     DB[:conn].execute(sql)
#   end
#
#   def self.find_or_create_by
#
#   end
#
#   def self.new_from_db
#
#   end
#
#   def update
#
#   end
end
