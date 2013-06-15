class VrabatsController < ApplicationController
  # GET /vrabats
  # GET /vrabats.json
  def index
    @vrabats = Vrabat.all

    respond_to do |format|
      format.html # index.html.erb
      format.js
    end
  end

  # GET /vrabats/1
  # GET /vrabats/1.json
  def show
    @vrabat = Vrabat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vrabat }
    end
  end

  # GET /vrabats/new
  # GET /vrabats/new.json
  def new
    @vrabat = Vrabat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vrabat }
    end
  end

  # GET /vrabats/1/edit
  def edit
    @vrabat = Vrabat.find(params[:id])
  end

  # POST /vrabats
  # POST /vrabats.json
  def create
    @vrabat = Vrabat.new(params[:vrabat])

    respond_to do |format|
      if @vrabat.save
        format.html { redirect_to @vrabat, notice: 'Vrabat was successfully created.' }
        format.json { render json: @vrabat, status: :created, location: @vrabat }
      else
        format.html { render action: "new" }
        format.json { render json: @vrabat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vrabats/1
  # PUT /vrabats/1.json
  def update
    @vrabat = Vrabat.find(params[:id])

    respond_to do |format|
      if @vrabat.update_attributes(params[:vrabat])
        format.html { redirect_to @vrabat, notice: 'Vrabat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vrabat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vrabats/1
  # DELETE /vrabats/1.json
  def destroy
    @vrabat = Vrabat.find(params[:id])
    @vrabat.destroy

    respond_to do |format|
      format.html { redirect_to vrabats_url }
      format.json { head :no_content }
    end
  end
end
