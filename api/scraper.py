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
    if not size_str or size_str == "غير معروف": return 0
    size_str = str(size_str).upper().replace(" ", "")
    try:
        if "MB" in size_str: return int(float(size_str.replace("MB", "")) * 1048576)
        elif "GB" in size_str: return int(float(size_str.replace("GB", "")) * 1073741824)
        elif "KB" in size_str: return int(float(size_str.replace("KB", "")) * 1024)
        else: return int(float(size_str))
    except: return 0

def extract_all_apps_from_json(data, apps_dict, cat_name="عام"):
    """دالة قناصة تبحث في أي مكان في الكود عن التطبيقات وتسحبها"""
    found_new = False
    if isinstance(data, dict):
        if "uuid" in data and "downloadURL" in data and ("bundle" in data or "uniqueBundle" in data):
            bundle = data.get("uniqueBundle") or data.get("bundle") or data.get("uuid")
            dl_url = data.get("downloadURL")
            
            if bundle and dl_url and bundle not in apps_dict:
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
                    "downloadURL": dl_url, # الرابط الأصلي المباشر من سيرفراتهم
                    "developerName": "ATTACK STORE",
                    "localizedDescription": f"{desc}\n\nالقسم: {cat_name}",
                    "iconURL": icon_url,
                    "tintColor": "#0180FF"
                }
                found_new = True
        
        for k, v in data.items():
            if extract_all_apps_from_json(v, apps_dict, cat_name):
                found_new = True
                
    elif isinstance(data, list):
        for item in data:
            if extract_all_apps_from_json(item, apps_dict, cat_name):
                found_new = True
                
    return found_new

def main():
    print("🚀 بدء سحب التطبيقات من الجذور...")
    session = requests.Session(impersonate="safari_ios")
    all_apps = {}
    
    try:
        # 1. جلب الصفحة الرئيسية
        response = session.get("https://check0ver.net/ar", timeout=30.0)
        soup = BeautifulSoup(response.text, 'html.parser')
        app_div = soup.find('div', id='app')
        
        if not app_div:
            print("❌ لم يتم العثور على البيانات.")
            return

        page_data = json.loads(html.unescape(app_div['data-page']))
        categories = page_data.get("props", {}).get("categories", [])
        
        # استخراج ما هو موجود في الصفحة الرئيسية
        extract_all_apps_from_json(page_data, all_apps)
        print(f"✅ تم سحب {len(all_apps)} تطبيق من الصفحة الرئيسية.")
        
        inertia_version = page_data.get("version", "")
        headers = {
            "X-Inertia": "true",
            "X-Inertia-Version": inertia_version
        }

        # 2. الدخول للأقسام وتقليب الصفحات (1، 2، 3...) لسحب الـ 10,000 تطبيق
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
                    
                    # إذا لم نجد أي تطبيق جديد في هذه الصفحة، نوقف وننتقل للقسم اللي بعده
                    found_any = extract_all_apps_from_json(cat_data, all_apps, cat_name)
                    
                    if not found_any:
                        break
                        
                    page += 1
                    time.sleep(1) # تأخير إجباري لتجنب حظر سيرفر GitHub
                    
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
