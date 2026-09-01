from fastapi import FastAPI, HTTPException
from fastapi.responses import RedirectResponse
from curl_cffi import requests
from bs4 import BeautifulSoup
import json
import html

app = FastAPI()

# معالجة الروابط لتكون جاهزة للتحميل المباشر
def fix_url(url, base_domain="check0ver.net"):
    if not url: return url
    if url.startswith('//'): return 'https:' + url
    if url.startswith('/'): return f'https://{base_domain}' + url
    if not url.startswith('http'): return f'https://{base_domain}/' + url
    return url

@app.get('/api/index')
def get_fresh_ipa(uuid: str):
    if not uuid:
        raise HTTPException(status_code=400, detail="Missing UUID")

    # السلاح السري: انتحال شخصية سفاري على iOS لتخطي حماية المواقع
    session = requests.Session(impersonate="safari_ios")

    try:
        # الدخول السريع والمباشر لصفحة التطبيق المعني
        app_url = f"https://check0ver.net/ar/iapps/{uuid}"
        app_page = session.get(app_url, timeout=15)
        
        soup = BeautifulSoup(app_page.text, 'html.parser')
        app_div = soup.find('div', id='app')
        
        if app_div and app_div.has_attr('data-page'):
            data = json.loads(html.unescape(app_div['data-page']))
            fresh_url = find_download_url(data, uuid)
            
            if fresh_url:
                fresh_url = fix_url(fresh_url)
                # توجيه تطبيق التوقيع للبدء بالتحميل فوراً
                return RedirectResponse(url=fresh_url, status_code=302)
                
        raise HTTPException(status_code=404, detail="لم يتم العثور على الرابط الطازج")
        
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))

# دالة مخصصة للبحث داخل الهيكل البرمجي
def find_download_url(data, target_uuid):
    if isinstance(data, dict):
        if data.get("uuid") == target_uuid and "downloadURL" in data:
            return data.get("downloadURL")
        for k, v in data.items():
            res = find_download_url(v, target_uuid)
            if res: return res
    elif isinstance(data, list):
        for item in data:
            res = find_download_url(item, target_uuid)
            if res: return res
    return None
