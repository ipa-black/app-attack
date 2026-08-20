package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.executors.ICommonExecutor;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Mf {

    /* renamed from: a  reason: collision with root package name */
    private final ICommonExecutor f13487a;

    /* renamed from: b  reason: collision with root package name */
    private final Sf f13488b;

    /* renamed from: c  reason: collision with root package name */
    private final Kf f13489c;

    /* renamed from: d  reason: collision with root package name */
    private final Kn<String> f13490d;

    /* renamed from: e  reason: collision with root package name */
    private final Kn<String> f13491e;

    /* loaded from: classes5.dex */
    public static final class a extends AbstractRunnableC1520em {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f13493b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f13494c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f13495d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Map f13496e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Map f13497f;

        a(int i, String str, String str2, Map map, Map map2) {
            this.f13493b = i;
            this.f13494c = str;
            this.f13495d = str2;
            this.f13496e = map;
            this.f13497f = map2;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC1520em
        public void a() {
            Mf.a(Mf.this).a(this.f13493b, this.f13494c, this.f13495d, this.f13496e, this.f13497f);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends AbstractRunnableC1520em {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f13499b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ byte[] f13500c;

        b(String str, byte[] bArr) {
            this.f13499b = str;
            this.f13500c = bArr;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC1520em
        public void a() {
            Mf.a(Mf.this).a(this.f13499b, this.f13500c);
        }
    }

    public Mf(ICommonExecutor iCommonExecutor, Sf sf, Kf kf, Kn<String> kn, Kn<String> kn2) {
        this.f13487a = iCommonExecutor;
        this.f13488b = sf;
        this.f13489c = kf;
        this.f13490d = kn;
        this.f13491e = kn2;
    }

    public final void a(int i, String str, String str2, Map<String, String> map, Map<String, byte[]> map2) {
        this.f13489c.a(null);
        this.f13490d.a(str);
        this.f13487a.execute(new a(i, str, str2, map, map2));
    }

    public Mf(ICommonExecutor iCommonExecutor) {
        this(iCommonExecutor, new Sf());
    }

    private Mf(ICommonExecutor iCommonExecutor, Sf sf) {
        this(iCommonExecutor, sf, new Kf(sf), new Hn(new Gn("Event name")), new Hn(new Gn("Session extra key")));
    }

    public final void a(String str, byte[] bArr) {
        this.f13491e.a(str);
        this.f13487a.execute(new b(str, bArr));
    }

    public final boolean a() {
        this.f13488b.getClass();
        return R2.h();
    }

    public static final K0 a(Mf mf) {
        mf.f13488b.getClass();
        R2 k = R2.k();
        Intrinsics.checkNotNull(k);
        Intrinsics.checkNotNullExpressionValue(k, "provider.peekInitializedImpl()!!");
        C1648k1 d2 = k.d();
        Intrinsics.checkNotNull(d2);
        Intrinsics.checkNotNullExpressionValue(d2, "provider.peekInitialized…rterApiConsumerProvider!!");
        K0 b2 = d2.b();
        Intrinsics.checkNotNullExpressionValue(b2, "provider.peekInitialized…erProvider!!.mainReporter");
        return b2;
    }
}
