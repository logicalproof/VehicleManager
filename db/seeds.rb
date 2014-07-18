# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def user_creation(email_suffix, password, user_names)
  suffix = email_suffix
  pword = password
  user_names.each do |u|
	User.create(email: (u+suffix), password: pword, password_confirmation: pword)
  end
end

# def service_type_creation(service_type)
# 	ServiceType.create(name: service_type[0], mileage_interval: service_type[1], month_interval: service_type[2])
# end
# services = [["Oil Change", 3000, 3], 
#       ["Tire Rotation", 6000, 6], 
#       ["Coolant Service", 150000, 60],
#       ["Transmission Service", 40000, 24],
#       ["Brake Pads", 30000, 12]]


user_names = ["nicks", "damons", "tonyb", "ericf", "joef"]
user_creation("@americanfire.com", "afe12345", user_names)



def vehicle_creation(vehicle)
  v = Vehicle.create(number: vehicle[0], current_mileage: 1, make: "Chevy", model: vehicle[1], year: vehicle[2], purchase_date: "")
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


 #  services.each do |x|
	# service_type_creation(x)
 #  end