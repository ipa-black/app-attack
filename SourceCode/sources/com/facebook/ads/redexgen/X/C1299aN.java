package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import java.util.Collection;
import org.json.JSONObject;
/* renamed from: com.facebook.ads.redexgen.X.aN  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1299aN implements InterfaceC04000i {
    public final /* synthetic */ C1203Xc A00;
    public final /* synthetic */ String A01;
    public final /* synthetic */ JSONObject A02;

    public C1299aN(JSONObject jSONObject, C1203Xc c1203Xc, String str) {
        this.A02 = jSONObject;
        this.A00 = c1203Xc;
        this.A01 = str;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC04000i
    public final String A6B() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC04000i
    @Nullable
    public final Collection<String> A6U() {
        return C04010j.A03(this.A00, this.A02);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC04000i
    @Nullable
    public final EnumC03990h A6w() {
        return C04010j.A00(this.A02);
    }
}
