require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |seasons, contestants|
    if seasons == season
      contestants.each do |contestant|
        if contestant["status"] = "Winner"
          return contestant["name"].split(" ")[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |seasons, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hometown_of = []

  data.each do |seasons, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        hometown_of << contestant["name"]
      end
    end
  end
  hometown_of.length
end

def get_occupation(data, hometown)
  # code here
  data.each do |seasons, contestants|
    contestants.find do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ages = []

  data.each do |seasons, contestants|
    if seasons == season
      contestants.each do |contestant|
        ages << contestant["age"].to_f
      end
    end
  end
  average_age = ages.inject(0) { |sum, el| sum + el } / ages.size
  average_age.round
end
