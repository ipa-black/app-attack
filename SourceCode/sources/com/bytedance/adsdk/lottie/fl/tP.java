package com.bytedance.adsdk.lottie.fl;

import android.util.JsonReader;
import java.io.IOException;
/* compiled from: IntegerParser.java */
/* loaded from: classes2.dex */
public class tP implements xyz<Integer> {
    public static final tP Qhi = new tP();

    private tP() {
    }

    @Override // com.bytedance.adsdk.lottie.fl.xyz
    /* renamed from: Qhi */
    public Integer cJ(JsonReader jsonReader, float f2) throws IOException {
        return Integer.valueOf(Math.round(MQ.cJ(jsonReader) * f2));
    }
}
