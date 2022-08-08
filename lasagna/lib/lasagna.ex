defmodule Lasagna do
  @prep_time_per_lasagna_layer 2
  @lasagna_oven_time 40

  @doc """
  Argument(s): 0
  Returns the time in minutes the lasagna should be in the oven.
  """
  @spec expected_minutes_in_oven :: 40
  def expected_minutes_in_oven(), do: @lasagna_oven_time

  @doc """
  Argument(s): the time in minutes lasagna has been in the oven
  Returns time in minutes the lasagna still has to remain in the oven.
  """
  @spec remaining_minutes_in_oven(number) :: number
  def remaining_minutes_in_oven(time_in_oven) do
    expected_minutes_in_oven() - time_in_oven
  end

  @doc """
  Argument(s): no of lasagna layers
  Returns the time spent preparing a lasagna.
  """
  @spec preparation_time_in_minutes(number) :: number
  def preparation_time_in_minutes(lasagna_layers) do
    lasagna_layers * @prep_time_per_lasagna_layer
  end

  @doc """
  Argument(s): no of lasagna layers, the time in minutes lasagna has been in the oven
  Returns how many minutes in total you've worked on cooking the lasagna.
  """
  @spec total_time_in_minutes(number, number) :: number
  def total_time_in_minutes(lasagna_layers, time_in_oven) do
    preparation_time_in_minutes(lasagna_layers) + time_in_oven
  end

  @doc """
  Argument(s): 0
  Returns a message indicating that the lasagna is ready to eat.
  """
  @spec alarm :: String.t()
  def alarm(), do: "Ding!"
end
