package com.apm.insight.nativecrash;

import android.text.TextUtils;
import com.apm.insight.l.n;
import com.unity3d.services.ads.gmascar.utils.ScarConstants;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, String> f1028a;

    public a(File file) {
        String a2;
        File c2 = n.c(file);
        if (!c2.exists() || c2.length() == 0 || (a2 = NativeImpl.a(c2.getAbsolutePath())) == null) {
            return;
        }
        String[] split = a2.split("\n");
        this.f1028a = new HashMap();
        for (String str : split) {
            String[] split2 = str.split("=");
            if (split2.length == 2) {
                this.f1028a.put(split2[0], split2[1]);
            }
        }
    }

    public boolean a() {
        Map<String, String> map = this.f1028a;
        return (map == null || map.isEmpty() || TextUtils.isEmpty(this.f1028a.get("process_name")) || TextUtils.isEmpty(this.f1028a.get("crash_thread_name")) || TextUtils.isEmpty(this.f1028a.get("pid")) || TextUtils.isEmpty(this.f1028a.get(ScarConstants.TOKEN_ID_KEY)) || TextUtils.isEmpty(this.f1028a.get("start_time")) || TextUtils.isEmpty(this.f1028a.get("crash_time")) || TextUtils.isEmpty(this.f1028a.get("signal_line"))) ? false : true;
    }

    public String b() {
        return this.f1028a.get("signal_line");
    }

    public Map<String, String> c() {
        return this.f1028a;
    }
}
