from curl_cffi import requests
from bs4 import BeautifulSoup
import json
import html
import datetime
import time

# تأكد من أن هذا الرابط يطابق رابط Vercel الخاص بك تماماً
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

def extract_all_apps(data, apps_dict, cat_name="عام"):
    found_app = False
    
    if isinstance(data, dict):
        if "uuid" in data and "name" in data and "size" in data:
            found_app = True
            bundle = data.get("uniqueBundle") or data.get("bundle") or data.get("bundleIdentifier") or data.get("uuid")
            app_uuid = data.get("uuid")
            
            if bundle and bundle not in apps_dict:
                size_in_bytes = convert_size_to_bytes(data.get("size", "0"))
                icon_url = fix_url(data.get("image", ""))
                version = str(data.get("version", "1.0"))
                name = data.get("name", "تطبيق بدون اسم")
                desc = data.get("description", "لا يوجد وصف")
                
                raw_date = data.get("updatedAt", "")
                date = raw_date[:10] if len(raw_date) >= 10 else datetime.datetime.utcnow().strftime("%Y-%m-%d")

                # توجيه الطلب إلى Vercel ليقوم بجلب الرابط السحابي
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
        
        for k, v in data.items():
            if extract_all_apps(v, apps_dict, cat_name):
                found_app = True
                
    elif isinstance(data, list):
        for item in data:
            if extract_all_apps(item, apps_dict, cat_name):
                found_app = True
                
    return found_app

def main():
    print("🚀 بدء سحب التطبيقات وبناء قاعدة بيانات ATTACK STORE...")
    session = requests.Session(impersonate="safari_ios")
    all_apps = {}
    
    try:
        response = session.get("https://check0ver.net/ar", timeout=30.0)
        soup = BeautifulSoup(response.text, 'html.parser')
        app_div = soup.find('div', id='app')
        
        if not app_div: return

        page_data = json.loads(html.unescape(app_div['data-page']))
        categories = page_data.get("props", {}).get("categories", [])
        
        extract_all_apps(page_data, all_apps)
        
        headers = {
            "X-Inertia": "true",
            "X-Inertia-Version": page_data.get("version", "")
        }

        for cat in categories:
            cat_uuid = cat.get("uuid")
            cat_name = cat.get("name", "عام")
            print(f"📂 جاري مسح قسم: {cat_name}...")
            
            page = 1
            while True:
                try:
                    cat_url = f"https://check0ver.net/ar/categories/{cat_uuid}?page={page}"
                    cat_resp = session.get(cat_url, headers=headers, timeout=20.0)
                    
                    if cat_resp.status_code != 200 or not extract_all_apps(cat_resp.json(), all_apps, cat_name):
                        break
                        
                    page += 1
                    time.sleep(1)
                    
                except Exception as e:
                    break
                    
    except Exception as e:
        print(f"❌ حدث خطأ: {e}")
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
