authorization do
  role :Admin do
    has_permission_on [:beds], :to => [:index, :show, :new, :create, :update, :destroy]
  end

  # role :Doctor do
  #   has_permission_on :articles, :to => [:index, :show]
  #   has_permission_on :comments, :to => [:new, :create]
  #   has_permission_on :comments, :to => [:edit, :update] do
  #     if_attribute :user => is { user }
  #   end
  # end
  #
  # role :Patient do
  #   includes :guest
  #   has_permission_on :comments, :to => [:edit, :update]
  # end
end
