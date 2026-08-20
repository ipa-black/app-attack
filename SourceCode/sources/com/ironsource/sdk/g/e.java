package com.ironsource.sdk.g;
/* loaded from: classes3.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public String f12065a;

    /* renamed from: b  reason: collision with root package name */
    public int f12066b;

    public e(int i, String str) {
        this.f12066b = i;
        this.f12065a = str == null ? "" : str;
    }

    public final String toString() {
        return "error - code:" + this.f12066b + ", message:" + this.f12065a;
    }
}
