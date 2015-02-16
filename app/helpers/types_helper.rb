module TypesHelper

  def type_name id
    Type.find(id).name
  end

end
