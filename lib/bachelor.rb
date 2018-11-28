require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  first_name_of_winner = ""
  data[season].each do |x|
    if x.values.include?("Winner")
      first_name_of_winner = (x["name"].split(" "))[0]
      
    end 
  end 
  
  first_name_of_winner
end

def get_contestant_name(data, occupation)
  name = ""
  
  data.values.each{|x| x.each{|y|  y["occupation"] == occupation ? name = y["name"] : nil}}
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0 
  
  data.values.each do |x|
    x.each do |y|
      y.values.include?(hometown) ? counter += 1 : nil  
      
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  name = []
   data.values.each do |x|
    x.each do |y|
      y.values.include?(hometown)  ?  name.push( y["occupation"])  : nil 
      
    end
  end
  name[0]
end

def get_average_age_for_season(data, season)
  # code here
  age_array = []
  data[season].each do |x|
    age_array.push(x["age"].to_f)
  end
  array_sum = age_array.reduce(:+)
  (array_sum/age_array.length).round 
end
