package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufStateStorage;
import com.yandex.metrica.coreutils.services.SystemTimeProvider;
import com.yandex.metrica.impl.ob.C1490dh;
/* renamed from: com.yandex.metrica.impl.ob.ah  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1415ah {

    /* renamed from: a  reason: collision with root package name */
    private ProtobufStateStorage<C1515eh> f14415a;

    /* renamed from: b  reason: collision with root package name */
    private C1515eh f14416b;

    /* renamed from: c  reason: collision with root package name */
    private SystemTimeProvider f14417c;

    /* renamed from: d  reason: collision with root package name */
    private C1565gh f14418d;

    /* renamed from: e  reason: collision with root package name */
    private a f14419e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.ah$a */
    /* loaded from: classes5.dex */
    public interface a {
    }

    public C1415ah(ProtobufStateStorage<C1515eh> protobufStateStorage, a aVar) {
        this(protobufStateStorage, aVar, new SystemTimeProvider(), new C1565gh(protobufStateStorage));
    }

    public void a(C1515eh c1515eh) {
        this.f14415a.save(c1515eh);
        this.f14416b = c1515eh;
        this.f14418d.a();
        C1490dh.a aVar = (C1490dh.a) this.f14419e;
        C1490dh.this.b();
        C1490dh.this.f14613h = false;
    }

    C1415ah(ProtobufStateStorage<C1515eh> protobufStateStorage, a aVar, SystemTimeProvider systemTimeProvider, C1565gh c1565gh) {
        this.f14415a = protobufStateStorage;
        this.f14416b = (C1515eh) protobufStateStorage.read();
        this.f14417c = systemTimeProvider;
        this.f14418d = c1565gh;
        this.f14419e = aVar;
    }

    public void a() {
        C1515eh c1515eh = this.f14416b;
        C1515eh c1515eh2 = new C1515eh(c1515eh.f14686a, c1515eh.f14687b, this.f14417c.currentTimeMillis(), true, true);
        this.f14415a.save(c1515eh2);
        this.f14416b = c1515eh2;
        C1490dh.a aVar = (C1490dh.a) this.f14419e;
        C1490dh.this.b();
        C1490dh.this.f14613h = false;
    }
}
