class CtsinitsController < ApplicationController


  def index

    if Admin.count == 0
      Admin.create(name:"admin",password:"admin",password_confirmation:"admin")
    end

    if Cfg.count == 0
      Cfg.create(sale_tel:"0877-123456789",email:"xxxxxxxxxxx@xxxx.xxx",company_name:"xxxxxxxxxxxxxxxx",address:"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",content:"xxxxxxxxxxxxxxxxxxxxxxxxxxxx")
    end

  end

  def new

  end

  def create

  end



end
