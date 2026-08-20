package com.bytedance.adsdk.lottie.fl;

import android.util.JsonReader;
import java.io.IOException;
/* compiled from: FloatParser.java */
/* loaded from: classes2.dex */
public class ABk implements xyz<Float> {
    public static final ABk Qhi = new ABk();

    private ABk() {
    }

    @Override // com.bytedance.adsdk.lottie.fl.xyz
    /* renamed from: Qhi */
    public Float cJ(JsonReader jsonReader, float f2) throws IOException {
        return Float.valueOf(MQ.cJ(jsonReader) * f2);
    }
}
