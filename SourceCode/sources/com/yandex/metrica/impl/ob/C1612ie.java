package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.PreloadInfo;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.ie  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1612ie {

    /* renamed from: a  reason: collision with root package name */
    private C1512ee f14922a;

    public C1612ie(PreloadInfo preloadInfo, C1470cm c1470cm, boolean z) {
        if (preloadInfo != null) {
            if (TextUtils.isEmpty(preloadInfo.getTrackingId())) {
                if (c1470cm.isEnabled()) {
                    c1470cm.e("Required field \"PreloadInfo.trackingId\" is empty!\nThis preload info will be skipped.");
                    return;
                }
                return;
            }
            this.f14922a = new C1512ee(preloadInfo.getTrackingId(), new JSONObject(preloadInfo.getAdditionalParams()), true, z, EnumC1891u0.APP);
        }
    }

    public JSONObject a(JSONObject jSONObject) {
        C1512ee c1512ee = this.f14922a;
        if (c1512ee != null) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("trackingId", c1512ee.f14676a);
                    jSONObject2.put("additionalParams", c1512ee.f14677b);
                    jSONObject2.put("wasSet", c1512ee.f14678c);
                    jSONObject2.put("autoTracking", c1512ee.f14679d);
                    jSONObject2.put("source", c1512ee.f14680e.a());
                } catch (Throwable unused) {
                }
                jSONObject.put("preloadInfo", jSONObject2);
            } catch (Throwable unused2) {
            }
        }
        return jSONObject;
    }
}
