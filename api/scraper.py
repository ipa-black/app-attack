from curl_cffi import requests
from bs4 import BeautifulSoup
import json
import html
import datetime

def convert_size_to_bytes(size_str):
    """تحويل الحجم إلى أرقام صافية لكي يقرأه KSign ولا يظهر 0.0"""
    if not size_str or size_str == "غير معروف":
        return 0
    size_str = str(size_str).upper().replace(" ", "")
    try:
        if "MB" in size_str:
            return int(float(size_str.replace("MB", "")) * 1048576)
        elif "GB" in size_str:
            return int(float(size_str.replace("GB", "")) * 1073741824)
        elif "KB" in size_str:
            return int(float(size_str.replace("KB", "")) * 1024)
        else:
            return int(float(size_str))
    except:
        return 0

def main():
    url = "https://check0ver.net/ar"
    all_apps = {}
    
    session = requests.Session(impersonate="safari_ios")
    
    try:
        response = session.get(url, timeout=30.0)
        if response.status_code == 200:
            soup = BeautifulSoup(response.text, 'html.parser')
            app_div = soup.find('div', id='app')
            
            if app_div and app_div.has_attr('data-page'):
                raw_json = html.unescape(app_div['data-page'])
                page_data = json.loads(raw_json)
                categories = page_data.get("props", {}).get("categoriesWithApps", [])
                
                if categories:
                    for category in categories:
                        cat_name = category.get("name", "عام")
                        iapps = category.get("iapps", [])
                        
                        for app in iapps:
                            bundle = app.get("uniqueBundle") or app.get("bundle") or app.get("uuid", "unknown")
                            app_uuid = app.get("uuid")
                            
                            if not app_uuid:
                                continue
                            
                            # الرابط الرسمي المستخرج من كود الموقع لتوليد التوكن تلقائياً
                            download_url = f"https://check0ver.net/api/iapps/{app_uuid}/download#.ipa"
                            
                            # استخراج الحجم الصحيح وتحويله إلى بايت
                            original_size = app.get("size", "0")
                            size_in_bytes = convert_size_to_bytes(original_size)
                            
                            icon_url = str(app.get("image", "")).strip()
                            if icon_url.startswith('/'): 
                                icon_url = "https://check0ver.net" + icon_url
                                
                            version = str(app.get("version", "1.0"))
                            name = app.get("name", "تطبيق بدون اسم")
                            desc = app.get("description", "لا يوجد وصف")
                            date = app.get("updatedAt", datetime.datetime.utcnow().isoformat() + "Z")

                            all_apps[bundle] = {
                                "name": name,
                                "bundleIdentifier": bundle,
                                "version": version,
                                "versionDate": date,
                                "size": size_in_bytes, # سيقرأه KSign كرقم حقيقي
                                "downloadURL": download_url,
                                "developerName": "ATTACK STORE",
                                "localizedDescription": f"{desc}\n\nالقسم: {cat_name}",
                                "iconURL": icon_url,
                                "tintColor": "#0180FF"
                            }
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
        
    print(f"✅ تم استخراج {len(all_apps)} تطبيق وتحديث السورس.")

if __name__ == "__main__":
    main()
