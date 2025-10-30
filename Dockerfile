# استخدم صورة Node.js الرسمية
FROM node:18

# تحديد مجلد العمل داخل الحاوية
WORKDIR /usr/src/app

# نسخ ملفات التعريف
COPY package*.json ./

# تثبيت المكتبات
RUN npm install

# نسخ باقي المشروع
COPY . .

# فتح المنفذ 3000
EXPOSE 3000

# الأمر لتشغيل التطبيق
CMD ["node", "index.js"]
