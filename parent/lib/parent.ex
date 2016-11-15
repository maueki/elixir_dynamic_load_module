defmodule Parent do
  def run() do

    Mix.Project.in_project(:plugin, "../plugin", [], fn _ ->
      Mix.Tasks.Deps.Loadpaths.run([])
    end)

    Code.prepend_path("../plugin/_build/dev/lib/plugin/ebin")

    Code.ensure_loaded(Plugin)

    apply(Plugin, :decode, [])
  end

end
