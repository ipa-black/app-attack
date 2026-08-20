package com.bytedance.adsdk.lottie.fl;

import android.util.JsonReader;
import java.io.IOException;
/* compiled from: ShapePathParser.java */
/* loaded from: classes2.dex */
class FQ {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.lottie.ac.cJ.kYc Qhi(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror) throws IOException {
        String str = null;
        com.bytedance.adsdk.lottie.ac.Qhi.hm hmVar = null;
        int i = 0;
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case 3324:
                    if (nextName.equals("hd")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 3432:
                    if (nextName.equals("ks")) {
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
                case 104415:
                    if (nextName.equals("ind")) {
                        c2 = 3;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    z = jsonReader.nextBoolean();
                    break;
                case 1:
                    hmVar = fl.fl(jsonReader, ror);
                    break;
                case 2:
                    str = jsonReader.nextString();
                    break;
                case 3:
                    i = jsonReader.nextInt();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        return new com.bytedance.adsdk.lottie.ac.cJ.kYc(str, i, hmVar, z);
    }
}
