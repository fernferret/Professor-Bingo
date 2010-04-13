class ProfessorsController < ApplicationController
	before_filter :auth, :except => [:index, :show]
	# GET /professors
	# GET /professors.xml
  def index
    @professors = Professor.all

    respond_to do |format|
      format.html # index.html.haml
      format.xml  { render :xml => @professors }
    end
  end

  # GET /professors/1
  # GET /professors/1.xml
  def show
    @professor = Professor.find(params[:id])

    respond_to do |format|
      format.html # show.html.haml
      format.xml  { render :xml => @professor }
    end
  end
  
  def board
	@professor = Professor.find(params[:id])
	#@items = Phrase.find(:all, :limit => 3, :conditions => {:professor_id => params[:id]})
	@items = Phrase.random(25, :conditions => {:professor_id => params[:id]})
  end
  
  # GET /professors/new
  # GET /professors/new.xml
  def new
    @professor = Professor.new
	@schools = School.find(:all)
    respond_to do |format|
      format.html # new.html.haml
      format.xml  { render :xml => @professor }
    end
  end

  # GET /professors/1/edit
  def edit
    @professor = Professor.find(params[:id])
  end

  # POST /professors
  # POST /professors.xml
  def create
    @professor = Professor.new(params[:professor])
	current_user = UserSession.find
	@professor.user_id = current_user and current_user.record.id
    respond_to do |format|
      if @professor.save
        flash[:notice] = 'Professor was successfully created.'
        format.html { redirect_to(@professor) }
        format.xml  { render :xml => @professor, :status => :created, :location => @professor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @professor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /professors/1
  # PUT /professors/1.xml
  def update
    @professor = Professor.find(params[:id])

    respond_to do |format|
      if @professor.update_attributes(params[:professor])
        flash[:notice] = 'Professor was successfully updated.'
        format.html { redirect_to(@professor) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @professor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /professors/1
  # DELETE /professors/1.xml
  def destroy
    @professor = Professor.find(params[:id])
    @professor.destroy

    respond_to do |format|
      format.html { redirect_to(professors_url) }
      format.xml  { head :ok }
    end
  end
  def auth
    if not UserSession.find
	  redirect_to :controller => 'user_sessions', :action => 'new'
	end
  end
end
