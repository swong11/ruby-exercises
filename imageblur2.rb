class Image

	attr_accessor :image

	def initialize(image)
		@image = image
	end

	def output_image
		@image.each do |row|
			puts row.join(" ")
		end
	end

	def find_ones
		ones = []
		@image.each_with_index do |array , y|
			array.each_with_index do | _ , x|
				if @image[y][x] == 1
					ones << [y, x]
				end
			end
		end
		return ones
	end

	def blur_image
		ones = find_ones 

		ones.each do |coords|
			y = coords.first 
			x = coords.last
			
			@image[y + 1][x] = 1 unless y == @image.length - 1 	#down
			@image[y - 1][x] = 1 unless y == 0					#up
			@image[y][x - 1] = 1 unless x == 0					#left
			@image[y][x + 1] = 1 unless x == @image[y].length - 1 #right

		end
	end
end

###

space = "  "

image = Image.new([
	[0, 0, 0, 0], 
	[1, 1, 0, 0], 
	[0, 0, 0, 1], 
	[1, 0, 0, 0],
	[1, 0, 0, 0],
])

image.output_image
image.blur_image
puts space 
image.output_image