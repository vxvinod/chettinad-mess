class Videofile < ActiveRecord::Base
  # attr_accessible :title, :body
  def self.save(upload)
  	directory = "public/data"
  	file_name = upload['datafile'].original_filename
  	path = File.join(directory, file_name)
  	File.open(path, 'wb') { |f| f.write(upload['datafile'].read) }
  end
end
