class Dog
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    @@all
  end 
  
  def self.clear_all
    @@all.clear
  end
  
  def self.print_all
   @@all.each do |dog|
     dog.each do |obj_id, name|
       puts name
     end
   end
  end
  
  def save
    @@all << self 
  end
  
end