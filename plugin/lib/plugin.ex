defmodule Plugin do
  def decode() do
    Poison.decode!("{\"test\": \"hoge\"}")
  end
end
