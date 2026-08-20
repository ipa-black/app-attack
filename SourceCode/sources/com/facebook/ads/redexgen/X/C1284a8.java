package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.a8  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1284a8 extends K1 {
    public final /* synthetic */ C1283a7 A00;
    public final /* synthetic */ Map A01;
    public final /* synthetic */ Map A02;

    public C1284a8(C1283a7 c1283a7, Map map, Map map2) {
        this.A00 = c1283a7;
        this.A02 = map;
        this.A01 = map2;
    }

    @Override // com.facebook.ads.redexgen.X.K1
    public final void A06() {
        AnonymousClass11 anonymousClass11;
        C1203Xc c1203Xc;
        AnonymousClass11 anonymousClass112;
        anonymousClass11 = this.A00.A01;
        if (!TextUtils.isEmpty(anonymousClass11.A0Y())) {
            HashMap hashMap = new HashMap();
            Map<String, String> extraData = this.A02;
            hashMap.putAll(extraData);
            Map<String, String> extraData2 = this.A01;
            hashMap.putAll(extraData2);
            c1203Xc = this.A00.A09;
            InterfaceC0821Ia A09 = c1203Xc.A09();
            anonymousClass112 = this.A00.A01;
            A09.A9X(anonymousClass112.A0Y(), hashMap);
        }
    }
}
