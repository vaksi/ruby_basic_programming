#Mengkonversi angka bilangan ke kalimat 

$kalimat=["", "Satu", "Dua", "Tiga", "Empat", "Lima", "Enam", "Tujuh", "Delapan", "Sembilan"] #deklarasi angka satuan

def angka_ke_kalimat(angka) #method angka ke kalimat
	hasil=""	
	if(angka==10) then
		hasil="Sepuluh"
	end
	if(angka==11) then 
		hasil="Sebelas"
	end
	if(angka<12) then
		hasil=$kalimat[angka]
	end
	if(angka>=12 && angka<=19) then
		hasil=$kalimat[angka%10] + " Belas"
	end
	if(angka>=20 && angka<=99) then
		hasil=angka_ke_kalimat(angka/10) + " Puluh " + $kalimat[angka%10]
	end
	if(angka>=100 && angka<=199) then
		hasil="Seratus " + angka_ke_kalimat(angka%100)
	end
	if(angka>=200 && angka<=999) then
		hasil=angka_ke_kalimat(angka/100) + " Ratus " + angka_ke_kalimat(angka%100)
	end
	if(angka>=1000 && angka<=1999) then
		hasil="Seribu " + angka_ke_kalimat(angka%1000)
	end
	if(angka>=2000 && angka<=999999) then 
		hasil=angka_ke_kalimat(angka/1000) + " Ribu " + angka_ke_kalimat(angka%1000)
	end
	if(angka>=1000000 && angka<=999999999) then 
		hasil=angka_ke_kalimat(angka/1000000) + " Juta " + angka_ke_kalimat(angka%1000000)
	end
	if(angka>=1000000000 && angka<=999999999999) then 
		hasil= angka_ke_kalimat(angka/1000000000) + " Milyar " + angka_ke_kalimat(angka%1000000000)
	end
	return hasil
	
end

def main()
	puts "Masukan Bilangan (1 - 999 Milyar) : "
	input = gets.chomp().to_i
	puts "Terbilang = " + angka_ke_kalimat(input)
end
main()
