package com.appnext.banners;

import com.appnext.core.p;
import java.util.HashMap;
/* loaded from: classes.dex */
public final class d extends p {
    private static d df;

    @Override // com.appnext.core.p
    protected final HashMap<String, String> n() {
        return null;
    }

    public static synchronized d S() {
        d dVar;
        synchronized (d.class) {
            if (df == null) {
                df = new d();
            }
            dVar = df;
        }
        return dVar;
    }

    private d() {
    }

    @Override // com.appnext.core.p
    protected final String getUrl() {
        return "https://cdn.appnext.com/tools/sdk/confign/banner/" + com.appnext.core.f.bi() + "/banner_config.txt";
    }

    @Override // com.appnext.core.p
    protected final HashMap<String, String> o() {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("urlApp_protection", "true");
        hashMap.put("resolve_timeout", "8");
        hashMap.put("postpone_impression_sec", "0");
        hashMap.put("postpone_vta_sec", "0");
        hashMap.put("pview", "true");
        hashMap.put("banner_expiration_time", "0");
        hashMap.put("ads_caching_time_minutes", "0");
        hashMap.put("new_button_text", "Install");
        hashMap.put("existing_button_text", "Open");
        hashMap.put("gdpr", "false");
        hashMap.put("BANNER_cpiActiveFlow", com.ironsource.sdk.c.d.f11571a);
        hashMap.put("BANNER_cpcActiveFlow", "b");
        hashMap.put("LARGE_BANNER_cpiActiveFlow", com.ironsource.sdk.c.d.f11571a);
        hashMap.put("LARGE_BANNER_cpcActiveFlow", "b");
        hashMap.put("MEDIUM_RECTANGLE_cpiActiveFlow", com.ironsource.sdk.c.d.f11571a);
        hashMap.put("MEDIUM_RECTANGLE_cpcActiveFlow", "b");
        hashMap.put("didPrivacy", "false");
        hashMap.put("impOne", "true");
        hashMap.put("_arFlag", "true");
        hashMap.put("banner_ar", "10");
        hashMap.put("large_banner_ar", "10");
        hashMap.put("medium_rectangle_ar", "10");
        hashMap.put("stp_flag", "false");
        return hashMap;
    }
}
