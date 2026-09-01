from fastapi import FastAPI, HTTPException, Request
from fastapi.responses import RedirectResponse, Response
from curl_cffi import requests
import re

app = FastAPI()

@app.api_route('/api/index', methods=["GET", "HEAD"])
def get_fresh_ipa(uuid: str, request: Request, size: int = 0, file: str = None):
    # 1. الدرع الواقي: إعطاء KSign الحجم فوراً لمنع حظر جهازك
    if request.method == "HEAD":
        return Response(
            status_code=200, 
            media_type="application/octet-stream",
            headers={"Content-Length": str(size)}
        )

    # 2. انتحال شخصية جوالك: نمرر الـ IP الخاص بك ونوع المتصفح لكي لا يكتشف الموقع أننا سيرفر
    client_ua = request.headers.get("User-Agent", "Mozilla/5.0 (iPhone; CPU iPhone OS 16_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.0 Mobile/15E148 Safari/604.1")
    client_ip = request.headers.get("x-forwarded-for", "").split(",")[0].strip() or request.client.host

    session = requests.Session(impersonate="safari_ios")
    session.headers.update({
        "User-Agent": client_ua,
        "X-Forwarded-For": client_ip,
        "X-Real-IP": client_ip,
        "Referer": f"https://check0ver.net/ar/iapps/{uuid}"
    })

    try:
        # 3. الدخول إلى صفحة التطبيق في الموقع
        app_page = session.get(f"https://check0ver.net/ar/iapps/{uuid}", timeout=15)
        
        # 4. تنظيف كود الصفحة لتسهيل البحث
        clean_text = app_page.text.replace('\\/', '/')
        
        # 5. القناص (Regex): يبحث في كود الصفحة عن أي رابط مباشر ينتهي بـ .ipa ومعه مفتاح التحميل
        match = re.search(r'(https?://[^"\'\s]+\.ipa[^"\'\s]*)', clean_text)
        
        if match:
            fresh_url = match.group(1)
            # 6. توجيه KSign للتحميل من السيرفر السحابي (CDN) مباشرة وبدون الدخول للموقع
            return RedirectResponse(url=fresh_url, status_code=302)
            
        raise HTTPException(status_code=404, detail="لم يتم العثور على رابط IPA السحابي في كود الصفحة")
        
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))
