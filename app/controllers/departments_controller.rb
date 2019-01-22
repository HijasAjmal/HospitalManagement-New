class DepartmentsController < ApplicationController



  filter_access_to :all
  # display all departments
  def index
    @departments = Department.all
  end

  # new department
  def new
    @department = Department.new
  end

  # create new department
  def create_department
    @department = Department.new(params[:department])
    if @department.save
      flash[:notice] = "Department created successfully...."
      redirect_to :controller => :departments
    else
      flash[:notice] = "Failed to create Department...."
      render :action => "new"
    end
  end

  # delete department
  def delete
    @department = Department.find(params[:id])
    if @department.destroy
      flash[:notice] = "Department deleted successfully...."
    else
      flash[:notice] = "Failed to delete Department...."
    end
    redirect_to :controller => :departments
  end


  # create Departments details as pdf (Pdf generate using wkhtmltopdf)
  def department_list
    @departments = Department.all
    render :pdf => "department_list", :header => { :right => '[page] of [topage]' }, :margin => {
                  :top => 40,
                  :bottom => 0
               }
  end
end
