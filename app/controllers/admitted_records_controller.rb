class AdmittedRecordsController < ApplicationController

  # display all records
  def index
    @admitted_records = AdmittedRecord.all
  end



  # New record form creation
  def new_record
    if params[:room_id]
      @flag = 1
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
      flash[:notice] = "Failed to create admitted record.....Try again...!"
      redirect_to("/comments?id=1")
    else
      @comment = Comment.find(params[:id])
      @comment.update_attributes(:recommendation_status => 1)
      @admitted_record = AdmittedRecord.create(:bed_id => params[:bed_id][:id], :date => DateTime.now.strftime('%m/%d/%Y'), :time => Time.now.strftime("%H:%M%p"), :patient_id => params[:patient_id])
      redirect_to("/comments?id=1")
    end
  end




  # deleting record
  def delete
@admitted_record = AdmittedRecord.find(params[:id])
    unless @admitted_record.destroy
      flash[:notice] = "Failed to delete the record.........Try again........"
      redirect_to("/comments?id=1")
    else
      @bed = Bed.find(@admitted_record.bed_id)
      @bed.update_attributes(:is_engaged => 0)
      redirect_to("/comments?id=1")
    end
  end



  def discharge_patient
    @record = AdmittedRecord.find(params[:id])
    @bed = Bed.find(@record.bed_id)
  end




  def discharge_record
    @record = AdmittedRecord.find(params[:id])
    if @record.update_attributes(:is_discharged => 1, :discharged_date => Time.now.strftime("%Y-%m-%d"), :discharged_time => Time.now.strftime("%H:%M %p"))
    redirect_to :controller => :admitted_records
  end
  end

end
