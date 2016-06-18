class NewToiletsController < ApplicationController
  before_action :set_new_toilet, only: [:show, :edit, :update, :destroy]

  # GET /new_toilets
  # GET /new_toilets.json
  def index
    @new_toilets = NewToilet.all
    authorize! :read, @toilets
  end

  # GET /new_toilets/1
  # GET /new_toilets/1.json
  def show
  end

  # GET /new_toilets/new
  def new
    @new_toilet = NewToilet.new
  end

  # GET /new_toilets/1/edit
  def edit
  end

  # POST /new_toilets
  # POST /new_toilets.json
  def create
    @new_toilet = NewToilet.new(new_toilet_params)
    authorize! :create, @toilet

    respond_to do |format|
      if @new_toilet.save
        format.html { redirect_to @new_toilet, notice: 'New toilet was successfully created.' }
        format.json { render :show, status: :created, location: @new_toilet }
      else
        format.html { render :new }
        format.json { render json: @new_toilet.errors, status: :unprocessable_entity }
      end
    end
  end

  def user
     @user = User.find( params[:user_id] )
     authorize! :read, @user

     @toilets = Toilet.where( user: @user ).order( created_at: :desc )
     authorize! :read, @toilets
  end


  # PATCH/PUT /new_toilets/1
  # PATCH/PUT /new_toilets/1.json
  def update
    respond_to do |format|
      if @new_toilet.update(new_toilet_params)
        format.html { redirect_to @new_toilet, notice: 'New toilet was successfully updated.' }
        format.json { render :show, status: :ok, location: @new_toilet }
      else
        format.html { render :edit }
        format.json { render json: @new_toilet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_toilets/1
  # DELETE /new_toilets/1.json
  def destroy
    @new_toilet.destroy
    respond_to do |format|
      format.html { redirect_to new_toilets_url, notice: 'New toilet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_toilet
      @new_toilet = NewToilet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_toilet_params
      params.require(:new_toilet).permit(:name, :price, :cleanliness, :string, :image)
    end
end
