module OrdersHelper

  def status status 
    if status == false
           "In progress"
         elsif status == true 
          "Fulfilled"
        else 
          "WTF is going on"
        end  
  end 
end
