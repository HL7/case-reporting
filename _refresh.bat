@ECHO OFF
SET tooling_jar=tooling-1.4.1-SNAPSHOT-jar-with-dependencies.jar
SET input_cache_path=%~dp0input-cache
SET resources_path=%~dp0/input/resources
SET ig_ini_path=%~dp0/ig.ini

ECHO Checking internet connection...
PING tx.fhir.org -n 1 -w 1000 | FINDSTR TTL && GOTO isonline
ECHO We're offline...
SET fsoption=
GOTO igpublish

:isonline
ECHO We're online, setting publish to the Connectathon sandbox FHIR server
SET fsoption=
REM -fs http://cqm-sandbox.alphora.com/cqf-ruler-r4/fhir/

:igpublish

SET JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8

IF EXIST "%input_cache_path%\%tooling_jar%" (
	ECHO running: JAVA -jar "%input_cache_path%\%tooling_jar%" -RefreshIG -ini="%ig_ini_path%" -rp="%resources_path%" -t -d -p %fsoption%
	JAVA -jar "%input_cache_path%\%tooling_jar%" -RefreshIG -ini="%ig_ini_path%" -rp="%resources_path%" -t -d -p %fsoption%
) ELSE If exist "..\%tooling_jar%" (
	ECHO running: JAVA -jar "..\%tooling_jar%" -RefreshIG -ini="%ig_ini_path%" -rp="%resources_path%" -t -d -p %fsoption%
	JAVA -jar "..\%tooling_jar%" -RefreshIG -ini="%ig_ini_path%" -rp="%resources_path%" -t -d -p %fsoption%
) ELSE (
	ECHO IG Refresh NOT FOUND in input-cache or parent folder.  Please run _updateCQFTooling.  Aborting...
)


PAUSE
