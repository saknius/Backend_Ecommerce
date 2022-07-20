class UserlistController <ActionController::Base
    def index
        data = ["saksham", "rithik"]
        render :json => data
    end
end