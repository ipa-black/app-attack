from curl_cffi import requests
from bs4 import BeautifulSoup
import json
import html

def fix_url(url, base_domain="check0ver.net"):
    if not url: return ""
    url = str(url).strip()
    if url.startswith('http://') or url.startswith('https://'): return url
    if url.startswith('//'): return 'https:' + url
    if url.startswith('/'): return f'https://{base_domain}{url}'
    return f'https://{base_domain}/{url}'

def main():
    url = "https://check0ver.net/ar"
    all_apps = {}
    
    print("🚀 بدء سحب التطبيقات وبناء متجر ATTACK STORE...")
    session = requests.Session(impersonate="safari_ios")
    
    try:
        response = session.get(url, timeout=30.0)
        if response.status_code == 200:
            soup = BeautifulSoup(response.text, 'html.parser')
            app_div = soup.find('div', id='app')
            
            if app_div and app_div.has_attr('data-page'):
                # فك تشفير وفهم بيانات JSON بالكامل
                raw_json = html.unescape(app_div['data-page'])
                page_data = json.loads(raw_json)
                
                # الدخول المباشر لمجلدات التطبيقات والأقسام
                categories = page_data.get("props", {}).get("categoriesWithApps", [])
                
                if categories:
                    for category in categories:
                        cat_name = category.get("name", "عام")
                        iapps = category.get("iapps", [])
                        
                        # سحب كل تطبيق داخل القسم
                        for app in iapps:
                            bundle = app.get("uniqueBundle") or app.get("bundle") or app.get("uuid", "unknown")
                            
                            # أخذ الرابط المباشر والحجم الحقيقي من المصدر
                            download_url = app.get("downloadURL", "")
                            size = str(app.get("size", "غير معروف"))
                            icon_url = fix_url(app.get("image", ""))
                            version = str(app.get("version", "1.0"))
                            name = app.get("name", "تطبيق بدون اسم")
                            desc = app.get("description", "لا يوجد وصف")

                            # إضافة التطبيق إذا كان يحتوي على رابط تحميل فقط
                            if download_url:
                                all_apps[bundle] = {
                                    "name": name,
                                    "bundleIdentifier": bundle,
                                    "version": version,
                                    "size": size,
                                    "downloadURL": download_url,
                                    "iconURL": icon_url,
                                    "localizedDescription": f"{desc}\n\nالقسم: {cat_name}"
                                }
    except Exception as e:
        print(f"❌ حدث خطأ أثناء الاتصال أو تحليل البيانات: {e}")
        return

    # بناء ملف السورس
    repo_data = {
        "name": "ATTACK STORE Repo",
        "identifier": "com.attackstore.repo",
        "apps": list(all_apps.values())
    }
    
    with open("repo.json", "w", encoding="utf-8") as f:
        json.dump(repo_data, f, ensure_ascii=False, indent=4)
        
    print(f"✅ تمت العملية! تم استخراج {len(all_apps)} تطبيق مع الأحجام والروابط المباشرة وتحديث السورس.")

if __name__ == "__main__":
    main()
