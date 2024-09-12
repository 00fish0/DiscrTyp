#let min(..args) = {
  for (i,arg) in args.pos().enumerate() {
    if i == 0 [
      $m_#arg$
    ] else [
      $or m_#arg$
    ]
  }
  // [$#args.pos().map(str).map( it => "m_" + it).join(" and ")$]
}

#let max(..args) = {
  for (i,arg) in args.pos().enumerate() {
    if i == 0 [
      $M_#arg$
    ] else [
      $and M_#arg$
    ]
  }
  // [$#args.pos().map(str).map( it => "m_" + it).join(" and ")$]
}

#let tlt = it => {
  if "label" in it.fields() and it.label == <tlt> {
    return it
  }

  let cols = if type(it.columns) == int {
    it.columns
  } else {
    it.columns.len()
  }

  let rows = calc.ceil(it.children.len() / cols)

  let fields = it.fields()
  fields.remove("children")

  return [
    #table(..fields,
      ..it.children,
      table.hline(y: 0, stroke: 1.5pt),
      table.hline(y: 1),
      table.hline(y: rows, stroke: 1.5pt)
    ) <tlt>
  ]
}