class AdmittedRecordsController < ApplicationController

  after_filter :last_rule,
    :only => [:create_record, :delete]

    def last_rule
      redirect_to("/comments?id=1")
    end

  filter_access_to :all
  # display all records
  def index
    @admitted_records = AdmittedRecord.all
  end

  # New record form creation
  def new_record
    if params[:room_id]
      print params[:room_id]
      @beds = Bed.all(:conditions => {:is_engaged => 0, :room_id => params[:room_id]})
      render :update do |page|
        page.replace_html 'bedlistform' ,:partial =>'bed_list'
      end
    else
      @comment = Comment.find(params[:id])
    end
  end

  # create new record
  def create_record
    @bed = Bed.find(params[:bed_id][:id])
    unless @bed.update_attributes(:is_engaged => 1)
      flash[:notice] = "Failed to allocate the bed.....Try again...!"
    else
      @comment = Comment.find(params[:id])
      @comment.update_attributes(:recommendation_status => 1)
      if AdmittedRecord.create(:doctor_id => @comment.appointment.doctor.id, :bed_id => params[:bed_id][:id], :date => DateTime.now.strftime('%m/%d/%Y'), :time => Time.now.strftime("%H:%M%p"), :patient_id => params[:patient_id])
        flash[:notice] = "Record Created successfully........."
      else
        flash[:notice] = "Faild to create record........."
      end
    end
  end

  # deleting record
  def delete
    @admitted_record = AdmittedRecord.find(params[:id])
    unless @admitted_record.destroy
      flash[:notice] = "Failed to delete the record.........Try again........"
    else
      flash[:notice] = "Record deleted successfully........"
    end
  end

  # discharged patient
  def discharge_patient
    @record = AdmittedRecord.find(params[:id])
    @bed = Bed.find(@record.bed_id)
  end

  # update record while discharging
  def discharge_record
    @record = AdmittedRecord.find(params[:id])
    if @record.update_attributes(:discharged_date => Time.now.strftime("%Y-%m-%d"), :discharged_time => Time.now.strftime("%H:%M %p"))
      flash[:notice] = "Record Updated successfully......"
    else
      flash[:notice] = "Fialed to Update Admitted Record...."
    end
    redirect_to :controller => :admitted_records
  end
end
