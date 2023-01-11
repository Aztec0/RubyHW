ActiveAdmin.register Product do

  permit_params :name, :description, :price, :image, :category_id

end
