from curl_cffi import requests
from bs4 import BeautifulSoup
import json
import html
import datetime
import time

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

def main():
    print("🚀 بدء سحب جميع التطبيقات (أكثر من 10,000 تطبيق)...")
    session = requests.Session(impersonate="safari_ios")
    all_apps = {}
    
    try:
        # 1. جلب الأقسام الرئيسية ومفتاح Inertia
        response = session.get("https://check0ver.net/ar", timeout=30.0)
        soup = BeautifulSoup(response.text, 'html.parser')
        app_div = soup.find('div', id='app')
        
        if not app_div:
            print("❌ لم يتم العثور على حاوية التطبيق الرئيسية.")
            return

        page_data = json.loads(html.unescape(app_div['data-page']))
        categories = page_data.get("props", {}).get("categories", [])
        
        inertia_version = page_data.get("version", "")
        headers = {
            "X-Inertia": "true",
            "X-Inertia-Version": inertia_version
        }

        # 2. الدخول لكل قسم وتقليب الصفحات لسحب كافة التطبيقات
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
                    iapps_paginator = cat_data.get("props", {}).get("iapps", {})
                    
                    # استخراج التطبيقات ورابط الصفحة التالية
                    if "data" in iapps_paginator:
                        apps_list = iapps_paginator["data"]
                        next_url = iapps_paginator.get("next_page_url")
                    else:
                        apps_list = iapps_paginator
                        next_url = None
                        
                    for app in apps_list:
                        bundle = app.get("uniqueBundle") or app.get("bundle") or app.get("uuid", "unknown")
                        app_uuid = app.get("uuid")
                        if not app_uuid: continue
                        
                        size_in_bytes = convert_size_to_bytes(app.get("size", "0"))
                        icon_url = fix_url(app.get("image", ""))
                        version = str(app.get("version", "1.0"))
                        name = app.get("name", "تطبيق بدون اسم")
                        desc = app.get("description", "لا يوجد وصف")
                        
                        raw_date = app.get("updatedAt", "")
                        date = raw_date[:10] if len(raw_date) >= 10 else datetime.datetime.utcnow().strftime("%Y-%m-%d")

                        # تمرير الحجم للـ Proxy لكي يمنع KSign من عمل الفحص الثقيل
                        all_apps[bundle] = {
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
                        
                    if next_url:
                        next_url = fix_url(next_url)
                        time.sleep(0.5) # فاصل زمني بسيط لتجنب حظر سيرفر GitHub
                        
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
