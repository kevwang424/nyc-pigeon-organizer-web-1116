require 'byebug'

def nyc_pigeon_organizer(data)
  # write your code here!
  hash = Hash.new()
  #debugger
  data.each do |category, detail|
    detail.each do |colsexloc,names|
      names.each do |name|
        #debugger if category == :gender
        if !hash.include?(name)         #first time adding the name key
          hash[name] = {category => [colsexloc.to_s]}
        elsif hash.include?(name) && hash[name][category] == nil
          hash[name][category] = [colsexloc.to_s]
        elsif !hash[name][category].include?(colsexloc.to_s) && hash[name][category].length >=1
          hash[name][category] << colsexloc.to_s
        end
      end
    end
  end
  hash
end
