```csv
| sudo dnf update           | Update sistem and apps                    | 
| sudo dnf upgrade --refresh| Refresh metadata dan Upgrade Sistem       | 
| sudo dnf install <packet> | Install new app                           | 
| sudo dnf remove <packet>  | Remove app                                | 
| sudo dnf autoremove       | Remove unused dependencies                | 
| dnf search <packet>       | Search app in the repository              | 
| dnf info <packet>         | View detailed information of an app       | 
| dnf list installed        | View list of all installed apps           | 
| dnf history               | View installation / uninstallation history| 
| sudo dnf history undo <id>| Undo based on ID from dnf history         | 
| sudo dnf clean all        | Clean all repository cache                |
```