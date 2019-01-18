authorization do
  role :admin do
    has_permission_on [:sessions], :to => [:dashboard, :index, :signin, :new, :create, :show, :destroy, :confirm, :forget, :change_pwd]
    has_permission_on [:users], :to => [:index, :signup]
    has_permission_on [:doctors], :to => [:index, :show, :doctor_profile_form, :delete, :doctor_list]
    has_permission_on [:patients], :to => [:index, :details_view_admin, :delete]
    has_permission_on [:departments], :to => [:index, :create, :delete]
    has_permission_on [:rooms], :to => [:index, :edit, :update_room, :new, :create, :show_rooms, :destroy]
    has_permission_on [:beds], :to => [:index, :show, :new, :edit, :create, :update, :destroy]
    has_permission_on [:timeslots], :to => [:index, :show, :new, :create, :edit, :destroy]
    has_permission_on [:slots], :to => [:index, :show, :new, :create, :update, :destroy]
    has_permission_on [:appointments], :to => [:index, :show, :create, :destroy]
    has_permission_on [:comments], :to => [:index, :show, :new, :edit]
    has_permission_on [:admitted_records], :to => [:index, :new_record, :create_record, :delete, :discharge_patient, :discharge_record]
  end

  role :guest do
    has_permission_on [:sessions], :to => [:index, :signin, :confirm, :forget, :change_pwd]
    has_permission_on [:users], :to => [:index, :signup]
  end

  role :doctor do
    has_permission_on [:sessions], :to => [:index, :signin, :new, :create, :show, :destroy, :confirm, :forget, :change_pwd]
    has_permission_on [:doctors], :to => [:doctor_profile_form, :update_profile, :appointment_list_for_doctor, :profile_view_doctor]
    has_permission_on [:patients], :to => [:show, :details_view_doctor]
    has_permission_on [:appointments], :to => [:new, :create]
    has_permission_on [:comments], :to => [:new]
    has_permission_on [:photos], :to => [:new, :create]
    has_permission_on [:reports], :to => [:new, :create]
  end

  role :patient do
    has_permission_on [:sessions], :to => [:index, :signin, :new, :create, :show, :destroy, :confirm, :forget, :change_pwd]
    has_permission_on [:patients], :to => [:details_view_patient, :patient_profile_form, :update_profile, :slot_view, :search_slots, :find_reports]
    has_permission_on [:appointments], :to => [:new, :create]
    has_permission_on [:photos], :to => [:new, :create]
    has_permission_on [:reports], :to => [:new, :create]
  end
end
