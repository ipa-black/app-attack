from fastapi import FastAPI, HTTPException, Request
from fastapi.responses import RedirectResponse
from curl_cffi import requests
from bs4 import BeautifulSoup
import json
import html

app = FastAPI()

def fix_url(url, base_domain="check0ver.net"):
    if not url: return url
    if url.startswith('//'): return 'https:' + url
    if url.startswith('/'): return f'https://{base_domain}' + url
    if not url.startswith('http'): return f'https://{base_domain}/' + url
    return url

# دعم طلبات GET و HEAD معاً، وإضافة 'file' لتمرير الامتداد الوهمي
@app.api_route('/api/index', methods=["GET", "HEAD"])
def get_fresh_ipa(uuid: str, request: Request, file: str = None):
    if not uuid:
        raise HTTPException(status_code=400, detail="Missing UUID")

    session = requests.Session(impersonate="safari_ios")

    try:
        app_page = session.get("https://check0ver.net/ar", timeout=15)
        soup = BeautifulSoup(app_page.text, 'html.parser')
        app_div = soup.find('div', id='app')
        
        if app_div and app_div.has_attr('data-page'):
            data = json.loads(html.unescape(app_div['data-page']))
            fresh_url = find_download_url(data, uuid)
            
            if fresh_url:
                fresh_url = fix_url(fresh_url)
                return RedirectResponse(url=fresh_url, status_code=302)
                
        raise HTTPException(status_code=404, detail="لم يتم العثور على الرابط")
        
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))

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
