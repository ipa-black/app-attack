from fastapi import FastAPI, Request
from fastapi.responses import RedirectResponse, Response

app = FastAPI()

@app.api_route('/api/index', methods=["GET", "HEAD"])
def get_fresh_ipa(uuid: str, request: Request, size: int = 0, file: str = None):
    # 1. الدرع الواقي: صد طلبات فحص KSign الوهمية لمنع حظر الـ IP الخاص بك
    # Vercel سيرد على KSign بالحجم مباشرة دون الضغط على الموقع الهدف
    if request.method == "HEAD":
        return Response(
            status_code=200, 
            media_type="application/octet-stream",
            headers={"Content-Length": str(size)}
        )

    # 2. التحميل الفعلي: توجيه تطبيق التوقيع إلى الرابط الرسمي المباشر
    # بمجرد أن تضغط تنزيل، سيتم تحويلك لهذا المسار الذي سيعطيك ملف IPA طازج دائماً
    official_download_url = f"https://check0ver.net/ar/iapps/{uuid}/download"
    return RedirectResponse(url=official_download_url, status_code=302)

