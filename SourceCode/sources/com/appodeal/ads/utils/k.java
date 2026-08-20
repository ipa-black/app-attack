package com.appodeal.ads.utils;

import java.util.Objects;
/* loaded from: classes2.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public final int f7777a;

    /* renamed from: b  reason: collision with root package name */
    public final String f7778b;

    /* renamed from: c  reason: collision with root package name */
    public final String f7779c;

    /* renamed from: d  reason: collision with root package name */
    public final int f7780d;

    /* renamed from: e  reason: collision with root package name */
    public final double f7781e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f7782f;

    /* renamed from: g  reason: collision with root package name */
    public final int f7783g;

    public k(int i, int i2, String str, String str2, String str3, String str4, boolean z) {
        this.f7777a = i;
        this.f7783g = i2;
        this.f7778b = str;
        this.f7779c = str2;
        this.f7780d = Integer.parseInt(str3);
        this.f7781e = Double.parseDouble(str4);
        this.f7782f = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || k.class != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.f7779c, ((k) obj).f7779c);
    }

    public final int hashCode() {
        String str = this.f7779c;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }
}
