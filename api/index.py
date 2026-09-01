from fastapi import FastAPI, HTTPException, Request
from fastapi.responses import RedirectResponse, Response
from curl_cffi import requests
from bs4 import BeautifulSoup
import json
import html

app = FastAPI()

@app.api_route('/api/index', methods=["GET", "HEAD"])
def get_fresh_ipa(uuid: str, request: Request, size: int = 0, file: str = None):
    # 1. الدرع الواقي: إعطاء KSign الحجم فوراً لمنع حظر جهازك أو تعليق الأداة
    if request.method == "HEAD":
        return Response(
            status_code=200, 
            media_type="application/octet-stream",
            headers={"Content-Length": str(size)}
        )

    # 2. سحب الرابط الطازج وقت التحميل الفعلي
    session = requests.Session(impersonate="safari_ios")
    try:
        # الدخول كمتصفح حقيقي إلى صفحة التطبيق الخاصة
        app_url = f"https://check0ver.net/ar/iapps/{uuid}"
        app_page = session.get(app_url, timeout=15)
        
        soup = BeautifulSoup(app_page.text, 'html.parser')
        app_div = soup.find('div', id='app')
        
        if app_div and app_div.has_attr('data-page'):
            data = json.loads(html.unescape(app_div['data-page']))
            
            # استخراج الرابط المباشر الصافي (الذي ينتهي بـ .ipa)
            fresh_url = None
            iapp = data.get("props", {}).get("iapp", {})
            if isinstance(iapp, dict) and "downloadURL" in iapp:
                fresh_url = iapp.get("downloadURL")
            
            # بحث بديل في حال تغير مكان الرابط
            if not fresh_url:
                fresh_url = find_download_url(data, uuid)
                
            if fresh_url:
                # التأكد من صحة الرابط وتوجيه KSign إليه ليبدأ التنزيل كالصاروخ
                if fresh_url.startswith('//'): fresh_url = 'https:' + fresh_url
                elif fresh_url.startswith('/'): fresh_url = 'https://check0ver.net' + fresh_url
                
                return RedirectResponse(url=fresh_url, status_code=302)
                
        raise HTTPException(status_code=404, detail="لم يتم العثور على الرابط المباشر")
        
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))

def find_download_url(data, target_uuid):
    """دالة احتياطية للبحث عن الرابط داخل الهيكل"""
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
