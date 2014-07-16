class Patterns
	attr_accessor :yarn_type, :project_type 
end

class Knitting < Patterns
	attr_accessor :needle_size
end

class Weaving < Patterns
	attr_accessor :warp_length
end


 hat = Knitting.new
 hat.yarn_type = "Worsted Weight"
 hat_yarn_type = hat.yarn_type
 hat.needle_size = "Size 5"
 hat_needle_size = hat.needle_size

 placemat = Weaving.new
 placemat.project_type = "Home Goods"
 placemat_project_type = placemat.project_type
 placemat.warp_length = "18 inches"
 placemat_warp_length = placemat.warp_length

 puts hat.inspect
 puts placemat.inspect

