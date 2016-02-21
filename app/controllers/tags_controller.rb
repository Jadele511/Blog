class TagsController < ApplicationController

	def index
	    @tag = Tag.all
	  end
	def show
	  @tag = Tag.find(params[:id])
	end

	def new
	    @tag = tag.new
	  end

	 def create
	    @tag = Tag.new(tag_params)

	    respond_to do |format|
	      if @tag.save
	        format.html { redirect_to @article, notice: 'Tag was successfully created.' }
	        format.json { render :show, status: :created, location: @tag }
	      else
	        format.html { render :new }
	        format.json { render json: @tag.errors, status: :unprocessable_entity }
	      end
	    end
  end 

	def destroy
	    @tag.destroy
	    respond_to do |format|
	      format.html { redirect_to tags_url, notice: 'Tag was successfully destroyed.' }
	      format.json { head :no_content }
	    end
	  end

end
