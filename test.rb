require "prawn"

width = [120,160,200,240,250,300,300,320,320,336,468,728,970,970]
height = [600,600,200,400,250,250,600,50,100,280,60,90,90,250]

puts width.length
puts height.length

idx = 0

while idx < height.length
    puts "#{width[idx]}" + "x" + "#{height[idx]}"
    Prawn::Document.generate("output/#{width[idx]}x#{height[idx]}.pdf", :page_size => [width[idx],height[idx]])

   idx +=1 
end
