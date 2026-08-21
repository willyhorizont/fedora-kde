```csv
| sudo dnf update                                                                                             | Update sistem and apps                    | 
| sudo dnf upgrade --refresh                                                                                  | Refresh metadata dan Upgrade Sistem       | 
| sudo dnf install <packet>                                                                                   | Install new app                           | 
| sudo dnf remove <packet>                                                                                    | Remove app                                | 
| sudo dnf autoremove                                                                                         | Remove unused dependencies                | 
| dnf search <packet>                                                                                         | Search app in the repository              | 
| dnf info <packet>                                                                                           | View detailed information of an app       | 
| dnf list installed                                                                                          | View list of all installed apps           | 
| dnf history                                                                                                 | View installation / uninstallation history| 
| sudo dnf history undo <id>                                                                                  | Undo based on ID from dnf history         | 
| sudo dnf clean all                                                                                          | Clean all repository cache                |
| ps eo pid,ppid,cmd,%mem --sort=-%mem | head -n 6                                                            | Get Top 5 Heavy RAM Eater                 |
| plasmashell --replace & disown                                                                              | Refresh Desktop                           |
| update-desktop-database ~/.local/share/applications && sudo update-desktop-database /usr/share/applications | Update Database Desktop Applications      |
| kbuildsycoca6 --noincremental || kbuildsycoca5 --noincremental                                              | Refresh cache service menu                |
| pkill -f plasma-discover && sudo pkill -f packagekitd                                                       | Force stop Discover                       |
| sudo systemctl stop packagekit && sudo systemctl mask packagekit                                            | Stop and disable Discover                 |
```
