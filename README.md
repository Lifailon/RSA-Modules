# RSA-Modules
Выделенные модули, которые используются в **[RSA](https://github.com/Lifailon/RSA)**.

### Get-ARP
Модуль для просмотра на локальном или удаленном хосте всей **ARP-таблицы** с выводом в **PSCustomObject**. Применяется для поиска MAC-адреса выключенного устройства, используя ARP-таблицы других хостов. В примере на скриншоте хост недоступен, вначале ищем его по имени в локальной таблице, потом на других серверах.

![Image alt](https://github.com/Lifailon/RSA-Modules/blob/rsa/Screen/Get-ARP-Search-MAC.jpg)

### Get-Size
Модуль для отображения общего и свободного кол-ва оперативной памяти (**-memory**) и пространства логических дисков (**-disk**).

![Image alt](https://github.com/Lifailon/RSA-Modules/blob/rsa/Screen/Get-Size.jpg)

### Get-Update
Модуль для отображения списка обновлений на локальном или удаленном компьютере с возможностью его удаления в DISM (**-delete**).

![Image alt](https://github.com/Lifailon/RSA-Modules/blob/rsa/Screen/Get-Update.jpg)

### Get-RemoteDNS
Модуль для удаленного просмотра на DC (не требует установки модуля из состава RSAT) списка всех DNS зон и дочерних записей выбранной зоны с возможностью удаления выбранной записи.

![Image alt](https://github.com/Lifailon/RSA-Modules/blob/rsa/Screen/Get-RemoteDNS.jpg)

### Get-Soft
Модуль для просмотра списка установленных программ на локальном и удаленном хосте, с возможностью их удаления. \
`Get-Soft -wmi` использовать WMI \
`Get-Soft -package` использовать Get-Package

### Get-Uptime
Модуль для локального и удаленного просмотра беспрерывного времени работы хоста и даты последней загрузки.

### Get-UserProcess
Модуль для отображения списка всех пользовательских процессов на локальном или удаленном сервере с возможностью их завершения.

### Get-Netstat
Модуль для вывода списка слушающих портов и открытых TCP-соединений с отображением имени удаленного хоста (nslookup) и используемого процесса.

### Get-Broker
`Get-Broker localhost -r` список всех пользователей подключенных через RDCB с возможностью удаленного подключения по средствам RDP-Shadow \
`Get-Broker localhost -d` список всех пользователей с возможностью завершение сеанса пользователя \
`Get-Broker localhost -c` отобразить список всех коллекций и программного обспечения на выбранной \
`Get-Broker localhost -h` список хостов и ролей в ферме

### Get-EventTS
`Get-EventTS localhost -connect` # список пользователей, которые производили удаленную попытку RDP-подключения к хосту \
`Get-EventTS localhost -logon` \
`Get-EventTS localhost -logoff` \
`Get-EventTS localhost -disconnect` \
`Get-EventTS localhost -reconnect`
