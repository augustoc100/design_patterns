require_relative 'component'
require_relative 'leaf'

def finish
  p '--------'
end


def simple_composite
  composite = Component.new('composite')
  composite.add(Leaf.new)

  composite.execute
  finish
end

def big_composite
  big_component = Component.new('big_component')
  component = Component.new('component')
  component.add(Leaf.new)
  component.add(Leaf.new)

  big_component.add(Leaf.new)
  big_component.add(component)

  big_component.execute
  finish
end

def super_component
  super_component = Component.new('super_component')
  big_component = Component.new('big_component')
  component = Component.new('component')
  component.add(Leaf.new)
  component.add(Leaf.new)

  big_component.add(Leaf.new)
  big_component.add(component)
  super_component.add(big_component)

  super_component.execute
  finish
end

simple_composite
big_composite
super_component
