class PhrasesController < ApplicationController
  # GET /phrases
  # GET /phrases.xml
  def index
    @phrases = Phrase.all

    respond_to do |format|
      format.html # index.html.haml
    end
  end
  
  # GET /phrases/1
  # GET /phrases/1.xml
  def show
    @phrase = Phrase.find(params[:id])
    respond_to do |format|
      format.html # show.html.haml
    end
  end
  
  # GET /phrases/new
  # GET /phrases/new.xml
  def new
    @phrase = Phrase.new
	@professors = Professor.find(:all)
	if (!params[:id].nil?)
		@selectedprof = Professor.find(params[:id])
	end
    respond_to do |format|
      format.html # new.html.haml
    end
  end
  
  def edit
    @phrase = Phrase.find(params[:id])
	@professors = Professor.find(:all)
  end
  
  # POST /phrases
  # POST /phrases.xml
  def create
    @phrase = Phrase.new(params[:phrase])
    respond_to do |format|
      if @phrase.save
        flash[:notice] = 'Phrase was successfully created.'
        format.html { redirect_to(phrases_path) }
      else
        format.html { render :action => "new"  }
      end
    end
  end

  # PUT /phrases/1
  # PUT /phrases/1.xml
  def update
    @phrase = Phrase.find(params[:id])
	#@phrase.professor_id = (params[:professor])
    respond_to do |format|
      if @phrase.update_attributes(params[:phrase])
        flash[:notice] = 'Phrase was successfully updated.'
        format.html { redirect_to(phrases_url) }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  # DELETE /phrases/1
  # DELETE /phrases/1.xml
  def destroy
    @phrase = Phrase.find(params[:id])
    @phrase.destroy

    respond_to do |format|
      format.html { redirect_to(phrases_url) }
    end
  end
end