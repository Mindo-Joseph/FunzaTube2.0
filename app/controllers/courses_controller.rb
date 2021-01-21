class CoursesController < ApplicationController
  # before_action :course, only: [:show, :edit, :update, :destroy]


  def index
    @courses = Course.all
  end

 
  def show
    @course = Course.find_by(id: params[:id])

  end

  # GET /subjects/new
  def new
    @course = Course.new
  end

  # GET /subjects/1/edit
  def edit
  end
  # POST /subjects
  # POST /subjects.json
  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Subject was successfully created.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subjects/1
  # PATCH/PUT /subjects/1.json
  def update
    respond_to do |format|
      if @course.update(subject_params)
        format.html { redirect_to @course, notice: 'Subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subjects/1
  # DELETE /subjects/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to subjects_url, notice: 'Subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject
      @course = Course.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def course_params
      params.require(:course).permit(:title,:category,:price,:description,:seats,:schedule)
    end
end
