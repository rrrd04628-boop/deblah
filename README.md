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


UPLOAD NOTES
ادخل علئ هاذي المسارات و سوي استراج الملفات فقط
قائمة الملفات الحسّاسة المكتشفة في المشروع (المسار الكامل):

- C:\Users\redwan\Desktop\gg\webly_flutter2\zextern\deblatna-firebase-adminsdk-fbsvc-362c1b9da7.json
- C:\Users\redwan\Desktop\gg\webly_flutter2\zextern\keys\deblatna-release-key.jks
- C:\Users\redwan\Desktop\gg\webly_flutter2\deblatna-release-key.jks
- C:\Users\redwan\Desktop\gg\webly_flutter2\android\app\deblatna-release-key.jks  (also present in zextern)
- C:\Users\redwan\Desktop\gg\webly_flutter2\android\app\google-services.json
- C:\Users\redwan\Desktop\gg\webly_flutter2\android\app\key.properties
- C:\Users\redwan\Desktop\gg\webly_flutter2\android\local.properties

ملاحظة: بعض ملفات الـ JSON الموجودة في مجلد `build/` وملفات اللغة (`lang/*.json`) ليست بالضرورة "أسرار" — لكنها ظهرت عند البحث لأن البحث شمل كل ملفات JSON. الملفات الحسّاسة الحقيقية موضّحة أعلاه.

حالة الرفع الحالية:
- حاولت الدفع إلى الريموت `origin`، لكن GitHub رفض الدفع بسبب فحص الأسرار (push protection) لوجود ملف service-account JSON في السجل (commit history). لذلك لم يتم تحديث الـ remote.
- حاولت أيضاً إضافة ريموت جديد ورفع إليه، لكن الرابط الذي زودتني به (`https://github.com/rrrd04628-boop/deblah.git`) لم يكن موجوداً أو لم يُسمح بالوصول.

خيارات مقترحة (اختر واحداً وأبلغني للتنفيذ):
1) ارفع كل الملفات باستثناء ملفات الخدمة الحسّاسة (موصى به):
   - أعمل تحديثًا على الريبو محلياً بحيث أُخرج الملفات الحسّاسة من الالتزام الحالي (أتركها محلياً) ثم أدفع الباقي إلى `origin` أو ريموت آخر تختاره.
2) ارفع كل شيء بما في ذلك الملفات الحسّاسة:
   - يجب أن تسمح بدفع هذه الأسرار عبر صفحة الأمان في GitHub (security -> secret scanning -> unblock) أو تعطّل حماية الدفع، وإلَّا سيرفض GitHub الدفع.
3) أنشئ مستودعًا جديدًا (أنت أو عبري باستخدام `gh` إذا كنت مسجّل دخول) وأدفع كامل الشجرة (مع أو بدون الأسرار حسب اختيارك).

إجراء موصى به للسلامة: إن لم تكن مضطرًّا فعلاً لوضع مفاتيح الخدمة في التاريخ العام، اختَر الخيار (1). إن أردت فعلاً رفع مفاتيح التوقيع (`.jks`) فقط مع الاحتفاظ بملف الخدمة الحسابي محلياً، أعلمني وسأنتقي الملفات المراد رفعها.

اكتب لي: أي خيار تريده؟ وإعطني رابط المستودع الصحيح أو اسم الريموت (إن أردت الدفع إلى حساب/مستودع آخر). بعد تأكيدك، أتابع برفع الملفات المطلوبة.
