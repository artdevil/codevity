ActiveAdmin.register Blog do
  menu :parent => "Blog Area"
  form do |f|
    f.inputs "Details" do
      f.input :category
      f.input :title
      f.input :author, :input_html => {:value => current_admin_user.email, :type => "hidden"}, :label => false
      f.label :description
      f.input :description, :as => :ckeditor, :label => false
      f.input :tag
    end
    f.buttons
  end
end
