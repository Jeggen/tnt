class ToiletController < ApplicationController

  def index
    @toilets = Toilet.all.sort_by { |toilet| toilet.name }
  end

  def show
    @toilet = Toilet.find( params[:id])
  end

  def new
    @toilet = Toilet.new
    @toilet.user_id = params[:user_id]
  end

  def create
    toilet = Toilet.new( toilet_params )
    @toilet.user_id = current_user.id

      if toilet.save
        redirect_to user_path( novel.user_id )
      else
        render new_toilet_path
      end
    end

    def edit
      @toilet = Toilet.find( params[:id])
    end

    def update
      @toilet = Toilet.find( params[:id])

      if @toilet.update_attributes ( toilet_params )
        redirect_to @toilet
      else
        render 'edit'
      end
    end

    def destroy
      @toilet = Toilet.find( params[:id])

      user_id = @toilet.user_id

      @toilet.destroy

      redirect_to user_path( user_id )
    end

    private

    def toilet_params
      params.require( :toilet ).permit( :name, :price)
    end


end
