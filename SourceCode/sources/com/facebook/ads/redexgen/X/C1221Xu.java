package com.facebook.ads.redexgen.X;

import android.os.Handler;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.ads.redexgen.X.Xu  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1221Xu extends K1 {
    public static byte[] A01;
    public final /* synthetic */ C05305m A00;

    static {
        A02();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 18);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A01 = new byte[]{62, 44, 44, 58, 43, 44};
    }

    public C1221Xu(C05305m c05305m) {
        this.A00 = c05305m;
    }

    @Override // com.facebook.ads.redexgen.X.K1
    public final void A06() {
        Handler handler;
        JSONObject jSONObject;
        C6M c6m;
        String str;
        String str2;
        try {
            jSONObject = this.A00.A05;
            JSONArray jSONArray = jSONObject.getJSONArray(A00(0, 6, 77));
            for (int i = 0; i < jSONArray.length(); i++) {
                C05285k assetData = C05285k.A00(jSONArray.getJSONObject(i));
                this.A00.A09(assetData.A04, assetData);
            }
            c6m = this.A00.A02;
            C1223Xw c1223Xw = new C1223Xw(this);
            str = this.A00.A04;
            str2 = this.A00.A03;
            c6m.A0W(c1223Xw, new C6F(str, str2));
        } catch (JSONException unused) {
            handler = this.A00.A00;
            handler.post(new C1222Xv(this));
        }
    }
}
