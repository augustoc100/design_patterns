class Component
  def initialize(name)
    @name = name
    @list = []
  end

  def execute
    @list.each(&:execute)

    p @name
  end

  def add(component)
    @list << component
  end

  def remove(component)
    @list.reject! { |c| c == component}
  end
end
