def get_first_name_of_season_winner(data, season)
  data[season].each {|contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split[0]
    end
  }
end

def get_contestant_name(data, occupation)
  data.each {|season, contestants|
    contestants.each {|contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    }
  }
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each {|season, contestants|
    contestants.each {|contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    }
  }
  return counter
end

def get_occupation(data, hometown)
  data.each {|season, contestants|
    contestants.each {|contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    }
  }
end

def get_average_age_for_season(data, season)
  num_contestants = 0
  contestant_age_sum = 0
  data[season].each {|contestant|
    contestant_age_sum = contestant_age_sum + contestant["age"].to_f
    num_contestants = num_contestants + 1
  }
  return (contestant_age_sum/num_contestants).round
end
