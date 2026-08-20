package com.ironsource.mediationsdk.a;

import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private int f10935a;

    /* renamed from: b  reason: collision with root package name */
    private long f10936b;

    /* renamed from: c  reason: collision with root package name */
    private JSONObject f10937c;

    public c(int i, long j, JSONObject jSONObject) {
        this.f10935a = i;
        this.f10936b = j;
        this.f10937c = jSONObject;
    }

    public c(int i, JSONObject jSONObject) {
        this.f10936b = -1L;
        this.f10935a = i;
        this.f10936b = System.currentTimeMillis();
        if (jSONObject == null) {
            this.f10937c = new JSONObject();
        } else {
            this.f10937c = jSONObject;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(String str, int i) {
        if ("ironbeast".equals(str)) {
            return new e(i);
        }
        if ("outcome".equals(str)) {
            return new f(i);
        }
        if (i == 2) {
            return new e(i);
        }
        if (i == 3) {
            return new f(i);
        }
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.NATIVE, "EventsFormatterFactory failed to instantiate a formatter (type: " + str + ", adUnit: " + i + ")", 2);
        return null;
    }

    public int a() {
        return this.f10935a;
    }

    public void a(int i) {
        this.f10935a = i;
    }

    public void a(String str, Object obj) {
        try {
            this.f10937c.put(str, obj);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public long b() {
        return this.f10936b;
    }

    public String c() {
        return this.f10937c.toString();
    }

    public JSONObject d() {
        return this.f10937c;
    }
}
