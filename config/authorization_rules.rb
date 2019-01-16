authorization do
  role :admin do
    has_permission_on [:sessions], :to => [:dashboard, :index, :signin, :new, :create, :show, :destroy, :confirm, :forget, :changepwd]
    has_permission_on [:doctors], :to => [:index, :show, :doctor_profile_form, :delete, :doctor_list]
    has_permission_on [:patients], :to => [:index, :details_view_admin, :delete]
    has_permission_on [:departments], :to => [:index, :create, :delete]
    has_permission_on [:rooms], :to => [:index, :edit, :updateRoom, :new, :create, :showRooms, :destroy]
    has_permission_on [:beds], :to => [:index, :show, :new, :edit, :create, :update, :destroy]
    has_permission_on [:timeslots], :to => [:index, :show, :new, :create, :edit, :destroy]
    has_permission_on [:slots], :to => [:index, :show, :new, :create, :update, :destroy]
    has_permission_on [:appointments], :to => [:index, :show, :create, :destroy]
    has_permission_on [:comments], :to => [:index, :show, :new, :edit]
    has_permission_on [:admittedrecords], :to => [:index, :new_record, :create_record, :delete, :discharge_patient, :dischargeRecord]
  end

  role :guest do
    has_permission_on [:sessions], :to => [:index, :signin, :confirm, :forget, :changepwd]
  end

  role :doctor do
    has_permission_on [:sessions], :to => [:index, :signin, :new, :create, :show, :destroy, :confirm, :forget, :changepwd]
    has_permission_on [:doctors], :to => [:doctor_profile_form, :update_profile, :appointment_list_for_doctor, :profile_view_doctor]
    has_permission_on [:patients], :to => [:show, :details_view_doctor]
    has_permission_on [:appointments], :to => [:new, :create]
    has_permission_on [:comments], :to => [:new]
    has_permission_on [:photos], :to => [:new, :create]
    has_permission_on [:reports], :to => [:new, :create]
  end

  role :patient do
    has_permission_on [:sessions], :to => [:index, :signin, :new, :create, :show, :destroy, :confirm, :forget, :changepwd]
    has_permission_on [:patients], :to => [:details_view_patient, :patient_profile_form, :updateprofile, :slot_view, :search_slots, :find_reports]
    has_permission_on [:appointments], :to => [:new]
    has_permission_on [:photos], :to => [:new, :create]
    has_permission_on [:reports], :to => [:new, :create]
  end
end
