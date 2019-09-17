## Usage

### mssql-cli

```
% mssql-cli -S host -U user -P pass -d db
```
> .env の設定が正しければ mssql-cli のみで接続可能

```
> \ld # list databases
> \lt # list tables
```

see below:  
https://github.com/dbcli/mssql-cli/blob/master/doc/usage_guide.md

### sqlcmd

```
% sqlcmd -S host -d db -U user -P pass
```

### sqlpackage

```
$ sqlpackage /a:Extract /scs:$SQLPACKAGE_CONN /tf:./dump/dump.dacpac
```

see below:  
https://docs.microsoft.com/ja-jp/sql/tools/sqlpackage?view=sql-server-2017
