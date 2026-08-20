package com.bytedance.adsdk.lottie.fl;

import android.util.JsonReader;
import com.bytedance.adsdk.lottie.ac.cJ.MQ;
import com.explorestack.iab.utils.m;
import com.onesignal.NotificationBundleProcessor;
import java.io.IOException;
/* compiled from: ShapeTrimPathParser.java */
/* loaded from: classes2.dex */
class ip {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.lottie.ac.cJ.MQ Qhi(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror) throws IOException {
        String str = null;
        MQ.Qhi qhi = null;
        com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar = null;
        com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar2 = null;
        com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar3 = null;
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case 101:
                    if (nextName.equals("e")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 109:
                    if (nextName.equals(m.o)) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 111:
                    if (nextName.equals(NotificationBundleProcessor.PUSH_MINIFIED_BUTTONS_LIST)) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 115:
                    if (nextName.equals("s")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 3324:
                    if (nextName.equals("hd")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 3519:
                    if (nextName.equals("nm")) {
                        c2 = 5;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    cJVar2 = fl.Qhi(jsonReader, ror, false);
                    break;
                case 1:
                    qhi = MQ.Qhi.Qhi(jsonReader.nextInt());
                    break;
                case 2:
                    cJVar3 = fl.Qhi(jsonReader, ror, false);
                    break;
                case 3:
                    cJVar = fl.Qhi(jsonReader, ror, false);
                    break;
                case 4:
                    z = jsonReader.nextBoolean();
                    break;
                case 5:
                    str = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        return new com.bytedance.adsdk.lottie.ac.cJ.MQ(str, qhi, cJVar, cJVar2, cJVar3, z);
    }
}
