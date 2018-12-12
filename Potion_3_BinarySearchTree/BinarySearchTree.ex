defmodule BinarySearchTree do
  defstruct value: 0, left: nil, right: nil

  def new value \\ 0 do
    %__MODULE__{ value: value, left: nil, right: nil }
  end

  def add curr=%__MODULE__{ value: val, left: left, right: right }, value do  
    if value < val do
      %{ curr | left: add(left, value) } 
    else
      %{ curr | right: add(right, value) }
    end
  end

  def add _, value do
    new value
  end

  def show curr=%__MODULE__{ value: val, left: left, right: right } do
    if left != nil do
      show left
    end
    IO.puts val
    if right != nil do
      show right
    end
  end
end

tree = BinarySearchTree.new(1)
  |> BinarySearchTree.add(10)
  |> BinarySearchTree.add(15)
  |> BinarySearchTree.add(9)

BinarySearchTree.show tree

