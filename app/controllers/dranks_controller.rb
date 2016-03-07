class DranksController < ApplicationController
	def index
		#will have template
		@dranks = Drank.all
	end

	def show
		#will have template
	end

	def new  #displays new record
		#will have template
		@drank = Drank.new
	end

	def create #save new record
		#will save and redirect
		@drank = Drank.new(allowed_params)
		if @drank.save
			redirect_to dranks_path
		else render 'new'
		end

	end

	def edit #display form for existing record
		#will have template
		@drank = Drank.find(params[:id])
	end

	def update #save changes
		#will save and redirect
		@drank = Drank.find(params[:id])
		if @drank.update_attributes(allowed_params)
			redirect_to dranks_path
		else render 'new'
		end
	end

	def destroy 
		#will destroy and redirect    
	end

	private 
		def allowed_params
			params.require(:drank).permit(:name, :size)

		end


end
