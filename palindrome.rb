name = gets.chomp

def cek_kata(name)
	name_pal = name.reverse 
	hasil = false	
	if name_pal == name then
		hasil = true	
	else 
		hasil = false	
	end
	return hasil
end
puts cek_kata(name)


