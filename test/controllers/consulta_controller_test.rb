require 'test_helper'

class ConsultaControllerTest < ActionController::TestCase
  setup do
    @consultum = consulta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consulta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consultum" do
    assert_difference('Consultum.count') do
      post :create, consultum: { atendente_id: @consultum.atendente_id, convenio_id: @consultum.convenio_id, data_hora: @consultum.data_hora, efetuado: @consultum.efetuado, pagamento: @consultum.pagamento, pessoa_id: @consultum.pessoa_id, valor: @consultum.valor }
    end

    assert_redirected_to consultum_path(assigns(:consultum))
  end

  test "should show consultum" do
    get :show, id: @consultum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @consultum
    assert_response :success
  end

  test "should update consultum" do
    patch :update, id: @consultum, consultum: { atendente_id: @consultum.atendente_id, convenio_id: @consultum.convenio_id, data_hora: @consultum.data_hora, efetuado: @consultum.efetuado, pagamento: @consultum.pagamento, pessoa_id: @consultum.pessoa_id, valor: @consultum.valor }
    assert_redirected_to consultum_path(assigns(:consultum))
  end

  test "should destroy consultum" do
    assert_difference('Consultum.count', -1) do
      delete :destroy, id: @consultum
    end

    assert_redirected_to consulta_path
  end
end
