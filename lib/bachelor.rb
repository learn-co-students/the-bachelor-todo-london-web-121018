require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestant|
    #binding.pry
    if contestant["status"] == "Winner"
      return contestant["name"].split(" ").first
  end
end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestant|
    contestant.each do |key,value|
      #binding.pry
    if key["occupation"] == (occupation)
      return key["name"]
    end
  end
end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hometowns = 0
  data.each do |season, contestant|
    contestant.each do |key,value|
      if key["hometown"] == hometown
        hometowns += 1
      end
    end
  end
hometowns
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestant|
    contestant.each do |key, value|
      if key["hometown"] == hometown
        return key["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  sum_of_ages = 0
  contestant_counter = 0
  data[season].each do |contestants|
    sum_of_ages += (contestants["age"]).to_i
    contestant_counter += 1
  end
  (sum_of_ages/contestant_counter.to_f).round
end
