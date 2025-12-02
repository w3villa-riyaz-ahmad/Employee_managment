class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  # GET /employees
  def index
    @employees = Employee.all
  end

  # GET /employees/:id
  def show

  end

  # GET /employees/new
  def new
    @employee = Employee.new
  end

  # POST /employees
 def create
  @employee = Employee.new(employee_params)
  
  if @employee.save
    redirect_to employees_path, notice: 'Employee was successfully created.'
  else
    Rails.logger.debug @employee.errors.full_messages  # Add this line to log errors
    render :new
  end
end


  # GET /employees/:id/edit
  def edit
    
  end

  # PATCH/PUT /employees/:id
  def update
    if @employee.update(employee_params)
      redirect_to employees_path, notice: 'Employee was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /employees/:id
  def destroy
    @employee.destroy
    redirect_to employees_path, notice: 'Employee was successfully deleted.'
  end

  private

  # Set @employee for actions that need a specific employee
  def set_employee
    @employee = Employee.find(params[:id])
  end

  # Strong parameters to allow only permitted fields
  def employee_params
    params.require(:employee).permit(:name, :salary, :role)
  end
end



