package com.yandex.metrica.impl.ob;

import android.content.Context;
/* loaded from: classes5.dex */
public abstract class V1<T> {

    /* renamed from: a  reason: collision with root package name */
    protected final Context f14135a;

    /* renamed from: b  reason: collision with root package name */
    private final String f14136b;

    /* renamed from: c  reason: collision with root package name */
    private final String f14137c;

    public V1(Context context, String str, String str2) {
        this.f14135a = context;
        this.f14136b = str;
        this.f14137c = str2;
    }

    public T a() {
        int identifier = this.f14135a.getResources().getIdentifier(this.f14136b, this.f14137c, this.f14135a.getPackageName());
        if (identifier != 0) {
            try {
                return a(identifier);
            } catch (Throwable unused) {
                return null;
            }
        }
        return null;
    }

    protected abstract T a(int i);
}
