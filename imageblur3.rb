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

# Find Ones in the Array
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

# Find the Manhattan Distance between any 2 points
	def manhattan_distance(x1, y1, x2, y2)
		x_abs = (x1 - x2).abs
		y_abs = (y1 - y2).abs
		x_abs + y_abs
	end

# Blur Method
	def blur(distance)
		ones = find_ones
		@image.each_with_index do |array , y2|
			array.each_with_index do | _ , x2|
				ones.each do |x1, y1|
					if distance >= manhattan_distance(x1, y1, x2, y2)
						@image[y2][x2] = 1
					end
				end
			end
		end
	end

end

####

image = Image.new([
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
])

image.output_image
image.blur(3)
puts " "
image.output_image
