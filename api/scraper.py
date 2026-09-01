from curl_cffi import requests
import json

def main():
    print("🚀 بدء بناء متجر ATTACK STORE من أضخم المصادر المفتوحة...")
    
    # قائمة بأضخم المستودعات (Repos) المفتوحة والمجانية في العالم
    # هذه الروابط تحتوي على آلاف التطبيقات المباشرة بدون أي حماية أو اشتراك
    sources = [
        "https://raw.githubusercontent.com/swaggyP36000/TrollStore-IPAs/main/apps.json",
        "https://raw.githubusercontent.com/arichornlover/arichornlover.github.io/main/apps.json",
        "https://raw.githubusercontent.com/34306/iPA/main/apps.json"
    ]
    
    all_apps = {}
    session = requests.Session(impersonate="safari_ios")
    
    for source in sources:
        try:
            print(f"📥 جاري شفط التطبيقات من السورس المفتوح...")
            response = session.get(source, timeout=30.0)
            
            if response.status_code == 200:
                data = response.json()
                apps = data.get("apps", [])
                
                for app in apps:
                    bundle = app.get("bundleIdentifier")
                    dl_url = app.get("downloadURL")
                    
                    # نأخذ التطبيق فقط إذا كان يحتوي على رابط مباشر يعمل
                    if bundle and dl_url and bundle not in all_apps:
                        
                        # لمسة سحرية: تغيير بيانات المطور ليكون متجرك أنت
                        app["developerName"] = "ATTACK STORE"
                        app["tintColor"] = "#0180FF"
                        
                        # حفظ التطبيق في القاموس
                        all_apps[bundle] = app
                        
        except Exception as e:
            print(f"⚠️ خطأ أثناء السحب: {e}")

    # تجميع كل التطبيقات في متجرك النهائي
    repo_data = {
        "name": "ATTACK STORE Repo",
        "identifier": "com.attackstore.repo",
        "apps": list(all_apps.values())
    }
    
    with open("repo.json", "w", encoding="utf-8") as f:
        json.dump(repo_data, f, ensure_ascii=False, indent=4)
        
    print(f"🎉 تمت العملية بنجاح! الإجمالي: {len(all_apps)} تطبيق مجاني بروابط مباشرة صاروخية.")

if __name__ == "__main__":
    main()
