json.extract! recipe, :id, :recipe_name, :Prep_time, :cook_time, :servings, :ingredients, :instruc, :youtube_id, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
