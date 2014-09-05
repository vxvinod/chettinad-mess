class UshasController < ApplicationController
  # GET /ushas
  # GET /ushas.json
  def index
    @ushas = Usha.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ushas }
    end
  end

  # GET /ushas/1
  # GET /ushas/1.json
  def show
    @usha = Usha.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @usha }
    end
  end

  # GET /ushas/new
  # GET /ushas/new.json
  def new
    @usha = Usha.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @usha }
    end
  end

  # GET /ushas/1/edit
  def edit
    @usha = Usha.find(params[:id])
  end

  # POST /ushas
  # POST /ushas.json
  def create
    @usha = Usha.new(params[:usha])

    respond_to do |format|
      if @usha.save
        format.html { redirect_to @usha, notice: 'Usha was successfully created.' }
        format.json { render json: @usha, status: :created, location: @usha }
      else
        format.html { render action: "new" }
        format.json { render json: @usha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ushas/1
  # PUT /ushas/1.json
  def update
    @usha = Usha.find(params[:id])

    respond_to do |format|
      if @usha.update_attributes(params[:usha])
        format.html { redirect_to @usha, notice: 'Usha was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @usha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ushas/1
  # DELETE /ushas/1.json
  def destroy
    @usha = Usha.find(params[:id])
    @usha.destroy

    respond_to do |format|
      format.html { redirect_to ushas_url }
      format.json { head :no_content }
    end
  end
end
