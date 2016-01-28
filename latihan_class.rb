class Orang
	nama = ""
	tempat_lahir = ""
	tanggal_lahir = ""
	alamat = ""	
	def setNama(nama)
		@namaku = nama	
	end

	def setTempatLahir(tempat_lahir)
		@tempat_lahirku = tempat_lahir
	end

	def setTanggalLahir(tanggal_lahir)
		@tanggal_lahirku = tanggal_lahir	
	end

	def setAlamat(alamat)
		@alamatku = alamat
	end

	def getNama
		return @namaku
	end

	def getTempatLahir
		return @tempat_lahirku
	end

	def getTanggalLahir
		return @tanggal_lahirku
	end

	def getAlamat
		return @alamatku
	end
	
end

print "masukan nama anda : "
nama = gets.chomp
print "masukan tempat lahir anda : "
tempat_lahir = gets.chomp
print "masukan tanggal lahir anda : "
tanggal_lahir = gets.chomp
print "masukan Alamat anda :"
alamat = gets.chomp

profil = Orang.new
profil.setNama(nama)
profil.setTempatLahir(tempat_lahir)
profil.setTanggalLahir(tanggal_lahir)
profil.setAlamat(alamat)	
puts "Nama : #{profil.getNama}"
puts "Tempat Lahir : #{profil.getTempatLahir}"
puts "Tanggal Lahir : #{profil.getTanggalLahir}"
puts "Alamat : #{profil.getAlamat}"

