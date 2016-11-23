class MapController < ApplicationController
	def display
		# @rfid_tags = current_user.rfid_tags
		#@rfid_tags =Detection.find(:all,:include => :lending)
		@rfid_tags = Detection.joins(:lending)
		render :json => @rfid_tags
	end
	def show
		#@rfid_tags =Detection.find(:all,:include => :lending)
		@rfid_tags = Detection.joins(:lending)
		#@rfid_tags_json = render_to_string( formats: 'json' )
		# format.json { render json: @rfid_tags, status: :unprocessable_entity }
		render :json => @rfid_tags
	end


end
