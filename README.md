# YSXChooseTime_Swift
时间选择器

****
pod search YSXChooseTime_Swift or pod 'YSXChooseTime_Swift', '~> 0.0.1' in your Podfile

use it like this

```
  let datePicker = DateScrollView(frame: CGRect(x: 0, y: 100, width: self.view.bounds.size.width, height: 60))
  datePicker.backgroundColor = UIColor.cyan
  datePicker.chooseDelegate = self
```

the chooseDelegate type is DateScrollViewChooseDateItemDalegate.
It has three methods, they are must be implementation。
```
 // the date is Greenwich time 
 func getNormlDate(date: Date)
 // the date is the user's system time
 func getLocationGMTDate(date: Date)
 // dateInfo is a tuples, dateInfo.0 is the year,dateInfo.1 is the month, dateInfo.2 the day of the week,
 // 1 is monday 7 is sunday, dateInfo.3 is the day of the month
 func getDateInto(dateInfo: (Int, Int, Int, Int))
```
***
Because the DateScrollView inherit from UIScrollView,so you must set the UIViewController.automaticallyAdjustsScrollViewInsets = false

