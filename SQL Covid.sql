1. Hitung jumlah total kasus covid aktif yang baru di setiap provinsi. Urutkan berdasarkan jumlah kasus
yang paling besar.
SELECT sum(a.New_Active_Cases),province FROM `fgacademy-363015.latihan.covid`  a where province is not null 
group by province  order by sum(a.New_Active_Cases) desc;

2. Ambil 2 location iso code yang memiliki jumlah total kematian karena covid paling sedikit
SELECT distinct Location_ISO_Code, sum(Total_Deaths) as jumlah_kematian FROM `fgacademy-363015.latihan.covid` 
group by Location_ISO_Code  order by jumlah_kematian limit 2;

3. Kapan (tanggal) Indonesia memiliki rate kasus recovered paling tinggi? Berapa ratenya?
SELECT Date, Case_Recovered_Rate, Location
FROM `fgacademy-363015.latihan.covid` 
where Location = 'Indonesia' order by Case_Recovered_Rate desc limit 1;

4. Hitung total case fatality rate dan case recovered rate dari masing-masing location iso code. Urutkan dari
yang paling rendah.
-SELECT distinct Location_ISO_Code,sum(Case_Fatality_Rate) as jumlah_kematian FROM `fgacademy-363015.latihan.covid` 
group by Location_ISO_Code order by jumlah_kematian;

-SELECT distinct Location_ISO_Code,sum(Case_Recovered_Rate) as jumlah_recovered FROM `fgacademy-363015.latihan.covid` 
group by Location_ISO_Code order by jumlah_recovered;

5. Pada tanggal berapa total kasus covid mulai menyentuh angka 30.000-an? Hitung ada berapa data
yang tercatat ketika kasus covid lebih dari atau sama dengan 30.000?
-SELECT Total_Cases, a.Date  FROM  `fgacademy-363015.latihan.covid` a
where Total_Cases >=30000 AND Location='Indonesia' order by Date limit 1;

-SELECT COUNT(*) AS Banyak_Cases FROM `fgacademy-363015.latihan.covid` 
WHERE Total_Cases >= 30000 ;