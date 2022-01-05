// TODO: handle indices.
// See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp/exec

type t = Js.Re.t

module Result = {
  type t = array<option<string>>
  @get_index external fullMatch: (t, @as(0) _) => string = ""
  @send external matches: (t, @as(1) _) => array<string> = "slice"
  @get external index: t => int = "index"
  @get external input: t => string = "input"
  @get external groups: t => option<{..}> = "groups"
}

@new external fromString: string => t = "RegExp"
@new external fromStringWithFlags: (string, ~flags: string) => t = "RegExp"

@send external test: (t, string) => bool = "test"
@send @return(null_to_opt) external exec: (t, string) => option<Result.t> = "exec"

@get external lastIndex: t => int = "lastIndex"
@get external ignoreCase: t => bool = "ignoreCase"
@get external global: t => bool = "global"
@get external multiline: t => bool = "multiline"
@get external source: t => bool = "source"
@get external sticky: t => bool = "sticky"
@get external unicode: t => bool = "unicode"
