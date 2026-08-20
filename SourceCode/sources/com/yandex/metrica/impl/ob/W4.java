package com.yandex.metrica.impl.ob;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.yandex.metrica.impl.ob.Oh;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class W4 extends X4 {
    public W4(L3 l3) {
        super(l3);
    }

    @Override // com.yandex.metrica.impl.ob.S4
    public boolean a(C1448c0 c1448c0) {
        String q = c1448c0.q();
        if (TextUtils.isEmpty(q)) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(q);
            if (TtmlNode.TEXT_EMPHASIS_MARK_OPEN.equals(jSONObject.optString(SessionDescription.ATTR_TYPE))) {
                a().x().j();
                if (a(jSONObject.optString("link"))) {
                    c1448c0.a(Boolean.TRUE);
                    a().x().i();
                    a().D();
                    a().j().a();
                    return false;
                }
                return false;
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    private boolean a(String str) {
        String[] split;
        Object obj;
        if (!TextUtils.isEmpty(str)) {
            try {
                String queryParameter = Uri.parse(str).getQueryParameter("referrer");
                if (!TextUtils.isEmpty(queryParameter)) {
                    Oh b2 = a().w().b();
                    for (String str2 : queryParameter.split("&")) {
                        int indexOf = str2.indexOf("=");
                        if (indexOf >= 0) {
                            String decode = Uri.decode(str2.substring(0, indexOf));
                            String decode2 = Uri.decode(str2.substring(indexOf + 1));
                            if ("reattribution".equals(decode) && IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE.equals(decode2)) {
                                return true;
                            }
                            if (b2 != null) {
                                for (Pair<String, Oh.a> pair : b2.f13648a) {
                                    if (A2.a(pair.first, decode) && ((obj = pair.second) == null || ((Oh.a) obj).f13649a.equals(decode2))) {
                                        return true;
                                    }
                                }
                                continue;
                            } else {
                                continue;
                            }
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }
}
