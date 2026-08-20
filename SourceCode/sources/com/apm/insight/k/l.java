package com.apm.insight.k;

import org.json.JSONObject;
/* loaded from: classes.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private final int f984a;

    /* renamed from: b  reason: collision with root package name */
    private String f985b;

    /* renamed from: c  reason: collision with root package name */
    private JSONObject f986c;

    /* renamed from: d  reason: collision with root package name */
    private byte[] f987d;

    public l(int i) {
        this.f984a = i;
    }

    public l(int i, String str) {
        this.f984a = i;
        this.f985b = str;
    }

    public l(int i, Throwable th) {
        this.f984a = i;
        if (th != null) {
            this.f985b = th.getMessage();
        }
    }

    public l(int i, JSONObject jSONObject) {
        this.f984a = i;
        this.f986c = jSONObject;
    }

    public l(int i, byte[] bArr) {
        this.f984a = i;
        this.f987d = bArr;
    }

    public boolean a() {
        return this.f984a != 207;
    }

    public byte[] b() {
        return this.f987d;
    }
}
