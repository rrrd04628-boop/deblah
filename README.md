دليل تشغيل مختصر — Webly Flutter

نسخة سريعة: تثبيت المتطلبات ثم تشغيل التطبيق

إصدارات مطلوبة (مستخرَجة من المشروع):
- Flutter/Dart: استخدم Flutter الذي يوفر Dart >= 3.9.0. (سجل المشروع يشير إلى `flutter >=3.35.0`)
- Gradle wrapper: 8.11.1
- Android Gradle Plugin (AGP): 8.9.1
- Kotlin plugin: 2.1.0
- JDK (Java): 21 (مطلوب لِـ targetCompatibility = 21)
- compileSdk / targetSdk: 36
- minSdk: 24
- NDK (إن لزم): 29.0.14033849

خطوات سريعة للإعداد (Windows, PowerShell):
1) إعداد بيئة:
```powershell
# ضبط JAVA_HOME على مسار JDK 21
setx JAVA_HOME "C:\\path\\to\\jdk-21"; $env:JAVA_HOME = "C:\\path\\to\\jdk-21"
# تأكد من تثبيت Flutter وAndroid SDK ووجودهما في PATH
flutter --version
flutter doctor -v
```
2) داخل جذر المشروع:
```powershell
cd "c:\\Users\\redwan\\Desktop\\gg\\webly_flutter2"
flutter clean
flutter pub get
```
3) إعداد `local.properties` (إن لم يُنشأ تلقائياً):
- يجب أن يحتوي على مسار Flutter وAndroid SDK، مثال:
```
flutter.sdk=C:\\path\\to\\flutter
sdk.dir=C:\\path\\to\\Android\\sdk
```
4) تشغيل للتطوير:
```powershell
# على جهاز Android متصل أو محاكي
flutter run
# على Chrome (ويب)
flutter run -d chrome
```
5) بناء للإنتاج (مثال لنظام Android):
```powershell
flutter build apk --release
```


