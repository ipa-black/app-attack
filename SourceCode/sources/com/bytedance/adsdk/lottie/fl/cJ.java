package com.bytedance.adsdk.lottie.fl;

import android.util.JsonReader;
import com.appnext.base.a.c.d;
import com.onesignal.NotificationBundleProcessor;
import java.io.IOException;
/* compiled from: AnimatableTextPropertiesParser.java */
/* loaded from: classes2.dex */
public class cJ {
    public static com.bytedance.adsdk.lottie.ac.Qhi.zc Qhi(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror) throws IOException {
        jsonReader.beginObject();
        com.bytedance.adsdk.lottie.ac.Qhi.zc zcVar = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (nextName.equals(NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY)) {
                zcVar = cJ(jsonReader, ror);
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return zcVar == null ? new com.bytedance.adsdk.lottie.ac.Qhi.zc(null, null, null, null) : zcVar;
    }

    private static com.bytedance.adsdk.lottie.ac.Qhi.zc cJ(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror) throws IOException {
        jsonReader.beginObject();
        com.bytedance.adsdk.lottie.ac.Qhi.Qhi qhi = null;
        com.bytedance.adsdk.lottie.ac.Qhi.Qhi qhi2 = null;
        com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar = null;
        com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar2 = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case 116:
                    if (nextName.equals(d.COLUMN_TYPE)) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 3261:
                    if (nextName.equals("fc")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 3664:
                    if (nextName.equals("sc")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 3684:
                    if (nextName.equals("sw")) {
                        c2 = 3;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    cJVar2 = fl.Qhi(jsonReader, ror);
                    break;
                case 1:
                    qhi = fl.ROR(jsonReader, ror);
                    break;
                case 2:
                    qhi2 = fl.ROR(jsonReader, ror);
                    break;
                case 3:
                    cJVar = fl.Qhi(jsonReader, ror);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return new com.bytedance.adsdk.lottie.ac.Qhi.zc(qhi, qhi2, cJVar, cJVar2);
    }
}
