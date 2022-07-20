class SingleuserController <ActionController::Base
    def index
        data = ["abc", "rithik"]
        render :json => data
    end
end