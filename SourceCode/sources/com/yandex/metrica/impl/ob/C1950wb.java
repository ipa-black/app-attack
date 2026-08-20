package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.appodeal.advertising.AdvertisingInfo;
/* renamed from: com.yandex.metrica.impl.ob.wb  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1950wb implements InterfaceC1926vb {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC1926vb f15965a;

    /* renamed from: com.yandex.metrica.impl.ob.wb$a */
    /* loaded from: classes5.dex */
    class a implements InterfaceC1818qm<C1902ub> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f15966a;

        a(Context context) {
            this.f15966a = context;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1818qm
        /* renamed from: b */
        public C1902ub a() {
            return C1950wb.this.f15965a.a(this.f15966a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.wb$b */
    /* loaded from: classes5.dex */
    class b implements InterfaceC1818qm<C1902ub> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f15968a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Gb f15969b;

        b(Context context, Gb gb) {
            this.f15968a = context;
            this.f15969b = gb;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1818qm
        public C1902ub a() {
            return C1950wb.this.f15965a.a(this.f15968a, this.f15969b);
        }
    }

    public C1950wb(InterfaceC1926vb interfaceC1926vb) {
        this.f15965a = interfaceC1926vb;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1926vb
    public C1902ub a(Context context) {
        return a(new a(context));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1926vb
    public C1902ub a(Context context, Gb gb) {
        return a(new b(context, gb));
    }

    private C1902ub a(InterfaceC1818qm<C1902ub> interfaceC1818qm) {
        C1902ub a2 = interfaceC1818qm.a();
        C1878tb c1878tb = a2.f15814a;
        return (c1878tb == null || !AdvertisingInfo.defaultAdvertisingId.equals(c1878tb.f15758b)) ? a2 : new C1902ub(null, U0.INVALID_ADV_ID, "AdvId is invalid: 00000000-0000-0000-0000-000000000000");
    }
}
