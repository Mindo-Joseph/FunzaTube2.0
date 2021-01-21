class WelcomeController < ApplicationController
    def index
        @courses = Course.all
        @trainers = Trainer.all
    end
end
