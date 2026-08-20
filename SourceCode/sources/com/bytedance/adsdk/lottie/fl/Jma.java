package com.bytedance.adsdk.lottie.fl;

import android.util.JsonReader;
import java.io.IOException;
/* compiled from: RoundedCornersParser.java */
/* loaded from: classes2.dex */
public class Jma {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.lottie.ac.cJ.iMK Qhi(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror) throws IOException {
        String str = null;
        com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar = null;
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case 114:
                    if (nextName.equals("r")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 3324:
                    if (nextName.equals("hd")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 3519:
                    if (nextName.equals("nm")) {
                        c2 = 2;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    cJVar = fl.Qhi(jsonReader, ror, true);
                    break;
                case 1:
                    z = jsonReader.nextBoolean();
                    break;
                case 2:
                    str = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        if (z) {
            return null;
        }
        return new com.bytedance.adsdk.lottie.ac.cJ.iMK(str, cJVar);
    }
}
