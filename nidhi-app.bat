::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDpaRw2WPVeeCaIS5Of66/m7rkIaW6J3KcaV07eBQA==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSzk=
::cBs/ulQjdF25
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQIeIR9cRUShMXj6J6UMiA==
::eg0/rx1wNQPfEVWB+kM9LVsJDCqLOGOzRpYR+6ja//rn
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWHeN8Eo5CxZHLA==
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATE2ks0IBJ3QRfi
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDpaRw2WPVeeA6YX/Ofr0+SOpkUUGeMvaMHewrHu
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off

set ScriptPath=%~dp0
set ThisPCMAC=
set FoundMAC=
set enctval=
echo.
echo ScriptPath = %ScriptPath%


for /f "tokens=3 delims=," %%a in ('"getmac /v /fo csv | findstr Ethernet"') do set ThisPCMAC=%%a
echo.
echo MAC address of this computer is %ThisPCMAC%

set str=%ThisPCMAC:-=8743% 

start chrome http://localhost:8081/application?JSESSIONID=%str% 

:end
echo.
echo %~fp0 ended.
pause