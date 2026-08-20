package com.bytedance.adsdk.lottie.fl;

import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;
/* compiled from: ScaleXYParser.java */
/* loaded from: classes2.dex */
public class js implements xyz<com.bytedance.adsdk.lottie.ROR.ac> {
    public static final js Qhi = new js();

    private js() {
    }

    @Override // com.bytedance.adsdk.lottie.fl.xyz
    /* renamed from: Qhi */
    public com.bytedance.adsdk.lottie.ROR.ac cJ(JsonReader jsonReader, float f2) throws IOException {
        boolean z = jsonReader.peek() == JsonToken.BEGIN_ARRAY;
        if (z) {
            jsonReader.beginArray();
        }
        float nextDouble = (float) jsonReader.nextDouble();
        float nextDouble2 = (float) jsonReader.nextDouble();
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
        if (z) {
            jsonReader.endArray();
        }
        return new com.bytedance.adsdk.lottie.ROR.ac((nextDouble / 100.0f) * f2, (nextDouble2 / 100.0f) * f2);
    }
}
