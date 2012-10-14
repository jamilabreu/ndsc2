ActiveAdmin.register Speaker do
  controller do
    def scoped_collection
      Speaker.where(year: "2013")
    end
  end
  
  config.sort_order = "name_asc"
  
  index do
    column :name
    column :bio
    column :image
    default_actions
  end

  form do |f|                         
    f.inputs "Speaker Details" do       
      f.input :name                  
      f.input :bio               
      f.input :image, :input_html => { value: "brown/speakers/firstname-lastname.jpg" }
      f.input :year, :input_html => { value: "2013" }
    end                               
    f.buttons                         
  end 
      
  filter :name 
end
