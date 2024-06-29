class Ability
    include CanCan::Ability

    def initialize(user)
        user ||= User.new
    
        if user.doctor?
            can :read, Patient
            can :edit, Patient  # Add this line
            can :update, Patient  # Add this line
            can :read, Appointment
            can :destroy, Appointment
        elsif user.receptionist?
            can :manage, Patient
            can :manage, Appointment
        end
    end
end