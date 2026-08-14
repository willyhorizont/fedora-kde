# fedora-kde
My Fedora KDE ricing

My Clock format:  
```MM / 12 'months' | dd / $total_days 'days' | ddd, dd MMM yyyy | hh:mm:ss | hh:mm:ss AP```

KDE Plasma panel clock with my clock format.  

Lockscreen clock with my clock format.  

open ```/etc/dnf/dnf.conf``` and add this:  
```
fastestmirror=True
```

open ```/etc/locale.conf``` and add this:
```
LC_TIME="C.UTF-8"
```
