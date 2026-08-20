package com.yandex.metrica.impl.ob;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.yandex.metrica.IReporter;
import java.util.HashMap;
/* loaded from: classes5.dex */
public class Y4 extends X4 {

    /* renamed from: b  reason: collision with root package name */
    private final IReporter f14298b;

    public Y4(L3 l3, IReporter iReporter) {
        super(l3);
        this.f14298b = iReporter;
    }

    @Override // com.yandex.metrica.impl.ob.S4
    public boolean a(C1448c0 c1448c0) {
        C1825r6 a2 = C1825r6.a(c1448c0.o());
        HashMap hashMap = new HashMap();
        hashMap.put(SessionDescription.ATTR_TYPE, a2.f15619a);
        hashMap.put("delivery_method", a2.f15620b);
        this.f14298b.reportEvent("crash_saved", hashMap);
        return false;
    }
}
