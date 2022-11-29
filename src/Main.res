type configModule = {default: Types.ancestorConfig}

@val external importModule: string => Js.Promise.t<configModule> = "import"

let loadConfig = async () => {
  let configMod = await importModule("../config.js")
  configMod.default
}

let go = async () => {
  let config = await loadConfig()

  Codegen.make(config)
  ->Codegen.generate(Breakpoints)
  ->Codegen.generate(ZIndex)
  ->Codegen.generate(Spacing)
  ->Codegen.generate(Radius)
  ->Codegen.print
  ->Js.log
}

let _ = go()
