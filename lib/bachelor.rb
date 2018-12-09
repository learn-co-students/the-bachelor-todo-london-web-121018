require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  winner = ""
  data.each do |seasons, contestants|
    if seasons == season
      contestants.each do |contestant|
        if contestant["status"] == "Winner"
          winner = contestant["name"]
          winner = winner.split(" ")[0]

        end


      end
    end
  end
  winner

end

def get_contestant_name(data, occupation)
  # code here
  winner = ""
  data.each do |seasons, contestants|

      contestants.each do |contestant|
        if contestant["occupation"] == occupation
          winner = contestant["name"]

        end
      end

  end
  winner
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |seasons, contestants|

      contestants.each do |contestant|
        if contestant["hometown"] == hometown
          winner = contestant["name"]
          counter+=1
        end
      end

  end
  counter
end

def get_occupation(data, hometown)
  # code here
  winner = ""
  data.each do |seasons, contestants|

      contestants.each do |contestant|
        if contestant["hometown"] == hometown
          winner = contestant["occupation"]
          break
        end
      end

  end
  winner
end

def get_average_age_for_season(data, season)
  # code here
  divider = 0
  tobdivided = 0

  data.each do |seasons, contestants|
    if seasons == season
      contestants.each do |contestant|
        tobdivided += contestant["age"].to_f
        divider+=1
      end
    end
  end
    (tobdivided/divider).round

end
