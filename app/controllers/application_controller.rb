class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    # ログインしない場合、ログイン画面に遷移させてくれるコード

    before_action :configure_permitted_parameters, if: :devise_controller?
    # beforeアクションのため、事前に実行が走り、指定したメソッドを呼び出す    

    private
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end
end
