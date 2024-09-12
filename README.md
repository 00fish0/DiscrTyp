# DiscrTyp

Typst template for discrete mathematics homework.

# Usage:

```typ
#import "template/template.typ": *
#import "template/utils/discr.typ": *

#show: it => set_style(it)
```

# Utils

- `min` `max`
```typ
#min(0,1,4,5)
```
![min_max](images/image.png)

- `tlt`: Three Line Table
```typ
#import "template/utils/discr.typ": *

#set table(stroke: none)
#show table: tlt
```
![tlt](images/image2.png)