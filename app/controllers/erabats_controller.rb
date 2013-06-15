class ErabatsController < ApplicationController
  # GET /erabats
  # GET /erabats.json
  def index
    @erabats = Erabat.all

    respond_to do |format|
      format.html # index.html.erb
      format.js
    end
  end

  # GET /erabats/1
  # GET /erabats/1.json
  def show
    @erabat = Erabat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @erabat }
    end
  end

  # GET /erabats/new
  # GET /erabats/new.json
  def new
    @erabat = Erabat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @erabat }
    end
  end

  # GET /erabats/1/edit
  def edit
    @erabat = Erabat.find(params[:id])
  end

  # POST /erabats
  # POST /erabats.json
  def create
    @erabat = Erabat.new(params[:erabat])

    respond_to do |format|
      if @erabat.save
        format.html { redirect_to @erabat, notice: 'Erabat was successfully created.' }
        format.json { render json: @erabat, status: :created, location: @erabat }
      else
        format.html { render action: "new" }
        format.json { render json: @erabat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /erabats/1
  # PUT /erabats/1.json
  def update
    @erabat = Erabat.find(params[:id])

    respond_to do |format|
      if @erabat.update_attributes(params[:erabat])
        format.html { redirect_to @erabat, notice: 'Erabat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @erabat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /erabats/1
  # DELETE /erabats/1.json
  def destroy
    @erabat = Erabat.find(params[:id])
    @erabat.destroy

    respond_to do |format|
      format.html { redirect_to erabats_url }
      format.json { head :no_content }
    end
  end
end
