package com.bytedance.adsdk.lottie.fl;

import android.graphics.Path;
import android.util.JsonReader;
import com.onesignal.NotificationBundleProcessor;
import java.io.IOException;
import java.util.Collections;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ShapeFillParser.java */
/* loaded from: classes2.dex */
public class es {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.lottie.ac.cJ.hpZ Qhi(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror) throws IOException {
        com.bytedance.adsdk.lottie.ac.Qhi.fl flVar = null;
        String str = null;
        com.bytedance.adsdk.lottie.ac.Qhi.Qhi qhi = null;
        boolean z = false;
        boolean z2 = false;
        int i = 1;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case -396065730:
                    if (nextName.equals("fillEnabled")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 99:
                    if (nextName.equals("c")) {
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
                case 114:
                    if (nextName.equals("r")) {
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
                    z = jsonReader.nextBoolean();
                    break;
                case 1:
                    qhi = fl.ROR(jsonReader, ror);
                    break;
                case 2:
                    flVar = fl.cJ(jsonReader, ror);
                    break;
                case 3:
                    i = jsonReader.nextInt();
                    break;
                case 4:
                    z2 = jsonReader.nextBoolean();
                    break;
                case 5:
                    str = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        if (flVar == null) {
            flVar = new com.bytedance.adsdk.lottie.ac.Qhi.fl(Collections.singletonList(new com.bytedance.adsdk.lottie.ROR.Qhi(100)));
        }
        return new com.bytedance.adsdk.lottie.ac.cJ.hpZ(str, z, i == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD, qhi, flVar, z2);
    }
}
