package com.bytedance.adsdk.lottie.fl;

import android.graphics.PointF;
import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
/* compiled from: AnimatablePathValueParser.java */
/* loaded from: classes2.dex */
public class Qhi {
    public static com.bytedance.adsdk.lottie.ac.Qhi.Tgh Qhi(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                arrayList.add(Eh.Qhi(jsonReader, ror));
            }
            jsonReader.endArray();
            EBS.Qhi(arrayList);
        } else {
            arrayList.add(new com.bytedance.adsdk.lottie.ROR.Qhi(MQ.cJ(jsonReader, com.bytedance.adsdk.lottie.Tgh.ROR.Qhi())));
        }
        return new com.bytedance.adsdk.lottie.ac.Qhi.Tgh(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.lottie.ac.Qhi.iMK<PointF, PointF> cJ(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror) throws IOException {
        jsonReader.beginObject();
        com.bytedance.adsdk.lottie.ac.Qhi.Tgh tgh = null;
        com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar = null;
        com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar2 = null;
        boolean z = false;
        while (jsonReader.peek() != JsonToken.END_OBJECT) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case 107:
                    if (nextName.equals("k")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 120:
                    if (nextName.equals("x")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 121:
                    if (nextName.equals("y")) {
                        c2 = 2;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    tgh = Qhi(jsonReader, ror);
                    continue;
                case 1:
                    if (jsonReader.peek() == JsonToken.STRING) {
                        z = true;
                        break;
                    } else {
                        cJVar = fl.Qhi(jsonReader, ror);
                        continue;
                    }
                case 2:
                    if (jsonReader.peek() == JsonToken.STRING) {
                        z = true;
                        break;
                    } else {
                        cJVar2 = fl.Qhi(jsonReader, ror);
                        continue;
                    }
            }
            jsonReader.skipValue();
        }
        jsonReader.endObject();
        if (z) {
            ror.Qhi("Lottie doesn't support expressions.");
        }
        return tgh != null ? tgh : new com.bytedance.adsdk.lottie.ac.Qhi.WAv(cJVar, cJVar2);
    }
}
