package com.apm.insight.runtime;

import android.content.Context;
import com.appnext.ads.fullscreen.RewardedVideo;
import com.appodeal.ads.modules.common.internal.Constants;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
/* loaded from: classes.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private Context f1117a;

    /* renamed from: b  reason: collision with root package name */
    private HashMap<String, Long> f1118b;

    /* renamed from: c  reason: collision with root package name */
    private int f1119c = 50;

    /* renamed from: d  reason: collision with root package name */
    private int f1120d = 100;

    public h(Context context) {
        this.f1118b = null;
        this.f1117a = context;
        this.f1118b = c();
        b();
    }

    private void a(File file) {
        File g2 = com.apm.insight.l.n.g(this.f1117a);
        file.renameTo(new File(g2, String.valueOf(System.currentTimeMillis())));
        String[] list = g2.list();
        if (list != null && list.length > 5) {
            Arrays.sort(list);
            new File(g2, list[0]).delete();
        }
    }

    private void b() {
        this.f1119c = a.a(this.f1119c, "custom_event_settings", "npth_simple_setting", "crash_limit_issue");
        this.f1120d = a.a(this.f1120d, "custom_event_settings", "npth_simple_setting", "crash_limit_all");
    }

    private HashMap<String, Long> c() {
        JSONArray b2;
        File h2 = com.apm.insight.l.n.h(this.f1117a);
        HashMap<String, Long> hashMap = new HashMap<>();
        hashMap.put("time", Long.valueOf(System.currentTimeMillis()));
        try {
            b2 = com.apm.insight.l.h.b(h2.getAbsolutePath());
        } catch (IOException unused) {
        } catch (Throwable th) {
            com.apm.insight.c.a().a("NPTH_CATCH", th);
        }
        if (com.apm.insight.l.k.a(b2)) {
            return hashMap;
        }
        Long decode = Long.decode(b2.optString(0, null));
        if (System.currentTimeMillis() - decode.longValue() > Constants.MILLIS_IN_DAY) {
            a(h2);
            return hashMap;
        }
        hashMap.put("time", decode);
        for (int i = 1; i < b2.length(); i++) {
            String[] split = b2.optString(i, "").split(" ");
            if (split.length == 2) {
                hashMap.put(split[0], Long.decode(split[1]));
            }
        }
        return hashMap;
    }

    public void a() {
        HashMap<String, Long> hashMap = this.f1118b;
        Long remove = hashMap.remove("time");
        if (remove == null) {
            com.apm.insight.c.a().a("NPTH_CATCH", new RuntimeException("err times, no time"));
            return;
        }
        StringBuilder append = new StringBuilder().append(remove).append('\n');
        for (Map.Entry<String, Long> entry : hashMap.entrySet()) {
            append.append(entry.getKey()).append(' ').append(entry.getValue()).append('\n');
        }
        try {
            com.apm.insight.l.h.a(com.apm.insight.l.n.h(this.f1117a), append.toString(), false);
        } catch (IOException unused) {
        }
    }

    public boolean a(String str) {
        if (str == null) {
            str = RewardedVideo.VIDEO_MODE_DEFAULT;
        }
        return com.apm.insight.l.q.a(this.f1118b, str, 1L).longValue() < ((long) this.f1119c) && com.apm.insight.l.q.a(this.f1118b, "all", 1L).longValue() < ((long) this.f1120d);
    }
}
