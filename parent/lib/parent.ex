defmodule Parent do
  def run() do

    {compile_path, plugin_mod} = Mix.Project.in_project(:plugin, "../plugin", [], fn _ ->
      Mix.Tasks.Loadconfig.run([])
      Mix.Tasks.Deps.Loadpaths.run([])
      {Mix.Project.compile_path, Mix.Project.config[:plugin_mod]}
    end)

    Code.prepend_path(compile_path)
    Code.ensure_loaded(plugin_mod)

    apply(Plugin, :decode, [])
  end

end
