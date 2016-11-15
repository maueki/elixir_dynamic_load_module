defmodule Plugin do
  def decode() do
    val = Application.get_env(:plugin, :config_value)
    Poison.decode!("{\"test\": \"#{val}\"}")
  end
end
