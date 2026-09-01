from fastapi import FastAPI, HTTPException, Request
from fastapi.responses import RedirectResponse, Response
from curl_cffi import requests
import re

app = FastAPI()

@app.api_route('/api/index', methods=["GET", "HEAD"])
def get_fresh_ipa(uuid: str, request: Request, size: int = 0, file: str = None):
    # 1. الدرع الواقي: إعطاء الحجم فوراً لـ KSign بدون الضغط على الموقع الأصلي (لمنع الحظر)
    if request.method == "HEAD":
        return Response(
            status_code=200, 
            media_type="application/octet-stream",
            headers={"Content-Length": str(size)}
        )

    session = requests.Session(impersonate="safari_ios")
    
    try:
        fresh_url = None
        
        # محاولة 1: اختبار ما إذا كان مسار التحميل يوجهنا مباشرة للملف (Redirect)
        dl_resp = session.get(f"https://check0ver.net/ar/iapps/{uuid}/download", allow_redirects=False, timeout=10)
        if dl_resp.status_code in [301, 302, 303, 307, 308]:
            fresh_url = dl_resp.headers.get("Location")
        
        # محاولة 2: إذا لم يكن هناك توجيه مباشر، ندخل لصفحة التطبيق ونشغل "صائد الروابط"
        if not fresh_url:
            app_page = session.get(f"https://check0ver.net/ar/iapps/{uuid}", timeout=10)
            # تنظيف الكود لتسهيل عملية الصيد
            clean_text = app_page.text.replace('\\/', '/')
            
            # صائد الروابط السحري: يبحث عن أي رابط ينتهي بـ .ipa حتى لو كان مخفياً
            match = re.search(r'(https?://[^"\'\s]+\.ipa[^"\'\s]*)', clean_text)
            if match:
                fresh_url = match.group(1)

        if fresh_url:
            # توجيه KSign للرابط الطازج لبدء التحميل فوراً
            return RedirectResponse(url=fresh_url, status_code=302)
            
        raise HTTPException(status_code=404, detail="لم نتمكن من صيد رابط التطبيق من الكود")
        
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))
