class Userform
  include ActiveModel::Model
  attr_accessor :name, :email, :money, :location, :password, :password_confirmation, :authenticity_token

  def save
    user = User.create(name: name, email: email, password: password,password_confirmation: password_confirmation)
    # 住所の情報を保存
    # DesiredConditon.create(money: money, location: location)
    # 住所の情報を保存
    DesiredConditon.create(money: money, location: location, user_id: user.id)
  end
end