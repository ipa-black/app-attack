from fastapi import FastAPI, HTTPException
from fastapi.responses import RedirectResponse
from curl_cffi import requests # 🌟 المكتبة الأحدث لتخطي الحماية
from bs4 import BeautifulSoup
import json
import html
import os

app = FastAPI()

@app.get('/api/index')
def get_fresh_ipa(uuid: str):
    if not uuid:
        raise HTTPException(status_code=400, detail="Missing UUID")

    email = os.environ.get("CHECK0VER_EMAIL")
    password = os.environ.get("CHECK0VER_PASS")

    # 🌟 هنا السحر: impersonate="safari_ios" تجعل السيرفر يبدو كآيفون حقيقي بنسبة 100%
    session = requests.Session(impersonate="safari_ios")

    try:
        # تسجيل الدخول كمتصفح سفاري حقيقي
        login_url = "https://check0ver.net/ar/auth/login"
        login_page = session.get(login_url)
        soup = BeautifulSoup(login_page.text, 'html.parser')
        
        token_input = soup.find('input', {'name': '_token'})
        if token_input:
            session.post(login_url, data={
                "_token": token_input['value'],
                "email": email,
                "password": password
            })

        # سحب التطبيق المطلوب
        app_url = f"https://check0ver.net/ar/iapps/{uuid}"
        app_page = session.get(app_url)
        app_soup = BeautifulSoup(app_page.text, 'html.parser')
        app_div = app_soup.find('div', id='app')
        
        if app_div and app_div.has_attr('data-page'):
            data = json.loads(html.unescape(app_div['data-page']))
            fresh_url = find_download_url(data, uuid)
            
            if fresh_url:
                if fresh_url.startswith('/'):
                    fresh_url = "https://check0ver.net" + fresh_url
                return RedirectResponse(url=fresh_url, status_code=302)
                
        raise HTTPException(status_code=404, detail="Link not found")
        
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))

# دالة البحث... (كما هي)
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
