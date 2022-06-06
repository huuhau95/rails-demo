class EmployessController < ApplicationController
    def index
        @employess = Employee.all.page(params[:page]).per(6)
    end

    def loadAjax
        @employess = Employee.all.page(params[:page]).per(5)

        respond_to do |format|
            format.html
            format.json { render json: @employess.to_json }
        end
    end
end
