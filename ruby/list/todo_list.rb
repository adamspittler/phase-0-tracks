class TodoList
  def initialize(x)
  @x = x
  end
    def get_items
   @x
  end
  def add_item(y)
    @x << y
    @x
  end
  def delete_item(z)
    @x.delete(z)
    @x
  end
  def get_item(w)
    @x[w]
  end 
end