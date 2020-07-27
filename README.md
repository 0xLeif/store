# store

Store things!

Examples

`./store`
```
Error: Missing expected argument '<name>'

USAGE: store [--get] <name> [<value>]

ARGUMENTS:
  <name>
  <value>

OPTIONS:
  --get
  -h, --help              Show help information.
```

### Store a *value* with a *key*
`./store api-key value-to-store`
```
Saving: Optional("value-to-store") for Key 'api-key'
```

### Get the *value* from a stored *key*
`./store api-key --get`
```
(api-key): value-to-store
```

### Store `nil` for the *key*
`./store api-key`
```
Saving: nil for Key 'api-key'
```

### Get the `nil` from a *key*
`./store api-key --get`
```
No value stored for Key 'api-key'
```
