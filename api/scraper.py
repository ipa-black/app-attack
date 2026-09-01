from curl_cffi import requests
from bs4 import BeautifulSoup
import json
import html
import datetime
import time

def fix_url(url, base_domain="check0ver.net"):
    if not url: return ""
    url = str(url).strip()
    if url.startswith('http://') or url.startswith('https://'): return url
    if url.startswith('//'): return 'https:' + url
    if url.startswith('/'): return f'https://{base_domain}{url}'
    return f'https://{base_domain}/{url}'

def convert_size_to_bytes(size_str):
    """تحويل الحجم إلى أرقام ليفهمه KSign بدون أخطاء 0.0MB"""
    if not size_str or size_str == "غير معروف": return 0
    size_str = str(size_str).upper().replace(" ", "")
    try:
        if "MB" in size_str: return int(float(size_str.replace("MB", "")) * 1048576)
        elif "GB" in size_str: return int(float(size_str.replace("GB", "")) * 1073741824)
        elif "KB" in size_str: return int(float(size_str.replace("KB", "")) * 1024)
        else: return int(float(size_str))
    except: return 0

def extract_all_apps(data, apps_dict, cat_name="عام"):
    """صائد التطبيقات: يبحث في أي مكان في الكود دون الاعتماد على الرابط المباشر"""
    found_app_in_this_chunk = False
    
    if isinstance(data, dict):
        # شرط مرن: يكفي وجود uuid والاسم والحجم لكي نصطاد التطبيق
        if "uuid" in data and "name" in data and "size" in data:
            found_app_in_this_chunk = True
            bundle = data.get("uniqueBundle") or data.get("bundle") or data.get("bundleIdentifier") or data.get("uuid")
            app_uuid = data.get("uuid")
            
            if bundle and bundle not in apps_dict:
                # إذا الرابط المباشر موجود نسحبه، وإذا مخفي نولد الرابط الرسمي
                dl_url = data.get("downloadURL")
                if not dl_url:
                    dl_url = f"https://check0ver.net/ar/iapps/{app_uuid}/download#.ipa"
                    
                size_in_bytes = convert_size_to_bytes(data.get("size", "0"))
                icon_url = fix_url(data.get("image", ""))
                version = str(data.get("version", "1.0"))
                name = data.get("name", "تطبيق بدون اسم")
                desc = data.get("description", "لا يوجد وصف")
                
                raw_date = data.get("updatedAt", "")
                date = raw_date[:10] if len(raw_date) >= 10 else datetime.datetime.utcnow().strftime("%Y-%m-%d")

                apps_dict[bundle] = {
                    "name": name,
                    "bundleIdentifier": bundle,
                    "version": version,
                    "versionDate": date,
                    "size": size_in_bytes,
                    "downloadURL": dl_url,
                    "developerName": "ATTACK STORE",
                    "localizedDescription": f"{desc}\n\nالقسم: {cat_name}",
                    "iconURL": icon_url,
                    "tintColor": "#0180FF"
                }
        
        # الغوص في باقي البيانات
        for k, v in data.items():
            if extract_all_apps(v, apps_dict, cat_name):
                found_app_in_this_chunk = True
                
    elif isinstance(data, list):
        for item in data:
            if extract_all_apps(item, apps_dict, cat_name):
                found_app_in_this_chunk = True
                
    return found_app_in_this_chunk

def main():
    print("🚀 بدء سحب جميع التطبيقات (أكثر من 10,000 تطبيق)...")
    session = requests.Session(impersonate="safari_ios")
    all_apps = {}
    
    try:
        # 1. جلب الصفحة الرئيسية والأقسام
        response = session.get("https://check0ver.net/ar", timeout=30.0)
        soup = BeautifulSoup(response.text, 'html.parser')
        app_div = soup.find('div', id='app')
        
        if not app_div:
            print("❌ لم يتم العثور على البيانات في الصفحة الرئيسية.")
            return

        page_data = json.loads(html.unescape(app_div['data-page']))
        categories = page_data.get("props", {}).get("categories", [])
        
        # سحب التطبيقات من الواجهة كبداية
        extract_all_apps(page_data, all_apps)
        
        # مفاتيح تخطي الحماية للموقع
        inertia_version = page_data.get("version", "")
        headers = {
            "X-Inertia": "true",
            "X-Inertia-Version": inertia_version
        }

        # 2. الدخول للأقسام وتقليب الصفحات لسحب كل التطبيقات
        for cat in categories:
            cat_uuid = cat.get("uuid")
            cat_name = cat.get("name", "عام")
            print(f"📂 جاري مسح قسم: {cat_name}...")
            
            page = 1
            while True:
                try:
                    cat_url = f"https://check0ver.net/ar/categories/{cat_uuid}?page={page}"
                    cat_resp = session.get(cat_url, headers=headers, timeout=20.0)
                    
                    if cat_resp.status_code != 200:
                        break
                        
                    cat_data = cat_resp.json()
                    
                    # هل وجدنا تطبيقات في هذه الصفحة؟
                    found_any = extract_all_apps(cat_data, all_apps, cat_name)
                    
                    # إذا الصفحة فارغة من التطبيقات، ننتقل للقسم التالي
                    if not found_any:
                        break
                        
                    page += 1
                    time.sleep(1) # تأخير إجباري لتجنب حظر IP سيرفر GitHub
                    
                except Exception as e:
                    print(f"⚠️ توقف في قسم {cat_name} صفحة {page}: {e}")
                    break
                    
    except Exception as e:
        print(f"❌ حدث خطأ جذري: {e}")
        return

    repo_data = {
        "name": "ATTACK STORE Repo",
        "identifier": "com.attackstore.repo",
        "apps": list(all_apps.values())
    }
    
    with open("repo.json", "w", encoding="utf-8") as f:
        json.dump(repo_data, f, ensure_ascii=False, indent=4)
        
    print(f"🎉 تمت العملية بنجاح! الإجمالي: {len(all_apps)} تطبيق.")

if __name__ == "__main__":
    main()
