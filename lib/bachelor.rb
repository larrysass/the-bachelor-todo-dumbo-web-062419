def get_first_name_of_season_winner(data, season)

    data[season].each do |people|

       people.each do |key ,value|
        if value == "Winner"
            full_name = people["name"].split(' ')
            return full_name[0]
        end
      end
    end
end

def get_contestant_name(data, occupation)
  data.each do |season, array|
   array.each do |people|
    people.each do |key, value|
      if value == occupation
        return people["name"]
      end
   end
  end
end
end

def count_contestants_by_hometown(data, hometown)
counter = 0
  data.each do |season, array|
    array.each do |people|
      people.each do |key, value|
        if value == hometown
          counter += 1
        end
      end
    end
  end
return counter
end

def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |people|
      people.each do |key, value|
        if value == hometown
          return people["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age_total = 0
  number_of_people = 0
    data[season].each do |people|
      people.each do |key, value|
      if key == "age"
        number_of_people += 1
        age_total += value.to_f
      end
    end
  end
average = (age_total / number_of_people).round
end
