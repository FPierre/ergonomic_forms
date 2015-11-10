class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update]

  def show
    respond_to do |format|
      format.json { render json: { person: @person }, status: :ok }
    end
  end

  def new
    @person = Person.new
  end

  def edit
  end

  def create
  end

  def update
    respond_to do |format|
      if @person.update person_params
        format.json { render json: { }, status: :ok }
      else
        format.json { render json: { errors: @person.errors }, status: :bad_request }
      end
    end
  end

  def destroy
  end

  private

    def person_params
      params.require(:person).permit(:first_name, :last_name, :birth_date, :city, :postal_code, :thoroughfare, :country, :gender)
    end

    def set_person
      @person = Person.find_by public_id: params[:public_id]
    end
end
