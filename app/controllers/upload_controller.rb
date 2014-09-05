class UploadController < ApplicationController

	def index
		render :index
	end

	def uploadFile
		post = Videofile.save(params[:upload])
		render :text => "File has been saved successfully"
	end
end
