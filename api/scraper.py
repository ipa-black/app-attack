from curl_cffi import requests
from bs4 import BeautifulSoup
import json
import html
import datetime
import time

# رابط Vercel الخاص بك الذي يحمي الـ IP
VERCEL_DOMAIN = "https://app-attack.vercel.app"

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

def extract_apps_recursive(data, apps_dict, cat_name):
    """دالة ذكية تبحث في كامل الهيكل البرمجي للصفحة لاصطياد أي تطبيق مخفي"""
    if isinstance(data, dict):
        # إذا وجدنا قاموساً يحتوي على مواصفات التطبيق، نسحبه فوراً
        if "uuid" in data and "name" in data and ("uniqueBundle" in data or "bundle" in data):
            bundle = data.get("uniqueBundle") or data.get("bundle") or data.get("uuid")
            app_uuid = data.get("uuid")
            
            if app_uuid:
                size_in_bytes = convert_size_to_bytes(data.get("size", "0"))
                icon_url = fix_url(data.get("image", ""))
                version = str(data.get("version", "1.0"))
                name = data.get("name", "تطبيق بدون اسم")
                desc = data.get("description", "لا يوجد وصف")
                
                raw_date = data.get("updatedAt", "")
                date = raw_date[:10] if len(raw_date) >= 10 else datetime.datetime.utcnow().strftime("%Y-%m-%d")

                # تمرير حجم التطبيق إلى Vercel ليقرأه KSign فوراً دون حظر
                apps_dict[bundle] = {
                    "name": name,
                    "bundleIdentifier": bundle,
                    "version": version,
                    "versionDate": date,
                    "size": size_in_bytes,
                    "downloadURL": f"{VERCEL_DOMAIN}/api/index?uuid={app_uuid}&size={size_in_bytes}&file=app.ipa",
                    "developerName": "ATTACK STORE",
                    "localizedDescription": f"{desc}\n\nالقسم: {cat_name}",
                    "iconURL": icon_url,
                    "tintColor": "#0180FF"
                }
        
        # إكمال الغوص والبحث في باقي الملف
        for k, v in data.items():
            extract_apps_recursive(v, apps_dict, cat_name)
            
    elif isinstance(data, list):
        for item in data:
            extract_apps_recursive(item, apps_dict, cat_name)

def find_next_page(data):
    """دالة ذكية تبحث عن رابط الصفحة التالية في أي مكان داخل الكود"""
    if isinstance(data, dict):
        if "next_page_url" in data and data["next_page_url"]:
            return data["next_page_url"]
        for k, v in data.items():
            res = find_next_page(v)
            if res: return res
    elif isinstance(data, list):
        for item in data:
            res = find_next_page(item)
            if res: return res
    return None

def main():
    print("🚀 بدء سحب جميع التطبيقات (أكثر من 10,000 تطبيق)...")
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
        
        # سحب التطبيقات الموجودة بالواجهة كبداية
        extract_apps_recursive(page_data, all_apps, "عام")
        
        inertia_version = page_data.get("version", "")
        headers = {
            "X-Inertia": "true",
            "X-Inertia-Version": inertia_version
        }

        # 2. الدخول للأقسام وتقليب الصفحات
        for cat in categories:
            cat_uuid = cat.get("uuid")
            cat_name = cat.get("name", "عام")
            print(f"📂 جلب قسم: {cat_name}")
            
            next_url = f"https://check0ver.net/ar/categories/{cat_uuid}"
            
            while next_url:
                try:
                    cat_resp = session.get(next_url, headers=headers, timeout=30.0)
                    if cat_resp.status_code != 200:
                        break
                        
                    cat_data = cat_resp.json()
                    
                    # البحث الشامل عن التطبيقات في هذه الصفحة
                    extract_apps_recursive(cat_data, all_apps, cat_name)
                    
                    # البحث عن زر الصفحة التالية
                    next_url_raw = find_next_page(cat_data)
                    if next_url_raw:
                        next_url = fix_url(next_url_raw)
                        time.sleep(0.3) # فاصل زمني لتجنب حظر سيرفر GitHub
                    else:
                        next_url = None
                        
                except Exception as e:
                    print(f"⚠️ خطأ في الصفحة {next_url}: {e}")
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
        
    print(f"✅ تمت العملية! تم استخراج {len(all_apps)} تطبيق بنجاح.")

if __name__ == "__main__":
    main()
