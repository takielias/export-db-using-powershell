### Export MySql DB using Windows PowerShell

Open your PowerShell as Administrator

![Screenshot_1](https://user-images.githubusercontent.com/38932580/90098723-b0217800-dd5a-11ea-9ef4-ec4c63c2a2c6.png)

Edit _export-db.ps1_ using notepad or any other text editor.
Set **$MySQLPath** , **$Username** , **$Password** and **$OutputDrive**

Run the following command one by one

- `Set-ExecutionPolicy RemoteSigned`
- `A`
- `& "Full Path of export-db.ps1"`

![Screenshot_2](https://user-images.githubusercontent.com/38932580/90099352-0fcc5300-dd5c-11ea-9e0a-26a1e41475a6.png)

You May skip any DB using `$Databases.Remove`
Modify _export-db.ps1_
```[void]$Databases.Remove("information_schema")
[void]$Databases.Remove("performance_schema")
[void]$Databases.Remove("mysql")
```

Thanks
