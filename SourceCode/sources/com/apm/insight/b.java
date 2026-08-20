package com.apm.insight;

import android.text.TextUtils;
import org.json.JSONArray;
/* loaded from: classes.dex */
public class b implements ICrashCallback, IOOMCallback {

    /* renamed from: a  reason: collision with root package name */
    private IOOMCallback f695a;

    /* renamed from: b  reason: collision with root package name */
    private ICrashCallback f696b;

    /* renamed from: c  reason: collision with root package name */
    private String f697c;

    public b(String str, ICrashCallback iCrashCallback) {
        this.f697c = str;
        this.f696b = iCrashCallback;
    }

    public b(String str, IOOMCallback iOOMCallback) {
        this.f697c = str;
        this.f695a = iOOMCallback;
    }

    public void a(CrashType crashType, String str, String str2, String str3) {
        h a2;
        if (this.f696b == null || (a2 = h.a(this.f697c)) == null || !a2.a(str3, str2)) {
            return;
        }
        this.f696b.onCrash(crashType, str, null);
    }

    public void a(CrashType crashType, String str, Thread thread, JSONArray jSONArray) {
        if (this.f696b == null || jSONArray == null) {
            return;
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            if (TextUtils.equals(com.apm.insight.l.k.b(jSONArray.optJSONObject(i), "header", "aid"), this.f697c)) {
                this.f696b.onCrash(crashType, str, thread);
            }
        }
    }

    public void a(CrashType crashType, Throwable th, Thread thread, long j, JSONArray jSONArray) {
        if (this.f695a == null || jSONArray == null) {
            return;
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            if (TextUtils.equals(com.apm.insight.l.k.b(jSONArray.optJSONObject(i), "header", "aid"), this.f697c)) {
                this.f695a.onCrash(crashType, th, thread, j);
            }
        }
    }

    @Override // com.apm.insight.ICrashCallback
    public void onCrash(CrashType crashType, String str, Thread thread) {
    }

    @Override // com.apm.insight.IOOMCallback
    public void onCrash(CrashType crashType, Throwable th, Thread thread, long j) {
    }
}
