module UsersHelper
  def full_name_profile
    @user.prenom + " " +@user.nom
  end 
end
