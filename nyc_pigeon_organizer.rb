require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
   pigeon_list = {}
   
   #Accepts the uniq names of the piegons
   names = data.map do |attributes, attributes_details|
      attributes_details.values  
   end.flatten.uniq

   # Assigns the piegons to empty hash
   names.each do  |piegons|
      pigeon_list[piegons] = {}
   end

   #Assign keys :color, :gender and :lives to each pigeon_list as key
   data.each do |attributes, attributes_details|
    pigeon_list.each do |names, empty_hash|
      pigeon_list[names][attributes] = []
    end
   end

   # Assign the final value in the pigeon_list third tier
   pigeon_list.each do |name, name_attributes|
      data.each do |attributes, attributes_details|
        attributes_details.each do |key, value|
          # binding.pry
          if value.include?(name)
            # binding.pry
            pigeon_list[name][attributes] << key.to_s
          end

        end

      end

   end
  
end