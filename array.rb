# Multidimensional Arrays

class Image

	attr_reader :data

	def initialize(data)
		@data = data
	end	
	
end

class Printer

	def initialize(image)
		@image = image
	end

	def print
		@image.data.each do |row|
			puts row.join # no need for arguments
		end
	end

end


image_1 = Image.new([
	  [0, 0, 0, 0],
	  [0, 1, 0, 0],
	  [0, 0, 0, 1],
	  [0, 0, 0, 0]
	])

my_printer_1 = Printer.new(image_1)
my_printer_1.print