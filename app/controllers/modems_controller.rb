class ModemsController < ApplicationController
  # GET /modems
  # GET /modems.json
  def index
    @modems = Modem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @modems }
    end
  end

  # GET /modems/1
  # GET /modems/1.json
  def show
    @modem = Modem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @modem }
    end
  end

  # GET /modems/new
  # GET /modems/new.json
  def new
    @modem = Modem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @modem }
    end
  end

  # GET /modems/1/edit
  def edit
    @modem = Modem.find(params[:id])
  end

  # POST /modems
  # POST /modems.json
  def create
    @modem = Modem.new(params[:modem])

    respond_to do |format|
      if @modem.save
        format.html { redirect_to @modem, notice: 'Modem was successfully created.' }
        format.json { render json: @modem, status: :created, location: @modem }
      else
        format.html { render action: "new" }
        format.json { render json: @modem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /modems/1
  # PUT /modems/1.json
  def update
    @modem = Modem.find(params[:id])

    respond_to do |format|
      if @modem.update_attributes(params[:modem])
        format.html { redirect_to @modem, notice: 'Modem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @modem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /modems/1
  # DELETE /modems/1.json
  def destroy
    @modem = Modem.find(params[:id])
    @modem.destroy

    respond_to do |format|
      format.html { redirect_to modems_url }
      format.json { head :no_content }
    end
  end
end
