def nyc_pigeon_organizer(data)
  new_pigeon = {}
  data.each do | key, hash|
    hash.each do |attribute, name_array|
      name_array.each do |name|
        if new_pigeon[name].nil?
          new_pigeon[name] = {}
          new_pigeon[name][:color] = {}
        end
        if key == :color 
          new_pigeon[name][key] << attribute.to_s 
        else
          new_pigeon[name][key] = {}
          new_pigeon[name][key] << attribute.to_s
        end
    end
  end
end
