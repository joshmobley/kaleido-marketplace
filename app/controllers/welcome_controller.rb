class WelcomeController < ApplicationController

    def index
        redirect_to applications_path
    end

end
