require "pry"

def get_first_name_of_season_winner(data, season)
  winner = []

  data[season].each do |contestant|
    contestant.each do |key, value|
      if contestant["status"] == "Winner"
        winner = contestant["name"].split
        return winner[0]
      end
    end
  end

end

def get_contestant_name(data, occupation)
  occ_name = []

  data.each_value do |season|
    season.each do |contestant|
      if contestant["occupation"] == occupation
        return occ_name = contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count_htown = 0

  data.each_value do |season|
    season.each do |contestant|
      if contestant["hometown"] == hometown
        count_htown += 1
        #binding.pry
      end
    end
  end
  count_htown
end

def get_occupation(data, hometown)
occ = ""

  data.each_value do |season|
    season.each do |contestant|
      if  contestant["hometown"] == hometown
        return occ = contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_sum = 0
  age_count = 0


  data[season].each do |contestant|
    age_sum += contestant["age"].to_i
    age_count += 1
  end
  (age_sum.to_f / age_count).round
  #binding.pry
end
