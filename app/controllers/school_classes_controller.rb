class SchoolClassesController < ApplicationController
    before_action :set_school_class, only: %i[ show edit update ]  

    def index
        @school_classes = SchoolClass.all 
    end
    
    def new
        @school_class = SchoolClass.new
    end

    def show
    end

    def edit
    end

    def create
        @school_class = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end

    def update
        @school_class.update(params.require(:school_class).permit(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end

    private
        def set_school_class
            @school_class = SchoolClass.find(params[:id])
        end
end