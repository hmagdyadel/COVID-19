import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageProvider with ChangeNotifier {
  bool isEn = true;
  Map<String, Object> textsAr = {
    "COVID-19": "كوفيد-19",
    "WorldWide": "جميع انحاء العالم",
    "Regional": "الدول",
    "Most_effected_country": "الدول الاكثر تضرراً ",
    "We_are_together_in_this": "نحن معاً في هذا ",
    "People": "اشخاص",
    "FAQS": "الأسئلة الشائعة",
    "DONATE": "التبرع",
    "MYTH_BUSTERS": "الاساطير",
    "CONFIRMED": "إصابات مؤكدة",
    "ACTIVE": "يتم علاجه",
    "RECOVERED": "تم شفائه",
    "DEATHS": "الوفيات",
    "Countries_Status": "حالة البلدان",
    "about": "عن التطبيق",
    "settings": "الإعدادات",
    "not_found_page": "الصفحة غيير موجودة",
    "required_field": "إدخل إسم الدولة",
    "search": "بحث",
    "lightBlue": "خلفية فاتحة",
    "darkBlue": "خلفية غامقة",
    "app_title": "تطبيق كوفيد-19",
    "version": "النسخة(1.0.0)",
    "month": "تم تطويره في ديسمبر 2020",
    "developed": "تم التطوير بواسطة ",
    "software_Engineer": "المهندس :",
    "software_Engineer_name": "هيثم مجدي عادل",
    "dark_mode": "خلفية داكنة",
    "light_mode": "خلفية بيضاء",
    "mask": "كيف ومتي تستخدم الكمامة ؟",
    "advices": "نصائح للعامة بشأن فيروس كورونا المستجد",
    "advice": " نصائح للعامة",
    "theme_appBar_title": "نمط التطبيق",
    "theme_screen_title": "قم بتعديل أنماط تطبيقك",
    "theme_mode_title": "إختر مظهر لتطبيقك",
    "System_default_theme": "مظهر الجهاز الإفتراضي",
    "light_theme": "المظهر الفاتح",
    "dark_theme": "المظهر الداكن",
    "primary": "إختر اللون الاساسي",
    "accent": "إختر اللون الثانوي",
    "drawer_switch_title": "إختر لغتك",
    "drawer_switch_item1": "الإنجليزية",
    "drawer_switch_item2": "العربية",
    "language": "اللغة",
  };
  Map<String, Object> textsEn = {
    "COVID-19": "COVID-19",
    "WorldWide": "World Wide",
    "Regional": "Regional",
    "Most_effected_country": "Most effected countries",
    "We_are_together_in_this": "We are together in this",
    "People": "People",
    "FAQS": "FAQs",
    "DONATE": "DONATE",
    "MYTH_BUSTERS": "MYTH BUSTERS",
    "CONFIRMED": "CONFIRMED",
    "ACTIVE": "ACTIVE",
    "RECOVERED": "RECOVERED",
    "DEATHS": "DEATHS",
    "Countries_Status": "Countries status",
    "about": "About US",
    "settings": "Settings",
    "not_found_page": "Not Found Page",
    "required_field": "Enter the Country",
    "search": "Search",
    "lightBlue": "Light theme",
    "darkBlue": "Dark theme",
    "app_title": "COVID-19 Application",
    "version": "Version (1.0.0)",
    "month": "Developed in December 2020",
    "developed": "Developed by ",
    "software_Engineer": "Software Engineer:",
    "software_Engineer_name": "Haitham Magdy Adel",
    "dark_mode": "Dark Mode",
    "light_mode": "Light Mode",
    "mask": "How and when to use the mask?",
    "advices": "COVID-19 disease advice for the public",
    "advice": " Advices for the public",
    "theme_appBar_title": "Your Themes",
    "theme_screen_title": "Adjust your themes selection.",
    "theme_mode_title": "Choose your Theme Mode",
    "System_default_theme": "System Default Theme",
    "light_theme": "Light Theme",
    "dark_theme": "Dark Theme",
    "primary": "Choose your primary color",
    "accent": "Choose your accent color",
    "drawer_switch_title": "Choose your language.",
    "drawer_switch_item1": "English",
    "drawer_switch_item2": "Arabic",
    "language": "Language",
  };

  changeLan(bool lan) async {
    isEn = lan;
    notifyListeners();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("isEn", isEn);
  }

  getLan() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isEn = prefs.getBool("isEn") ?? true;
    notifyListeners();
  }

  Object getTexts(String txt) {
    if (isEn == true) return textsEn[txt];
    return textsAr[txt];
  }
}
