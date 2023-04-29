start /D "F:\coding tools\installed" MongoDBCompass.exe

mongod --dbpath=F:\coding tools\mongodb_path  
@REM "mongod --dbpath=F:\coding tools\mongodb_path  >text.txt" to take the output into a file

@REM SETX PATH "C:\Program Files\MongoDB\Server\4.4\bin"
@REM Using cmd set this path as an environment variable
