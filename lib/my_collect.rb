def my_collect(array)
  
  if block_given?
    index = 0
    newArray = []
    
    while index < array.length do 
      newArray << yield(array[index])
      index += 1
    end
  else
    puts "It's empty"
  end
  
  newArray
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect( array ) do |name|
  name.split(" ").first
end

collection = ['ruby', 'javascript', 'python', 'objective-c']
my_collect( collection ) do |lang|
   lang.upcase
end