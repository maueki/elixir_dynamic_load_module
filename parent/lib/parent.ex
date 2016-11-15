defmodule Parent do
  def run() do
    Code.prepend_path("../plugin/_build/dev/lib/plugin/ebin")

    Code.ensure_loaded(Plugin)

    apply(Plugin, :decode, [])
  end

end
