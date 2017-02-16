class HomeController < ApplicationController
		  
	def addtask
		taskadded=params[:task]
		Task.create(
		    :content=>taskadded,
		    :completed=>false
		  	      )

	end

    def display

		@tasks=Task.all.order(:created_at)
		curuser =User.find(session[:user_id])
		if curuser
			@name=curuser.name
		else 
		    @name=nil	
        end
	end

	def completed
		id=params[:curtask_id]
		obj=Task.find(id)
		obj.completed=!obj.completed
		obj.save
		return  redirect_to '/display'
	end

    def signin_get
    end
         
    def signup_get
    end

	def signin
	    email=params[:email]
	    password=params[:password]
		newuser=User.find_by_email(email)
			   

		if newuser
			if newuser.password==password
				session[:user_id] = User.id
			    return redirect_to '/display'
			      
			else
			    return redirect_to'/wrongpassword'
			end  
        else
            return redirect_to'/signup'
	    end  
			 
    end

    def signup
		name=params[:name]
		email=params[:email]
		password=params[:password]
		User.create(
		    :name=>name ,
		    :email=>email,
		    :password=>password
			   )
		session[:user_id] = User.id

	end	

    def wrongpassword
		
    end



end
