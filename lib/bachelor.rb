def get_first_name_of_season_winner(data, season)
  # code here
  winner_name = nil
  first_name = nil
  data.each do |season_in_hash, season_array|
    if season_in_hash == season 
    season_array.each do |contestant_hash|
      if contestant_hash["status"] == "Winner"
        winner_name = contestant_hash["name"]
        first_name = winner_name.split(" ")[0].to_s
      end
    end
    end 
  end 
  first_name
end

def get_contestant_name(data, occupation)
  # code here
  contestant_name = nil 
  data.each do |season, season_array|
    season_array.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation 
        contestant_name = contestant_hash["name"]
      end 
    end 
  end 
  contestant_name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hometown_counter = 0 
  data.each do |season, season_array|
    season_array.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        hometown_counter += 1 
      end 
    end 
  end 
  hometown_counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, season_array|
    season_array.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        return contestant_hash["occupation"]
        break
      end 
    end 
  end 
end

def get_average_age_for_season(data, season)
  # code here
  total_age = 0 
  average_age = 0 
  number_of_contestants = 0
  data.each do |season_in_hash, season_array|
    if season_in_hash == season 
    season_array.each do |contestant_hash|
    contestant_age = contestant_hash["age"].to_i
    total_age = total_age + contestant_age 
    number_of_contestants += 1 
  end 
end 
end 
average_age = total_age.to_f / number_of_contestants.to_f
average_age.round
end
