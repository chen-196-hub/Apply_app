class CompaniesController < ApplicationController
  before_action :set_company , only: %i[show edit update destroy up down]
  before_action :set_companies , only: %i[up down]

  def index
    @companies = Company.all.order(:sequence)
  end

  def show
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_paramas)
    if @company.save 
      @company.sequence = @company.id
      @company.save
      redirect_to root_path
    else
      render new_company_path
    end
  end

  def edit
  end
  
  def update
    if @company.update(company_paramas)
    redirect_to company_path
    else
      render :edit
    end
  end
  
  def destroy
    @company.destroy
    redirect_to root_path
  end

  def up
    @companies[@i].sequence , @companies[@i-1].sequence = @companies[@i-1].sequence , @companies[@i].sequence
    redirect_to root_path if @companies[@i].save && @companies[@i-1].save  
  end

  def down
    @companies[@i].sequence , @companies[@i+1].sequence = @companies[@i+1].sequence , @companies[@i].sequence
    redirect_to root_path if @companies[@i].save && @companies[@i+1].save  
  end


  private
  def company_paramas
    params.require(:company).permit(:name,:content,:memo,:apply_site,:hp,:recruit_status)
  end
  def set_company
    @company = Company.find(params[:id])
  end
  def set_companies
    @companies = Company.all.order(:sequence)
    @i = @companies.ids.index(@company.id)
  end
end
