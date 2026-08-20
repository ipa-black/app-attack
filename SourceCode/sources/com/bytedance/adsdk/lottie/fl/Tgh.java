package com.bytedance.adsdk.lottie.fl;

import android.util.JsonReader;
import java.io.IOException;
/* compiled from: BlurEffectParser.java */
/* loaded from: classes2.dex */
class Tgh {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.lottie.ac.cJ.Qhi Qhi(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror) throws IOException {
        com.bytedance.adsdk.lottie.ac.cJ.Qhi qhi = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (nextName.equals("ef")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    com.bytedance.adsdk.lottie.ac.cJ.Qhi cJ = cJ(jsonReader, ror);
                    if (cJ != null) {
                        qhi = cJ;
                    }
                }
                jsonReader.endArray();
            } else {
                jsonReader.skipValue();
            }
        }
        return qhi;
    }

    private static com.bytedance.adsdk.lottie.ac.cJ.Qhi cJ(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror) throws IOException {
        jsonReader.beginObject();
        com.bytedance.adsdk.lottie.ac.cJ.Qhi qhi = null;
        while (true) {
            boolean z = false;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                nextName.hashCode();
                if (nextName.equals("v")) {
                    if (z) {
                        qhi = new com.bytedance.adsdk.lottie.ac.cJ.Qhi(fl.Qhi(jsonReader, ror));
                    } else {
                        jsonReader.skipValue();
                    }
                } else if (nextName.equals("ty")) {
                    if (jsonReader.nextInt() == 0) {
                        z = true;
                    }
                } else {
                    jsonReader.skipValue();
                }
            }
            jsonReader.endObject();
            return qhi;
        }
    }
}
