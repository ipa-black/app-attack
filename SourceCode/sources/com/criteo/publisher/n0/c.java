package com.criteo.publisher.n0;

import android.content.Context;
import com.criteo.publisher.model.AdSize;
/* compiled from: AndroidUtil.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final Context f9212a;

    /* renamed from: b  reason: collision with root package name */
    private final k f9213b;

    public c(Context context, k kVar) {
        this.f9212a = context;
        this.f9213b = kVar;
    }

    public int a() {
        AdSize a2 = this.f9213b.a();
        return a2.getWidth() < a2.getHeight() ? 1 : 2;
    }

    public int a(int i) {
        return (int) Math.ceil(i * this.f9212a.getResources().getDisplayMetrics().density);
    }
}
