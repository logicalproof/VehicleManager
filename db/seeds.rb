# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)





def vehicle_creation(vehicle)
  v = Vehicle.create(number: vehicle[0], current_mileage: 0, make: "Chevy", model: vehicle[1], year: vehicle[2], purchase_date: "#{vehicle[2]}-01-01 00:00:01", user_id: 1)
end


vehicles_array = [[19, "C2500", "1998"],
  [24, "VAN", "1999"],
  [29, "C2500", "1999"],
  [31, "VAN", "1996"],
  [32, "VAN", "1999"],
  [35, "CARGO VAN", "2001"],
  [38, "1 TON VAN", "2001"],
  [39, "SILVERADO X-CAB", "2001"],
  [43,  "VAN", "2000"],
  [50, "C2500 HD", "2003"],
  [51, "SILVERADO", "2003"],
  [55, "ASTRO VAN", "2001"],
  [56, "SILVERADO", "2003"],
  [57, "ASTRO VAN", "2004"],
  [58, "SILVERADO", "2004"],
  [60, "SILVERADO", "2005"],
  [61, "K2500 HD", "2005"],
  [62, "SILVERADO", "2005"],
  [64, "SILVERADO", "2005"],
  [66, "COLORADO", "2006"],
  [67, "ASTRO VAN", "2005"],
  [68, "COLORADO", "2006"],
  [69, "EXP WORK VAN", "2006"],
  [70, "EXP WORK VAN", "2006"],
  [71, "1/2 TON", "2006"],
  [72, "COLORADO", "2006"],
  [73, "VAN", "2006"],
  [74, "1/2 TON", "2006"],
  [75, "COLORADO", "2006"],
  [76, "COLORADO", "2006"],
  [77, "SILVERADO", "2006"],
  [78, "SILVERADO", "2007"],
  [79, "COLORADO", "2006"],
  [80, "COLORADO", "2006"], 
  [81, "1/2 TON", "2007"],
  [82, "3/4 TON", "2007"],
  [83, "3500", "2007"],
  [84, "C1500", "2007"],
  [85, "SILVERADO", "2007"],
  [86, "SILVERADO", "2007"],
  [87, "SILVERADO X-CAB", "2007"],
  [88, "X-CAB UTILITY", "2007"],
  [90, "SILVERADO", "2007"],
  [91, "EXP CARGO VAN", "2007"],
  [92, "SILVERADO", "2007"],
  [93, "CARGO VAN", "2007"],
  [94, "SILVERADO", "2007"], 
  [96, "SILVERADO", "2008"],
  [97, "SILVERADO X-CAB", "2008"],
  [99, "SILVERADO", "2008"],
  [100, "SILVERADO", "2008"],
  [101, "2500 HD UTILITY", "2005"],
  [102, "SILVERADO", "2008"],
  [103, "SILVERADO X-CAB", "2009"],
  [104, "SILVERADO", "2007"],
  [105, "2500 HD UTILITY", "2006"],
  [106, "SILVERADO", "2007"],
  [107, "SILVERADO", "2008"],
  [108, "2500 HD UTILITY", "2005"],
  [109, "SILVERADO", "2007"],
  [110, "SILVERADO", "2010"],
  [111, "SILVERADO", "2010"],
  [112, "EXP CGOVAN", "2010"],
  [114, "SILVERADO X-CAB", "2010"],
  [115, "SILVERADO", "2010"],
  [116, "SILVERADO", "2010"],
  [117, "SILVERADO", "2010"],
  [118, "SILVERADO", "2010"],
  [119, "SILVERADO", "2011"],
  [121, "2500 HD UTILITY", "2007"],
  [123, "SILVERADO", "2011"],
  [124, "2500 UTILITY", "2006"],
  [125, "2500 HD UTILITY", "2011"],
  [126, "2500 UTILITY", "2004"],
  [127, "SILVERADO", "2011"],
  [128, "2500", "2004"],
  [129, "SILVERADO", "2009"],
  [130, "3500", "2006"],
  [131, "SILVERADO", "2012"],
  [132, "SILVERADO X-CAB", "2011"],
  [133, "2500 UTILITY", "2013"], 
  [134, "3/4 TON", "2012"],
  [135, "3/4 TON", "2013"],
  [136, "1/2 TON", "2013"],
  [137, "SILVERADO 4X4 DIESEL", "2013"],
  [138, "2500 EXPRESS EXT", "2013"],
  [139, "EXT 3/4 TON VAN", "2013"],
  [140, "SILVERADO", "2013"], 
  [141, "1 TON", "2013"],
  [142, "3/4 TON", "2013"],
  [143, "3/4 TON VAN", "2013"],
  [144, "UTILITY", "2013"],
  [145, "1/2 TON", "2013"],
  [146, "1/2 TON", "2013"],
  [147, "4X4 1/2 TON", "2014"],
  [148, "EXPRESS VAN", "2012"],
  [149, "3/4 TON", "2013"]]
  vehicles = []
  vehicles_array.each do |vehicle|
  	vehicles << vehicle_creation(vehicle)
  end

  # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



