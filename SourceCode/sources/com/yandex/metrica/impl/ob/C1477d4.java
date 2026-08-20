package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.D3;
/* renamed from: com.yandex.metrica.impl.ob.d4  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1477d4 extends L3 {
    private final String A;
    private final C1845s2 B;

    public C1477d4(Context context, I3 i3, D3.a aVar, C1845s2 c1845s2, C1790pi c1790pi, AbstractC1933vi abstractC1933vi) {
        this(context, i3, new B3(), new C1965x2(), new M3(context, i3, aVar, abstractC1933vi, c1790pi, new C1427b4(c1845s2), F0.g().q().d(), A2.b(context, i3.b()), F0.g().h()), c1845s2);
    }

    @Override // com.yandex.metrica.impl.ob.L3, com.yandex.metrica.impl.ob.S3
    public synchronized void a(D3.a aVar) {
        super.a(aVar);
        this.B.a(this.A, aVar.l);
    }

    C1477d4(Context context, I3 i3, B3 b3, C1965x2 c1965x2, M3 m3, C1845s2 c1845s2) {
        super(context, i3, b3, c1965x2, m3);
        this.A = i3.a();
        this.B = c1845s2;
    }
}
