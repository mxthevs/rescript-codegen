type t

type part =
  | Breakpoints
  | ZIndex
  | Spacing
  | Radius

let make: Types.ancestorConfig => t

let generate: (t, part) => t

let print: t => string
