require 'test_helper'

class ChampionshipsControllerTest < ActionController::TestCase
  setup do
    @championship = championships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:championships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create championship" do
    assert_difference('Championship.count') do
      post :create, championship: { events: @championship.events, fight_played: @championship.fight_played, fight_won: @championship.fight_won, group: @championship.group, medal_b: @championship.medal_b, medal_g: @championship.medal_g, medal_n: @championship.medal_n, medal_s: @championship.medal_s, name: @championship.name, poomsae_paticipation: @championship.poomsae_paticipation, rewards: @championship.rewards, type: @championship.type, weight_category: @championship.weight_category }
    end

    assert_redirected_to championship_path(assigns(:championship))
  end

  test "should show championship" do
    get :show, id: @championship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @championship
    assert_response :success
  end

  test "should update championship" do
    patch :update, id: @championship, championship: { events: @championship.events, fight_played: @championship.fight_played, fight_won: @championship.fight_won, group: @championship.group, medal_b: @championship.medal_b, medal_g: @championship.medal_g, medal_n: @championship.medal_n, medal_s: @championship.medal_s, name: @championship.name, poomsae_paticipation: @championship.poomsae_paticipation, rewards: @championship.rewards, type: @championship.type, weight_category: @championship.weight_category }
    assert_redirected_to championship_path(assigns(:championship))
  end

  test "should destroy championship" do
    assert_difference('Championship.count', -1) do
      delete :destroy, id: @championship
    end

    assert_redirected_to championships_path
  end
end
