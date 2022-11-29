type ancestorConfig = {
  breakpoints: Js.Dict.t<int>,
  zIndex: Js.Dict.t<int>,
  spacing: int => int,
  radius: int => int,
}
