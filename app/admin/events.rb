ActiveAdmin.register Event do  
  controller do
    def scoped_collection
      Event.where(year: "2013")
    end
  end
  
  config.sort_order = "start_time_asc"
  
  index do                            
    column :name                     
    column :start_time        
    column :end_time           
    column :venue
    column :description             
    default_actions                   
  end                                 

  form do |f|                         
    f.inputs "Event Details" do       
      f.input :name                  
      f.input :start_time
      f.input :end_time
      f.input :venue
      f.input :description
      f.input :workshop
      f.input :session
      f.input :year, input_html: { value: "2013" }
    end                               
    f.buttons                         
  end 
  
  filter :name  
end
