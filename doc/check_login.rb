  def check_login
    if session[:user_id]
      render :json =>{msg: '', success: 'OK'}
      return
    else
      render :json =>{msg: '请登录', success: 'NG'}
      return
    end 

    end 