technicians = %w(Anderson,Jeffery,602-695-4702
Banwart,Larry,602-695-0034
Berry,Jonathen,602-694-6442
Bevilacqua,Tony,602-679-4618
Bratcher,Jeff,602-653-0466
Brennan,Joe,602-694-8598
Brown,Michael,602-694-9020
Bustos,Lorenzo,602-292-9329
Butler,Robert,602-882-3781
Campbell,Don,602-695-2037
Castellani,Shayne,602-663-7910
Chavez,Fernando,602-679-6444
Clark,Ryan,602-695-1699
Clermont,Charles,602-695-0032
Clutter,Beau,602-292-4355
Coffman,Jason,602-290-2215
Crocker,James,602-695-1838
Cushway,Derek,602-451-3584
Davis,Jeff,602-695-0033
Dew,Danny,602-448-4465
Diaz,Joseph,602-291-0833
Dobberphul,Andrew,602-541-9578
Doucette,Tom,602-292-4562
Dufty,Lyndon,602-292-1608
Ellsworth,Willis,602-695-5087
Estes,Matt,435-720-2618
Ewell,Charles,602-695-0010
Fain,Leighton,602-695-2022
Farra,Joseph,602-695-8150
Fischbeck,Eric,602-695-2531
Fisher,Joe,602-350-4830
Flis,Michael,602-228-1893
Formway,Gary,602-292-3255
French,Bradley,602-320-7663
Gamboa,Michael,602-663-3843
Garcia,Marcos,602-694-5451
Gazlay,Chris,602-695-0012
Gilbert,John,602-292-2845
Goon,Ron,602-695-0038
Guyton,Jim,602-695-3170
Halcomb,Tad,602-695-3963
Hamilton,Justin,602-695-0040
Hooiman,Eric,775-434-3848
Horvath,Bill,602-695-1748
Hossleton,Dan,602-370-2696
Hoy,Ronnie,602-695-0041
Huffman,Marcus,602-695-3675
Hunt,Rusty,602-290-3573
James,Rick,602-826-7392
Johnson,Jim,602-695-2039
Johnson,Beau,602-695-0808
Jones,Lennie,602-695-0027
Jones,Robert,602-695-5103
Jones,Rhys,602-292-9576
Karlosak,Steven,602-695-0019
Keller,CJ,602-695-0036
Kelsey,Bill,602-695-3489
Kimes,Jimmy,602-679-6406
Klein,Steven,602-292-1962
Knoll,Kyle,602-695-3693
Krauss,Russell,602-309-8483
LaFaver,Ray,775-276-7096
Lake,Russ,602-320-9256
Lawler,Will,602-695-0011
Lopez,Eduardo,602-694-0214
Lyon,Mike,602-695-4040
Lyon,Timothy,928-322-5474
Martin,Mike,602-625-1968
Marvin,Joe,602-694-3408
Meiner,Dustin,602-291-0711
Mendez,Fernando,602-291-1246
Moya,Joshua,602-695-0023
Munoz,Juan,602-695-0026
Neufeld,Robert,602-292-4173
Neylon,Tim,602-309-6448
Nino,Travis,602-679-6314
Ousley,Kris,602-695-5550
Papuga,Zachary,602-695-3478
Perez,Angel,602-882-0185
Petty,Zach,602-292-7126
Phipps,Kyle,520-307-3188
Pitzer,Beach,602-695-0114
Pizzuto,John,602-695-0016
Prieto,Robert,602-292-3993
Rasgo,Warren,602-309-0267
Ridgway,Adam,602-695-0035
Rivers,Loren,602-695-0015
Rodgers,Edwin,602-695-3078
Salazar,Rafael,602-695-5531
Salazar,Rafael,602-695-0022
Sandberg,Nick,602-292-9331
Schilling,Jonathan,602-694-3734
Schrey,Mike,602-695-3450
Schue,Dennis,602-999-7149
Smith,Damon,602-370-4147
Solis,Johnathon,602-499-9692
Stark,Bob,623-225-9564
Steele,Pete,602-695-0043
Stinton,Justin,602-309-6329
Stone,Zachary,602-695-8146
Stringer,Lee,602-370-5981
Swain,Robert,928-215-0245
Tanner,Lindsay,602-361-7563
Tanner,Kale,928-660-9367
Templin,Rickey,602-695-0017
Thompson,Larry,602-290-7460
Thompson,Bill,602-695-5062
Tolbert,Jeff,602-695-0039
Trauthwein,Michael,602-309-0206
Triassi,Anthony,602-695-0268
Unger,Phil,602-292-9240
Valencia,Jesus,602-639-0982
VanClay,Dave,602-292-1664
Vandervort,Michael,602-695-0014
Villaverde,Chane,602-292-5410
Workman,Bryceon,602-695-4726
Yates,Scott,928-699-0563
Zahller,Kevin,602-695-0020)


techs = []
technicians.each do |x|
  arry = x.split(",", 0)
  techs << {first_name: arry[1], last_name: arry[0], phone_number: arry[2]}
end


def first_letters(string, num)
  string[0, num]
end


def user_creation(tech)
  pword = "afe12345"
  User.create(first_name: tech[:first_name], last_name: tech[:last_name], email: "#{tech[:first_name].downcase + first_letters(tech[:last_name], 1).downcase}@americanfire.com", phone_number: tech[:phone_number], password: pword, password_confirmation: pword, role: 'driver')
end

techs.each do |technician|
  user_creation(technician)
end





