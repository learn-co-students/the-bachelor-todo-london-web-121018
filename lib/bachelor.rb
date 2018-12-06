def get_first_name_of_season_winner(data, season)
winnerfirstname = ""
winnername = ""
  data.each do |seasons,contestant|
    if seasons.to_s == season
      contestant.each do |data, value|
        if data["status"] == "Winner"
          winnername = data["name"]
        end
      end
    end
  end
  winnerfirstname = winnername.gsub(/\s.+/, '')
  winnerfirstname
end



def get_contestant_name(data, occupation)
  winnername = ""
  data.each do |seasons, contestant|
    contestant.each do |data, value|
      if data["occupation"] == occupation
        winnername = data["name"]
      end
    end
  end
  winnername
end

def count_contestants_by_hometown(data, hometown)
  contestantcount = 0
  data.each do |seasons, contestant|
    contestant.each do |data, value|
      if data["hometown"] == hometown
        contestantcount += 1
      end
    end
  end
  contestantcount
end

def get_occupation(data, hometown)
  occupation = ""
  data.each do |seasons, contestant|
    contestant.each do |data, value|
      if data["hometown"] == hometown
        return data["occupation"]
      end
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  agearray = []
  data.each do |seasons,contestant|
    if seasons.to_s == season
      contestant.each do |data, value|
        agearray << data["age"].to_f
        end
      end
    end
    averageage = (agearray.inject(:+)/agearray.size)
    averageage.round(0)
end
