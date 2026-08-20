package com.bytedance.adsdk.lottie.fl;

import android.util.JsonReader;
import com.onesignal.NotificationBundleProcessor;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RepeaterParser.java */
/* loaded from: classes2.dex */
public class lG {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.lottie.ac.cJ.ABk Qhi(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror) throws IOException {
        String str = null;
        com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar = null;
        com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar2 = null;
        com.bytedance.adsdk.lottie.ac.Qhi.ABk aBk = null;
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case 99:
                    if (nextName.equals("c")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 111:
                    if (nextName.equals(NotificationBundleProcessor.PUSH_MINIFIED_BUTTONS_LIST)) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 3324:
                    if (nextName.equals("hd")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 3519:
                    if (nextName.equals("nm")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 3710:
                    if (nextName.equals("tr")) {
                        c2 = 4;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    cJVar = fl.Qhi(jsonReader, ror, false);
                    break;
                case 1:
                    cJVar2 = fl.Qhi(jsonReader, ror, false);
                    break;
                case 2:
                    z = jsonReader.nextBoolean();
                    break;
                case 3:
                    str = jsonReader.nextString();
                    break;
                case 4:
                    aBk = ac.Qhi(jsonReader, ror);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        return new com.bytedance.adsdk.lottie.ac.cJ.ABk(str, cJVar, cJVar2, aBk, z);
    }
}
