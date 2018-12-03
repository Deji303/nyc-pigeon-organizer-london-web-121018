require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {} 
  names = get_names_array(data)
  names.each do |name|
    pigeon_list[name] = {
      :color => get_color_array(name,data),
      :gender => get_gender_array(name,data),
      :lives => get_lives_array(name,data)
    }
  end 
  pigeon_list
   
end

def get_names_array (data)
  names_array = data[:gender][:male].concat(data[:gender][:female])
end 



def get_color_array(name,data)
  color_array = []
  data[:color].each do |key,value|
    value.include?(name) ? color_array << key.to_s : nil 
    binding.pry 
  end
   
  color_array
  
end 

def get_gender_array (name,data)
  gender_array = []
  data[:gender].each do |key,value|
    value.include?(name) ? gender_array << key.to_s : nil 
    
  end
   
  gender_array
end

def get_lives_array (name,data)
  lives_array = []
  data[:lives].each do |key,value|
    value.include?(name) ? lives_array << key.to_s : nil 
  end
   
  lives_array
end 







# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }


