package com.bytedance.adsdk.lottie.fl;

import android.graphics.PointF;
import android.util.JsonReader;
import com.ironsource.sdk.c.d;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CircleShapeParser.java */
/* loaded from: classes2.dex */
public class ROR {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.lottie.ac.cJ.cJ Qhi(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror, int i) throws IOException {
        boolean z = i == 3;
        boolean z2 = false;
        String str = null;
        com.bytedance.adsdk.lottie.ac.Qhi.iMK<PointF, PointF> imk = null;
        com.bytedance.adsdk.lottie.ac.Qhi.ROR ror2 = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case 100:
                    if (nextName.equals(d.f11571a)) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 112:
                    if (nextName.equals("p")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 115:
                    if (nextName.equals("s")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 3324:
                    if (nextName.equals("hd")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 3519:
                    if (nextName.equals("nm")) {
                        c2 = 4;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    if (jsonReader.nextInt() != 3) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 1:
                    imk = Qhi.cJ(jsonReader, ror);
                    break;
                case 2:
                    ror2 = fl.ac(jsonReader, ror);
                    break;
                case 3:
                    z2 = jsonReader.nextBoolean();
                    break;
                case 4:
                    str = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        return new com.bytedance.adsdk.lottie.ac.cJ.cJ(str, imk, ror2, z, z2);
    }
}
