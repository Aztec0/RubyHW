ActiveAdmin.register Product do

  permit_params :name, :description, :price, :category_id, :image

  form do |f|
    f.inputs do
      f.input :category, as: :select, collection: Category.all, :input_html => { :class => 'chzn-select', :width => 'auto', "data-placeholder" => 'Click' }
      f.input :name
      f.input :description
      f.input :price
      f.input :image, as: :file
    end
    f.actions
  end
end
