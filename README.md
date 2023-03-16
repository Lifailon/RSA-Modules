# RSA-Modules
Подборка модулей, которая применяется в **[RSA](https://github.com/Lifailon/RSA)**.

### Get-ARP
Модуль для поиска MAC-адреса выключенного устройства, используя ARP-таблицы других хостов.

![Image alt](https://github.com/Lifailon/RSA-Modules/blob/rsa/Screen/Get-ARP-Search-MAC.jpg)

### Get-Size
Модуль для отображения общего и свободного кол-ва оперативной памяти (**-memory**) и пространства логических дисков (**-disk**).

![Image alt](https://github.com/Lifailon/RSA-Modules/blob/rsa/Screen/Get-Size.jpg)

### Get-Update
Модуль для отображения списка обновлений на локальном или удаленном компьютере с возможностью его удаления в DISM (ключ **-delete**)

![Image alt](https://github.com/Lifailon/RSA-Modules/blob/rsa/Screen/Get-Update.jpg)

### Get-Broker
`Get-Broker localhost -r` вывод списка всех пользователей подключенных через RDCB с возможностью удаленного подключения через RDP-Shadow \
`Get-Broker localhost -d` завершение сеанса пользователя \
`Get-Broker localhost -c` отобразить список всех коллекций и программного обспечения \
`Get-Broker localhost -h` список хостов и ролей в ферме

### Get-EventTS
`Get-EventTS localhost -connect` # список пользователей, которые производили удаленную попытку RDP-подключения к хосту \
`Get-EventTS localhost -logon` \
`Get-EventTS localhost -logoff` \
`Get-EventTS localhost -disconnect` \
`Get-EventTS localhost -reconnect`
