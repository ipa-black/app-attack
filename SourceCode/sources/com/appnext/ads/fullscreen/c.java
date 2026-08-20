package com.appnext.ads.fullscreen;

import androidx.exifinterface.media.ExifInterface;
import com.appnext.core.p;
import java.util.HashMap;
/* loaded from: classes.dex */
public final class c extends p {
    private static c aP;
    private String aQ = "https://cdn.appnext.com/tools/sdk/confign/fullscreen/" + com.appnext.core.f.bi() + "/fullscreen_config.txt";
    private HashMap<String, String> aR = null;

    public static synchronized c m() {
        c cVar;
        synchronized (c.class) {
            if (aP == null) {
                aP = new c();
            }
            cVar = aP;
        }
        return cVar;
    }

    private c() {
    }

    @Override // com.appnext.core.p
    protected final String getUrl() {
        return this.aQ;
    }

    @Override // com.appnext.core.p
    protected final HashMap<String, String> n() {
        return this.aR;
    }

    public final void setUrl(String str) {
        this.aQ = str;
    }

    @Override // com.appnext.core.p
    public final void a(HashMap<String, String> hashMap) {
        this.aR = hashMap;
    }

    @Override // com.appnext.core.p
    protected final HashMap<String, String> o() {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("can_close", "true");
        hashMap.put("show_close", "true");
        hashMap.put("show_close_time", "2000");
        hashMap.put("video_length", "15");
        hashMap.put("mute", "false");
        hashMap.put("urlApp_protection", "false");
        hashMap.put("pview", "true");
        hashMap.put("min_internet_connection_video", "3g");
        hashMap.put("banner_expiration_time", "0");
        hashMap.put("postpone_vta_sec", "0");
        hashMap.put("postpone_impression_sec", "0");
        hashMap.put("resolve_timeout", "8");
        hashMap.put("num_saved_videos", "5");
        hashMap.put("caption_text_time", ExifInterface.GPS_MEASUREMENT_3D);
        hashMap.put("ads_caching_time_minutes", "0");
        hashMap.put("gdpr", "false");
        hashMap.put("clickType_a", "0");
        hashMap.put("clickType_b", "0");
        hashMap.put("didPrivacy", "false");
        hashMap.put("stp_flag", "false");
        return hashMap;
    }
}
