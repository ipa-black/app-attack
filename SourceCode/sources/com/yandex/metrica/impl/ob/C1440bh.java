package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufStateStorage;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.coreutils.services.SystemTimeProvider;
import com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.bh  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1440bh {

    /* renamed from: a  reason: collision with root package name */
    private ICommonExecutor f14472a;

    /* renamed from: b  reason: collision with root package name */
    private final ProtobufStateStorage<C1515eh> f14473b;

    /* renamed from: c  reason: collision with root package name */
    private b f14474c;

    /* renamed from: d  reason: collision with root package name */
    private C1924v9 f14475d;

    /* renamed from: e  reason: collision with root package name */
    private final CacheControlHttpsConnectionPerformer f14476e;

    /* renamed from: f  reason: collision with root package name */
    private final SystemTimeProvider f14477f;

    /* renamed from: g  reason: collision with root package name */
    private final C1760od f14478g;

    /* renamed from: h  reason: collision with root package name */
    private String f14479h;

    /* renamed from: com.yandex.metrica.impl.ob.bh$a */
    /* loaded from: classes5.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C1415ah f14480a;

        a(C1415ah c1415ah) {
            this.f14480a = c1415ah;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1440bh c1440bh = C1440bh.this;
            C1440bh.a(c1440bh, this.f14480a, c1440bh.f14479h);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.bh$b */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final C1614ih f14482a;

        public b() {
            this(new C1614ih());
        }

        public List<C1590hh> a(byte[] bArr) {
            ArrayList arrayList = new ArrayList();
            if (A2.a(bArr)) {
                return arrayList;
            }
            try {
                return this.f14482a.a(new String(bArr, com.google.android.exoplayer2.C.UTF8_NAME));
            } catch (UnsupportedEncodingException unused) {
                return arrayList;
            }
        }

        b(C1614ih c1614ih) {
            this.f14482a = c1614ih;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1440bh(android.content.Context r10, java.lang.String r11, com.yandex.metrica.core.api.executors.ICommonExecutor r12) {
        /*
            r9 = this;
            java.lang.Class<com.yandex.metrica.impl.ob.eh> r11 = com.yandex.metrica.impl.ob.C1515eh.class
            com.yandex.metrica.impl.ob.fa r11 = com.yandex.metrica.impl.ob.InterfaceC1533fa.b.a(r11)
            com.yandex.metrica.core.api.ProtobufStateStorage r2 = r11.a(r10)
            com.yandex.metrica.impl.ob.bh$b r3 = new com.yandex.metrica.impl.ob.bh$b
            r3.<init>()
            com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer r4 = new com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer
            com.yandex.metrica.impl.ob.F0 r11 = com.yandex.metrica.impl.ob.F0.g()
            com.yandex.metrica.impl.ob.sd r11 = r11.t()
            r11.getClass()
            r11 = 0
            r4.<init>(r11)
            com.yandex.metrica.impl.ob.v9 r6 = new com.yandex.metrica.impl.ob.v9
            r6.<init>()
            com.yandex.metrica.coreutils.services.SystemTimeProvider r7 = new com.yandex.metrica.coreutils.services.SystemTimeProvider
            r7.<init>()
            com.yandex.metrica.impl.ob.od r8 = new com.yandex.metrica.impl.ob.od
            r8.<init>(r10)
            r1 = 0
            r0 = r9
            r5 = r12
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C1440bh.<init>(android.content.Context, java.lang.String, com.yandex.metrica.core.api.executors.ICommonExecutor):void");
    }

    public void a(C1415ah c1415ah) {
        this.f14472a.execute(new a(c1415ah));
    }

    public boolean b(C1790pi c1790pi) {
        String str = this.f14479h;
        if (str == null) {
            return c1790pi.L() != null;
        }
        return !str.equals(c1790pi.L());
    }

    static void a(C1440bh c1440bh, C1415ah c1415ah, String str) {
        if (!c1440bh.f14478g.canBeExecuted() || str == null) {
            return;
        }
        c1440bh.f14476e.performConnection(str, new C1465ch(c1440bh, (C1515eh) c1440bh.f14473b.read(), c1415ah));
    }

    C1440bh(String str, ProtobufStateStorage protobufStateStorage, b bVar, CacheControlHttpsConnectionPerformer cacheControlHttpsConnectionPerformer, ICommonExecutor iCommonExecutor, C1924v9 c1924v9, SystemTimeProvider systemTimeProvider, C1760od c1760od) {
        this.f14479h = str;
        this.f14473b = protobufStateStorage;
        this.f14474c = bVar;
        this.f14476e = cacheControlHttpsConnectionPerformer;
        this.f14472a = iCommonExecutor;
        this.f14475d = c1924v9;
        this.f14477f = systemTimeProvider;
        this.f14478g = c1760od;
    }

    public void a(C1790pi c1790pi) {
        if (c1790pi != null) {
            this.f14479h = c1790pi.L();
        }
    }
}
