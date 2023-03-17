# RSA-Modules
Подборка модулей, которые используются в **[RSA](https://github.com/Lifailon/RSA)**.

### [Export-Excel](https://github.com/Lifailon/RSA-Modules/blob/rsa/Convert-Excel/Export-Excel.psm1)
Модуль для экспорта объекта PowerShell в Excel-файл.

### [Import-Excel](https://github.com/Lifailon/RSA-Modules/blob/rsa/Convert-Excel/Import-Excel.psm1) (beta)
Модуль для импорта Excel-файла в Hashtable.

![Image alt](https://github.com/Lifailon/RSA-Modules/blob/rsa/Convert-Excel/Example.jpg)

### [Get-ARP](https://github.com/Lifailon/RSA-Modules/blob/rsa/Modules/Get-ARP.psm1)
Модуль для просмотра на локальном или удаленном хосте всей **ARP-таблицы** с выводом в **PSCustomObject**. Применяется для поиска MAC-адреса выключенного устройства, используя ARP-таблицы других хостов. В примере на скриншоте хост недоступен, вначале ищем его по имени в локальной таблице, потом на других серверах.

![Image alt](https://github.com/Lifailon/RSA-Modules/blob/rsa/Screen/Get-ARP-Search-MAC.jpg)

### [Get-Size](https://github.com/Lifailon/RSA-Modules/blob/rsa/Modules/Get-Size.psm1)
Модуль для отображения общего и свободного объема оперативной памяти (**-memory**) и логических дисков (**-disk**).

![Image alt](https://github.com/Lifailon/RSA-Modules/blob/rsa/Screen/Get-Size.jpg)

### [Get-Update](https://github.com/Lifailon/RSA-Modules/blob/rsa/Modules/Get-Update.psm1)
Модуль для отображения списка обновлений на локальном или удаленном компьютере с возможностью его удаления в DISM (**-delete**).

![Image alt](https://github.com/Lifailon/RSA-Modules/blob/rsa/Screen/Get-Update.jpg)

### [Get-RemoteDNS](https://github.com/Lifailon/RSA-Modules/blob/rsa/Modules/Get-RemoteDNS.psm1)
Модуль для удаленного просмотра на DC (не требует установки модуля из состава RSAT) списка всех DNS зон и дочерних записей выбранной зоны с возможностью удаления выбранной записи.

![Image alt](https://github.com/Lifailon/RSA-Modules/blob/rsa/Screen/Get-RemoteDNS.jpg)

### [Get-Soft](https://github.com/Lifailon/RSA-Modules/blob/rsa/Modules/Get-Soft.psm1)
Модуль для просмотра списка установленных программ на локальном и удаленном хосте, с возможностью их удаления. \
`Get-Soft -wmi` использовать WMI \
`Get-Soft -package` использовать Get-Package

### [Get-Uptime](https://github.com/Lifailon/RSA-Modules/blob/rsa/Modules/Get-Uptime.psm1)
Модуль для локального и удаленного просмотра беспрерывного времени работы хоста и даты последней загрузки.

### [Get-UserProcess](https://github.com/Lifailon/RSA-Modules/blob/rsa/Modules/Get-UserProcess.psm1)
Модуль для отображения списка всех пользовательских процессов на локальном или удаленном сервере с возможностью их завершения.

### [Get-Netstat](https://github.com/Lifailon/RSA-Modules/blob/rsa/Modules/Get-Netstat.psm1)
Модуль для вывода списка слушающих портов и открытых TCP-соединений с отображением имени удаленного хоста (nslookup) и используемого процесса.

### [Get-Broker](https://github.com/Lifailon/RSA-Modules/blob/rsa/Modules/Get-Broker.psm1)
`Get-Broker localhost -r` список всех пользователей подключенных через RDCB с возможностью удаленного подключения по средствам RDP-Shadow \
`Get-Broker localhost -d` список всех пользователей с возможностью завершение сеанса пользователя \
`Get-Broker localhost -c` отобразить список всех коллекций и программного обспечения на выбранной \
`Get-Broker localhost -h` список хостов и ролей в ферме

### [Get-EventTS](https://github.com/Lifailon/RSA-Modules/blob/rsa/Modules/Get-EventTS.psm1)
`Get-EventTS localhost -connect` # список пользователей, которые производили удаленную попытку RDP-подключения к хосту \
`Get-EventTS localhost -logon` \
`Get-EventTS localhost -logoff` \
`Get-EventTS localhost -disconnect` \
`Get-EventTS localhost -reconnect`
