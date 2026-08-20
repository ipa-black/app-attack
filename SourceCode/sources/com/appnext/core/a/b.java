package com.appnext.core.a;

import com.appnext.core.f;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.HashMap;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class b {
    private static final String hV = "{\"EN\":{\"settings\":{\"active\":true,\"len\":12,\"font_size_px\":12,\"font_size_sp\":10},\"new\":{\"Install\":\"Install\",\"Download\":\"Download\",\"Shop\":\"Shop\",\"Sign up\":\"Sign up\",\"Watch\":\"Watch\",\"Join\":\"Join\",\"Start\":\"Start\",\"Subscribe\":\"Subscribe\",\"Add\":\"Add\",\"Search\":\"Search\",\"Share\":\"Share\",\"Get\":\"Get\",\"Book\":\"Book\",\"Play\":\"Play\"},\"existing\":{\"Install\":\"Install\",\"Use\":\"Use\",\"Play\":\"Play\",\"Reserve\":\"Reserve\",\"Buy\":\"Buy\",\"View\":\"View\",\"Log in\":\"Log in\",\"Listen\":\"Listen\",\"Read\":\"Read\",\"Watch\":\"Watch\",\"See more\":\"See more\",\"Find\":\"Find\",\"Book\":\"Book\",\"Chat\":\"Chat\",\"Park\":\"Park\",\"Open\":\"Open\",\"Exercise\":\"Exercise\",\"Optimize\":\"Optimize\"}},\"KO\":{\"settings\":{\"active\":true,\"len\":10,\"font_size_px\":12,\"font_size_sp\":10},\"new\":{\"Install\":\"설치\",\"Download\":\"다운로드\",\"Shop\":\"가게에서 물건을 사다\",\"Sign up\":\"회원가입\",\"Watch\":\"보다\",\"Join\":\"입회하다\",\"Start\":\"시작\",\"Subscribe\":\"구독\",\"Add\":\"추가\",\"Search\":\"검색\",\"Share\":\"공유\",\"Get\":\"얻다\",\"Book\":\"예약\",\"Play\":\"재생\"},\"existing\":{\"Install\":\"설치\",\"Use\":\"설치\",\"Play\":\"재생\",\"Reserve\":\"예약하기\",\"Buy\":\"구매하기\",\"View\":\"바라보다\",\"Log in\":\"로그인\",\"Listen\":\"듣기\",\"Read\":\"읽기\",\"Watch\":\"보기\",\"See more\":\"더 보기\",\"Find\":\"찾기\",\"Book\":\"예약\",\"Chat\":\"채팅\",\"Park\":\"읽기\",\"Open\":\"개장\",\"Exercise\":\"연습하다\",\"Optimize\":\"최적화하기\"}}}";
    public static final String hW = "settings";
    public static final String hX = "new";
    public static final String hY = "existing";
    private static b ia;
    private String hZ;

    private b() {
        new Thread(new Runnable() { // from class: com.appnext.core.a.b.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    b.this.hZ = f.a("https://cdn.appnext.com/tools/sdk/langs/2.4.4/langs.json", (HashMap<String, String>) null);
                } catch (Throwable unused) {
                }
            }
        }).start();
    }

    public static synchronized b bp() {
        b bVar;
        synchronized (b.class) {
            if (ia == null) {
                ia = new b();
            }
            bVar = ia;
        }
        return bVar;
    }

    public final String b(String str, String str2, String str3) {
        if (str == null || str.equals("")) {
            str = Locale.getDefault().getLanguage().toUpperCase();
        }
        try {
            try {
                try {
                    try {
                        a(this.hZ, str, str2, str3);
                    } catch (Throwable unused) {
                        return str3;
                    }
                } catch (Throwable unused2) {
                    return a(hV, str, str2, str3);
                }
            } catch (Throwable unused3) {
                return a(this.hZ, "EN", str2, str3);
            }
        } catch (Throwable unused4) {
            return a(hV, "EN", str2, str3);
        }
    }

    private static String a(String str, String str2, String str3, String str4) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        return jSONObject.getJSONObject(str2).getJSONObject(hW).getBoolean(AppMeasurementSdk.ConditionalUserProperty.ACTIVE) ? jSONObject.getJSONObject(str2).getJSONObject(str3).getString(str4) : str4;
    }

    public final String bq() {
        String str = this.hZ;
        return str != null ? str : hV;
    }
}
