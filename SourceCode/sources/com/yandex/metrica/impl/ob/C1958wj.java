package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.util.SparseArray;
/* renamed from: com.yandex.metrica.impl.ob.wj  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1958wj implements Yj<C1910uj> {

    /* renamed from: d  reason: collision with root package name */
    private static final SparseArray<String> f15988d = new a();

    /* renamed from: a  reason: collision with root package name */
    private final Ij f15989a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC2024zd f15990b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC2024zd f15991c;

    /* renamed from: com.yandex.metrica.impl.ob.wj$a */
    /* loaded from: classes5.dex */
    class a extends SparseArray<String> {
        a() {
            put(0, null);
            put(7, "1xRTT");
            put(4, "CDMA");
            put(2, "EDGE");
            put(14, "eHRPD");
            put(5, "EVDO rev.0");
            put(6, "EVDO rev.A");
            put(12, "EVDO rev.B");
            put(1, "GPRS");
            put(8, "HSDPA");
            put(10, "HSPA");
            put(15, "HSPA+");
            put(9, "HSUPA");
            put(11, "iDen");
            put(3, "UMTS");
            put(12, "EVDO rev.B");
            put(14, "eHRPD");
            put(13, "LTE");
            put(15, "HSPA+");
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.wj$b */
    /* loaded from: classes5.dex */
    class b implements InterfaceC2024zd {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C2000yd f15992a;

        b(C1958wj c1958wj, C2000yd c2000yd) {
            this.f15992a = c2000yd;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC2024zd
        public boolean a(Context context) {
            this.f15992a.getClass();
            return false;
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.wj$c */
    /* loaded from: classes5.dex */
    class c implements InterfaceC2024zd {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C2000yd f15993a;

        c(C1958wj c1958wj, C2000yd c2000yd) {
            this.f15993a = c2000yd;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC2024zd
        public boolean a(Context context) {
            return this.f15993a.b(context);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.wj$d */
    /* loaded from: classes5.dex */
    class d implements InterfaceC2024zd {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C2000yd f15994a;

        d(C1958wj c1958wj, C2000yd c2000yd) {
            this.f15994a = c2000yd;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC2024zd
        public boolean a(Context context) {
            return this.f15994a.a(context);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.wj$e */
    /* loaded from: classes5.dex */
    class e implements InterfaceC2024zd {
        e(C1958wj c1958wj) {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC2024zd
        public boolean a(Context context) {
            return true;
        }
    }

    public C1958wj(Ij ij, C2000yd c2000yd) {
        this.f15989a = ij;
        if (A2.a(29)) {
            this.f15990b = new b(this, c2000yd);
            this.f15991c = new c(this, c2000yd);
            return;
        }
        this.f15990b = new d(this, c2000yd);
        this.f15991c = new e(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0078 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x004c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00d8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00ec A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object b() {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C1958wj.b():java.lang.Object");
    }
}
