class EmployessController < ApplicationController
    before_action :load_employee, except: %i(index new create)
    def index
        @employess = Employee.all.page(params[:page]).per(6)
    end

    def show
        
    end

    def edit
        byebug
    end

    def new
        @employee = Employee.new
    end

    def loadAjax
        @employess = Employee.all.page(params[:page]).per(5)

        respond_to do |format|
            format.html
            format.json { render json: @employess.to_json }
        end
    end

    def load_employee
        @employee = Employee.find_by id: params[:id]
        return if @employee
        redirect_to root_path
    end
end
