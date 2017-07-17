require 'test_helper'

class VideoModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video_model = video_models(:one)
  end

  test "should get index" do
    get video_models_url
    assert_response :success
  end

  test "should get new" do
    get new_video_model_url
    assert_response :success
  end

  test "should create video_model" do
    assert_difference('VideoModel.count') do
      post video_models_url, params: { video_model: { adult: @video_model.adult, backdrop_path: @video_model.backdrop_path, belongs_to_collection: @video_model.belongs_to_collection, budget: @video_model.budget, homepage: @video_model.homepage, id: @video_model.id, imdb_id: @video_model.imdb_id, original_language: @video_model.original_language, original_title: @video_model.original_title, overview: @video_model.overview, popularity: @video_model.popularity, poster_path: @video_model.poster_path, release_date: @video_model.release_date, revenue: @video_model.revenue, runtime: @video_model.runtime, status: @video_model.status, tagline: @video_model.tagline, video: @video_model.video, vote_average: @video_model.vote_average, vote_count: @video_model.vote_count } }
    end

    assert_redirected_to video_model_url(VideoModel.last)
  end

  test "should show video_model" do
    get video_model_url(@video_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_video_model_url(@video_model)
    assert_response :success
  end

  test "should update video_model" do
    patch video_model_url(@video_model), params: { video_model: { adult: @video_model.adult, backdrop_path: @video_model.backdrop_path, belongs_to_collection: @video_model.belongs_to_collection, budget: @video_model.budget, homepage: @video_model.homepage, id: @video_model.id, imdb_id: @video_model.imdb_id, original_language: @video_model.original_language, original_title: @video_model.original_title, overview: @video_model.overview, popularity: @video_model.popularity, poster_path: @video_model.poster_path, release_date: @video_model.release_date, revenue: @video_model.revenue, runtime: @video_model.runtime, status: @video_model.status, tagline: @video_model.tagline, video: @video_model.video, vote_average: @video_model.vote_average, vote_count: @video_model.vote_count } }
    assert_redirected_to video_model_url(@video_model)
  end

  test "should destroy video_model" do
    assert_difference('VideoModel.count', -1) do
      delete video_model_url(@video_model)
    end

    assert_redirected_to video_models_url
  end
end
