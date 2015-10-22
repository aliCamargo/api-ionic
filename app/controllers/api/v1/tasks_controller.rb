class Api::V1::TasksController < Api::V1::ApiController

  before_action :set_task, only: [:show, :update, :destroy]

    # GET /tasks.json
    def index
      @tasks = Task.limit(10).offset( params[:offset] )
      
      render json: @tasks
    end

    # DELETE /tasks/1.json
    def show
      render json: @task
    end

    # POST /tasks.json
    def create
      @task = Task.new(task_params)
      if @task.save
        render json: {status: 'success'}
      else
        render json: {status: 'error', errors: @task.errors}
      end
    end

    # PATCH/PUT /tasks/1.json
    def update
      if @task.update(task_params)
        render json: {status: 'success'}
      else
        render json: {status: 'error'}
      end
    end

    # DELETE /tasks/1.json
    def destroy
      @task.destroy
      render json: {status: 'Task deleted'}
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def task_params
      params.require(:task).permit(:name, :description, :priority)
    end


end
