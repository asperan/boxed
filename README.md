# boxed

Boxed provides an wrapping objectification for some primitive types of D.

The boxed types are:
* bool
* (signed and unsigned) (short, int and long)
* float and double
* char types and string

The public template `Boxed` allows an easy implementation of any type you can need, and the mixin `BoxedAlias` provides a scoped `AliasThis` to the wrapped value.

