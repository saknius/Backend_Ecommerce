class MoviesController <ActionController::Base
    def index
        data = ["lord of the rings", "game of thrones"]
        render :json => data
    end
end