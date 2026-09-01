from fastapi import FastAPI, HTTPException, Request
from fastapi.responses import RedirectResponse, Response
from curl_cffi import requests
import json
import html
from bs4 import BeautifulSoup

app = FastAPI()

@app.api_route('/api/index', methods=["GET", "HEAD"])
def get_fresh_ipa(uuid: str, request: Request, size: int = 0, file: str = None):
    # 1. إرضاء أداة KSign بإعطائها الحجم فوراً لمنع حظر الـ IP
    if request.method == "HEAD":
        return Response(
            status_code=200, 
            media_type="application/octet-stream",
            headers={"Content-Length": str(size)}
        )

    # 2. إنشاء جلسة احترافية لحفظ الـ Cookies وتخطي الحماية
    session = requests.Session(impersonate="safari_ios")
    
    try:
        # الدخول كمتصفح حقيقي لأخذ تصريح المرور (Cookies)
        app_url = f"https://check0ver.net/ar/iapps/{uuid}"
        app_page = session.get(app_url, timeout=15)
        
        real_url = None
        
        # استخراج البيانات المخفية
        soup = BeautifulSoup(app_page.text, 'html.parser')
        app_div = soup.find('div', id='app')
        
        if app_div and app_div.has_attr('data-page'):
            data = json.loads(html.unescape(app_div['data-page']))
            iapp = data.get("props", {}).get("iapp", {})
            real_url = iapp.get("downloadURL")
        
        # إذا كان الرابط لا يزال محلياً، نستخدم الجلسة المصرح لها لكشف الرابط السحابي
        if not real_url or "check0ver.net" in real_url:
            target_dl = real_url if real_url else f"https://check0ver.net/ar/iapps/{uuid}/download"
            
            # نطلب التحميل، والموقع سيقوم بتوجيهنا للرابط السحابي لأنه يثق في الـ Cookies الخاصة بنا
            dl_resp = session.get(target_dl, allow_redirects=False, timeout=10)
            
            if dl_resp.status_code in [301, 302, 303, 307, 308]:
                real_url = dl_resp.headers.get("Location")

        if real_url:
            # توجيه أداة KSign للرابط السحابي النهائي لبدء التحميل
            return RedirectResponse(url=real_url, status_code=302)
            
        raise HTTPException(status_code=404, detail="لم نتمكن من كشف الرابط السحابي")
        
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))
