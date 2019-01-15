authorization do
  role :admin do
    has_permission_on [:sessions], :to => [:index, :signin, :new, :create, :show, :destroy, :confirm, :forget, :changepwd]
    has_permission_on [:doctors], :to => [:index, :show, :new, :create, :update, :destroy]
    has_permission_on [:patients], :to => [:show, :new, :create, :update, :destroy]
    has_permission_on [:rooms], :to => [:index, :show, :new, :create, :update, :destroy]
    has_permission_on [:beds], :to => [:index, :show, :new, :create, :update, :destroy]
    has_permission_on [:timeslots], :to => [:index, :show, :new, :create, :update, :destroy]
    has_permission_on [:slots], :to => [:index, :show, :new, :create, :update, :destroy]
    has_permission_on [:appointments], :to => [:index, :show, :new, :create, :update, :destroy]
    has_permission_on [:comments], :to => [:index, :show, :new, :create, :update, :destroy]
    has_permission_on [:admittedrecords], :to => [:index, :show, :new, :create, :update, :destroy]
  end

  role :guest do
    has_permission_on [:sessions], :to => [:index, :signin, :new, :create, :show, :destroy, :confirm, :forget, :changepwd]
    has_permission_on [:patients], :to => [:show, :patient_details_login]
  end

  role :doctor do
    has_permission_on [:sessions], :to => [:index, :signin, :new, :create, :show, :destroy, :confirm, :forget, :changepwd]
    has_permission_on :patients, :to => [:show, :patient_details_login]
    has_permission_on :appointments, :to => [:new, :create]
    has_permission_on :comments, :to => [:edit, :update]
  end

  role :patient do
    has_permission_on :comments, :to => [:edit, :update]
  end
end
