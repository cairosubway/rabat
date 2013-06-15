class RrabatsController < ApplicationController
  # GET /rrabats
  # GET /rrabats.json
  def index
    @rrabats = Rrabat.all

    respond_to do |format|
      format.html # index.html.erb
      format.js
    end
  end

  # GET /rrabats/1
  # GET /rrabats/1.json
  def show
    @rrabat = Rrabat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rrabat }
    end
  end

  # GET /rrabats/new
  # GET /rrabats/new.json
  def new
    @rrabat = Rrabat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rrabat }
    end
  end

  # GET /rrabats/1/edit
  def edit
    @rrabat = Rrabat.find(params[:id])
  end

  # POST /rrabats
  # POST /rrabats.json
  def create
    @rrabat = Rrabat.new(params[:rrabat])

    respond_to do |format|
      if @rrabat.save
        format.html { redirect_to @rrabat, notice: 'Rrabat was successfully created.' }
        format.json { render json: @rrabat, status: :created, location: @rrabat }
      else
        format.html { render action: "new" }
        format.json { render json: @rrabat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rrabats/1
  # PUT /rrabats/1.json
  def update
    @rrabat = Rrabat.find(params[:id])

    respond_to do |format|
      if @rrabat.update_attributes(params[:rrabat])
        format.html { redirect_to @rrabat, notice: 'Rrabat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rrabat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rrabats/1
  # DELETE /rrabats/1.json
  def destroy
    @rrabat = Rrabat.find(params[:id])
    @rrabat.destroy

    respond_to do |format|
      format.html { redirect_to rrabats_url }
      format.json { head :no_content }
    end
  end
end
