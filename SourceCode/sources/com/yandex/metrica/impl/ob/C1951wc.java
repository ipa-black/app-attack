package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.core.api.executors.IHandlerExecutor;
/* renamed from: com.yandex.metrica.impl.ob.wc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1951wc {

    /* renamed from: a  reason: collision with root package name */
    private final IHandlerExecutor f15971a = F0.g().q().b();

    /* renamed from: b  reason: collision with root package name */
    private final U7 f15972b;

    /* renamed from: c  reason: collision with root package name */
    private final T7 f15973c;

    /* renamed from: d  reason: collision with root package name */
    private final Ed f15974d;

    /* renamed from: e  reason: collision with root package name */
    private final C2000yd f15975e;

    public C1951wc(Context context) {
        this.f15972b = C1632ja.a(context).f();
        this.f15973c = C1632ja.a(context).e();
        Ed ed = new Ed();
        this.f15974d = ed;
        this.f15975e = new C2000yd(ed.a());
    }

    public IHandlerExecutor a() {
        return this.f15971a;
    }

    public T7 b() {
        return this.f15973c;
    }

    public U7 c() {
        return this.f15972b;
    }

    public C2000yd d() {
        return this.f15975e;
    }

    public Ed e() {
        return this.f15974d;
    }
}
