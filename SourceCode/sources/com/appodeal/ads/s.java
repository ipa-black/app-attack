package com.appodeal.ads;

import com.appodeal.ads.s;
/* loaded from: classes.dex */
public abstract class s<SelfType extends s> {

    /* renamed from: a  reason: collision with root package name */
    public boolean f7445a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f7446b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f7447c;

    /* renamed from: d  reason: collision with root package name */
    public final String f7448d;

    /* renamed from: e  reason: collision with root package name */
    public final String f7449e;

    public s(String str, String str2) {
        this.f7448d = str;
        this.f7449e = str2;
    }

    public final String a() {
        return this.f7445a ? this.f7449e : this.f7448d;
    }

    public final boolean b() {
        return this.f7445a;
    }

    public final boolean c() {
        return this.f7447c;
    }
}
