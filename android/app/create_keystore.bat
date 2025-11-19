@echo off
cd /d "C:\Users\redwan\Desktop\gg\webly_flutter2\android\app"
echo Creating signing key...
keytool -genkey -v -keystore deblatna-release-key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias deblatna-key -storepass "fo94ss%&(iw8)-&%" -keypass "fo94ss%&(iw8)-&%" -dname "CN=Unknown, OU=Unknown, O=Unknown, L=Unknown, ST=Unknown, C=Unknown"
echo Key created successfully!
pause
