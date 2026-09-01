from curl_cffi import requests
from bs4 import BeautifulSoup
import json
import html
import time

VERCEL_DOMAIN = "https://app-attack.vercel.app"

def fix_url(url, base_domain="check0ver.net"):
    if not url: return ""
    if url.startswith('//'): return 'https:' + url
    if url.startswith('/'): return f'https://{base_domain}' + url
    if not url.startswith('http'): return f'https://{base_domain}/' + url
    return url

def extract_apps(data, apps_dict, category_name="عام"):
    if isinstance(data, dict):
        if "downloadURL" in data and "name" in data and ("bundle" in data or "uniqueBundle" in data):
            bundle = data.get("uniqueBundle") or data.get("bundle") or data.get("uuid", "unknown")
            app_uuid = data.get("uuid")
            icon_url = fix_url(data.get("image", ""))

            if app_uuid:
                apps_dict[bundle] = {
                    "name": data.get("name", "تطبيق بدون اسم"),
                    "bundleIdentifier": bundle,
                    "version": str(data.get("version", "1.0")),
                    "size": str(data.get("size", "غير معروف")),
                    "downloadURL": f"{VERCEL_DOMAIN}/api/index?uuid={app_uuid}",
                    "iconURL": icon_url,
                    "localizedDescription": f"{data.get('description', 'لا يوجد وصف')}\n\nالقسم: {category_name}",
                }
        for k, v in data.items():
            extract_apps(v, apps_dict, category_name)
    elif isinstance(data, list):
        for item in data:
            extract_apps(item, apps_dict, category_name)

def main():
    url = "https://check0ver.net/ar"
    all_apps = {}
    
    print("🚀 بدء بناء وتحديث متجر ATTACK STORE...")
    session = requests.Session(impersonate="safari_ios")
    
    try:
        response = session.get(url, timeout=30.0)
        if response.status_code == 200:
            soup = BeautifulSoup(response.text, 'html.parser')
            app_div = soup.find('div', id='app')
            
            if app_div and app_div.has_attr('data-page'):
                page_data = json.loads(html.unescape(app_div['data-page']))
                categories = page_data.get("props", {}).get("categoriesWithApps", [])
                
                if categories:
                    for category in categories:
                        cat_name = category.get("name", "عام")
                        extract_apps(category.get("iapps", []), all_apps, cat_name)
                else:
                    extract_apps(page_data, all_apps)
    except Exception as e:
        print(f"❌ حدث خطأ أثناء الاتصال: {e}")
        return

    repo_data = {
        "name": "ATTACK STORE Repo",
        "identifier": "com.attackstore.repo",
        "apps": list(all_apps.values())
    }
    
    with open("repo.json", "w", encoding="utf-8") as f:
        json.dump(repo_data, f, ensure_ascii=False, indent=4)
        
    print(f"✅ تمت العملية! تم استخراج {len(all_apps)} تطبيق وتحديث السورس.")

if __name__ == "__main__":
    main()
