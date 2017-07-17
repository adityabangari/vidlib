class VideoModelsController < ApplicationController
  before_action :set_video_model, only: [:show, :edit, :update, :destroy]

  # GET /video_models
  # GET /video_models.json
  def index
    @video_models = VideoModel.all
  end

  # GET /video_models/1
  # GET /video_models/1.json
  def show
  end

  # GET /video_models/new
  def new
    @video_model = VideoModel.new
  end

  # GET /video_models/1/edit
  def edit
  end

  # POST /video_models
  # POST /video_models.json
  def create
    @video_model = VideoModel.new(video_model_params)

    respond_to do |format|
      if @video_model.save
        format.html { redirect_to @video_model, notice: 'Video model was successfully created.' }
        format.json { render :show, status: :created, location: @video_model }
      else
        format.html { render :new }
        format.json { render json: @video_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_models/1
  # PATCH/PUT /video_models/1.json
  def update
    respond_to do |format|
      if @video_model.update(video_model_params)
        format.html { redirect_to @video_model, notice: 'Video model was successfully updated.' }
        format.json { render :show, status: :ok, location: @video_model }
      else
        format.html { render :edit }
        format.json { render json: @video_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_models/1
  # DELETE /video_models/1.json
  def destroy
    @video_model.destroy
    respond_to do |format|
      format.html { redirect_to video_models_url, notice: 'Video model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_model
      @video_model = VideoModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_model_params
      params.require(:video_model).permit(:adult, :backdrop_path, :belongs_to_collection, :budget, :homepage, :id, :imdb_id, :original_language, :original_title, :overview, :popularity, :poster_path, :release_date, :revenue, :runtime, :status, :tagline, :video, :vote_average, :vote_count)
    end
end
