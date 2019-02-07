ActiveAdmin.register Recipe do


  permit_params :recipe_name, :active , :about_recipe , :Prep_time, :cook_time, :servings, :ingredients, :instruc, :youtube , :image_1 , :image_2  , :image_3  ,:image_4  , :image_5



  index do
    selectable_column

    id_column
    column :recipe_name
    column :active
    column :Prep_time
    column :cook_time
    column :servings

    column :about_recipe do |name|
      div :class => "width" do
        name.about_recipe
      end
    end

    column :ingredients do |name|
      div :class => "width" do
        name.ingredients
      end
    end


    column :instruc do |name|
      div :class => "width" do
        name.instruc
      end
    end

    column :youtube

    column :image_1, sortable: :image_1_file_name do |recipe| link_to recipe.image_1_file_name, recipe.image_1.url end
    column :image_1_updated_at

    column :image_2, sortable: :image_2_file_name do |recipe| link_to recipe.image_2_file_name, recipe.image_2.url end
    column :image_2_updated_at

    column :image_3, sortable: :image_3_file_name do |recipe| link_to recipe.image_3_file_name, recipe.image_3.url end
    column :image_3_updated_at

    column :image_4, sortable: :image_4_file_name do |recipe| link_to recipe.image_4_file_name, recipe.image_4.url end
    column :image_4_updated_at

    column :image_5, sortable: :image_5_file_name do |recipe| link_to recipe.image_5_file_name, recipe.image_5.url end
    column :image_5_updated_at

    actions
  end

  form do |f|
    f.inputs "Add Recipe" do
      f.input :recipe_name ,  required: true
      f.input :active , required: true  , as: :boolean

      f.input :Prep_time ,  required: true
      f.input :cook_time ,  required: true
      f.input :servings,  required: true
      f.input :about_recipe , required: true
      f.input :ingredients ,  required: true
      f.input :instruc , required: true
      f.input :youtube ,  required: true
      f.input :created_at ,  required: true , placeholder: "year"
      f.input :updated_at ,  required: true

      f.input :image_1, required: true, as: :file
      f.input :image_1_file_size ,  required: true
      f.input :image_1_content_type ,  required: true
      f.input :image_1_updated_at ,  required: true

      f.input :image_2, required: true, as: :file
      f.input :image_2_file_size ,  required: true
      f.input :image_2_content_type ,  required: true
      f.input :image_2_updated_at ,  required: true

      f.input :image_3, required: true, as: :file
      f.input :image_3_file_size ,  required: true
      f.input :image_3_content_type ,  required: true
      f.input :image_3_updated_at ,  required: true

      f.input :image_4, required: true, as: :file
      f.input :image_4_file_size ,  required: true
      f.input :image_4_content_type ,  required: true
      f.input :image_4_updated_at ,  required: true

      f.input :image_5, required: true, as: :file
      f.input :image_5_file_size ,  required: true
      f.input :image_5_content_type ,  required: true
      f.input :image_5_updated_at ,  required: true

    end
    f.actions
  end

end
