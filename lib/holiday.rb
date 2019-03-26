require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
   #holiday_hash = 
   #{
   #  :winter => {
   #    :christmas => ["Lights", "Wreath"],
   #    :new_years => ["Party Hats"]
   #  },
   #  :summer => {
   #    :fourth_of_july => ["Fireworks", "BBQ"]
   #  },
   #  :fall => {
   #    :thanksgiving => ["Turkey"]
   #  },
   #  :spring => {
   #    :memorial_day => ["BBQ"]
   #  }
   #}
   holiday_supplies[:summer][:fourth_of_july][1]
end
    

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |key, value|
    value << supply
    puts value
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring].each do |key, value|
    value << supply
    puts value
  end

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
   holiday_hash[season][holiday_name] = supply_array
   return holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  array = []
  array = holiday_hash[:winter].collect do |hoiday, supply|
    supply
  end
  array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize!}:"
    holiday.each do |day, supply|
      new_holiday = holiday.to_s.split("_").collect do |word|
        words = word.capitalize!
      end
      puts "  #{split_holiday}: #{supply.join(", ")}" 
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  new_array = []
  holiday_hash.each do |season, holiday|
    holiday.each do |key, value|
      if value.include?("BBQ")
        new_array << key
      end
    end
  end
  new_array.flatten
end







