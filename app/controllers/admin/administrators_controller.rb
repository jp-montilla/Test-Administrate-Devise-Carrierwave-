module Admin
  class AdministratorsController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Administrator.
    #     page(params[:page]).
    #     per(10)
    # end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Administrator.find_by!(slug: param)
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information

    def valid_action?(name, resource = resource_class)
      # @admin = Administrator.all
      # if @admin.count == 1
      #   %w[edit delete].exclude?(name.to_s) && super
      # else
      #   %w[edit].exclude?(name.to_s) && super
      # end


      @user = Administrator.all
      if name.to_s == 'edit'
        return false
      end
      if name.to_s == 'destroy' and @user.count == 1
        return false
      end
      
      !!routes.detect do |controller, action|
        controller == resource.to_s.underscore.pluralize && action == name.to_s
      end

    end

  end
end
