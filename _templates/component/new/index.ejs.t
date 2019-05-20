---
to: src/components/<%= name %>/index.tsx
---
<% const nameBase = connected ? name + "Base" : name -%>
<% if(useState) { -%>
import React, { useState } from "react"
<% if(connected) { -%>
import { connect } from "react-redux"
import { MapStateToProps } from "../../types/MapStateToProps"
<% } -%>

type Props = Readonly<{ children?: React.ReactNode }>

export function <%= nameBase %>({ children }: Props) {
  const [count, setCount] = useState(0)
  return (
    <div className="<%= name %>">
      <p>You clicked {count} times</p>
      <button onClick={() => setCount(count + 1)}>Click me</button>
      {children}
    </div>
  )
}
<% } else { -%>
import React from "react"
<% if(connected) { -%>
import { connect } from "react-redux"
import { MapStateToProps } from "../../types/MapStateToProps"
<% } -%>

type Props = Readonly<{ children?: React.ReactNode }>

export function <%= nameBase %>({ children }: Props) {
  return <div className="<%= name %>">{children}</div>
}
<% } -%>
<% if(connected) { -%>

interface PropsOuter {}

const mapStateToProps: MapStateToProps<Props, PropsOuter> = (/* state, propsOuter */) => {
  return {}
}

const mapDispatchToProps = {}

export const <%= name %> = connect(
  mapStateToProps,
  mapDispatchToProps
)(<%= nameBase %>)
<% } -%>