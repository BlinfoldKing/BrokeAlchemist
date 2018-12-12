defmodule LinkedList do
  defstruct value: 0, next: nil, index: 0

  def new value \\ 0, index \\ 0 do
    %__MODULE__{ value: value, index: index}
  end

  def push curr=%__MODULE__{ next: next, index: index }, value do
    if next != nil do
      %{ curr | next: push(next, value) }
    else
      %{ curr | next: new(value, index+1) }
    end
  end

  def delete curr=%__MODULE__{ next: next, value: value }, delVal do
    if value == delVal do
      next 
    else
      %{ curr | next: delete(next, delVal) }
    end
  end

  def show curr=%__MODULE__{ next: next, value: value } do
    IO.puts value
    if next != nil do
      show next
    end
  end
end

list = LinkedList.new
  |> LinkedList.push(1)
  |> LinkedList.push(3)
  |> LinkedList.push(5)
  |> LinkedList.push(7)
  |> LinkedList.delete(3)
  |> LinkedList.show


