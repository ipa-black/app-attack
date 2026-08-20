package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.core.api.ProtobufStateStorage;
import com.yandex.metrica.impl.ob.InterfaceC1843s0;
import com.yandex.metrica.impl.ob.InterfaceC1915v0;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.r0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1819r0<CANDIDATE, CHOSEN extends InterfaceC1915v0, STORAGE extends InterfaceC1843s0<CANDIDATE, CHOSEN>> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f15601a;

    /* renamed from: b  reason: collision with root package name */
    private final ProtobufStateStorage<STORAGE> f15602b;

    /* renamed from: c  reason: collision with root package name */
    private final AbstractC1867t0<CHOSEN> f15603c;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC2013z2<CANDIDATE, CHOSEN> f15604d;

    /* renamed from: e  reason: collision with root package name */
    private final InterfaceC1821r2<CANDIDATE, CHOSEN, STORAGE> f15605e;

    /* renamed from: f  reason: collision with root package name */
    private final InterfaceC1425b2<CHOSEN> f15606f;

    /* renamed from: g  reason: collision with root package name */
    private final Y1 f15607g;

    /* renamed from: h  reason: collision with root package name */
    private final InterfaceC1498e0 f15608h;
    private STORAGE i;

    public C1819r0(Context context, ProtobufStateStorage<STORAGE> protobufStateStorage, AbstractC1867t0<CHOSEN> abstractC1867t0, InterfaceC2013z2<CANDIDATE, CHOSEN> interfaceC2013z2, InterfaceC1821r2<CANDIDATE, CHOSEN, STORAGE> interfaceC1821r2, InterfaceC1425b2<CHOSEN> interfaceC1425b2, Y1 y1, InterfaceC1498e0 interfaceC1498e0, STORAGE storage, String str) {
        this.f15601a = context;
        this.f15602b = protobufStateStorage;
        this.f15603c = abstractC1867t0;
        this.f15604d = interfaceC2013z2;
        this.f15605e = interfaceC1821r2;
        this.f15606f = interfaceC1425b2;
        this.f15607g = y1;
        this.f15608h = interfaceC1498e0;
        this.i = storage;
    }

    private final synchronized CHOSEN c() {
        if (!this.f15607g.a()) {
            CHOSEN invoke = this.f15606f.invoke();
            this.f15607g.b();
            if (invoke != null) {
                b(invoke);
            }
        }
        C1575h2.a("Choosing distribution data: %s", this.i);
        return (CHOSEN) this.i.b();
    }

    public final synchronized STORAGE a() {
        return this.i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final synchronized boolean b(CHOSEN chosen) {
        boolean z = false;
        if (chosen.a() == EnumC1891u0.UNDEFINED) {
            return false;
        }
        List<? extends CANDIDATE> invoke = this.f15604d.invoke(this.i.a(), chosen);
        boolean z2 = invoke != null;
        if (invoke == null) {
            invoke = this.i.a();
        }
        if (this.f15603c.a(chosen, this.i.b())) {
            z = true;
        } else {
            chosen = (CHOSEN) this.i.b();
        }
        if (z || z2) {
            STORAGE invoke2 = this.f15605e.invoke(chosen, invoke);
            this.i = invoke2;
            this.f15602b.save(invoke2);
        }
        return z;
    }

    public final CHOSEN a(CHOSEN chosen) {
        CHOSEN c2;
        this.f15608h.a(this.f15601a);
        synchronized (this) {
            b(chosen);
            c2 = c();
        }
        return c2;
    }

    public final CHOSEN b() {
        this.f15608h.a(this.f15601a);
        return c();
    }
}
