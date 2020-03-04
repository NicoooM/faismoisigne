# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    class Ability
      include CanCan::Ability
    
      def initialize(user)
        can :read, :all 
        if user.present? 
          can :manage, Event, user_id: user.id,
          can :participate, Event do |event|
            event.user_id != user.id
          end
          if user.admin?
            can :manage, :all
            cannot :participate, Event, user_id: user.id
          end
        end
      end
    end
    def ensure_admin!
      raise CanCan::AccessDenied unless current_user.admin?
    end
  
    config.before_action :ensure_admin!
  end
end

