package com.bytedance.adsdk.lottie.fl;

import android.graphics.PointF;
import android.util.JsonReader;
import com.bytedance.adsdk.lottie.ac.cJ.Gm;
import com.ironsource.sdk.c.d;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PolystarShapeParser.java */
/* loaded from: classes2.dex */
public class sDy {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.lottie.ac.cJ.Gm Qhi(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror, int i) throws IOException {
        boolean z = false;
        boolean z2 = i == 3;
        String str = null;
        Gm.Qhi qhi = null;
        com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar = null;
        com.bytedance.adsdk.lottie.ac.Qhi.iMK<PointF, PointF> imk = null;
        com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar2 = null;
        com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar3 = null;
        com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar4 = null;
        com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar5 = null;
        com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar6 = null;
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
                case 114:
                    if (nextName.equals("r")) {
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
                case 3369:
                    if (nextName.equals("ir")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 3370:
                    if (nextName.equals("is")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case 3519:
                    if (nextName.equals("nm")) {
                        c2 = 6;
                        break;
                    }
                    break;
                case 3555:
                    if (nextName.equals("or")) {
                        c2 = 7;
                        break;
                    }
                    break;
                case 3556:
                    if (nextName.equals("os")) {
                        c2 = '\b';
                        break;
                    }
                    break;
                case 3588:
                    if (nextName.equals("pt")) {
                        c2 = '\t';
                        break;
                    }
                    break;
                case 3686:
                    if (nextName.equals("sy")) {
                        c2 = '\n';
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    if (jsonReader.nextInt() != 3) {
                        z2 = false;
                        break;
                    } else {
                        z2 = true;
                        break;
                    }
                case 1:
                    imk = Qhi.cJ(jsonReader, ror);
                    break;
                case 2:
                    cJVar2 = fl.Qhi(jsonReader, ror, false);
                    break;
                case 3:
                    z = jsonReader.nextBoolean();
                    break;
                case 4:
                    cJVar3 = fl.Qhi(jsonReader, ror);
                    break;
                case 5:
                    cJVar5 = fl.Qhi(jsonReader, ror, false);
                    break;
                case 6:
                    str = jsonReader.nextString();
                    break;
                case 7:
                    cJVar4 = fl.Qhi(jsonReader, ror);
                    break;
                case '\b':
                    cJVar6 = fl.Qhi(jsonReader, ror, false);
                    break;
                case '\t':
                    cJVar = fl.Qhi(jsonReader, ror, false);
                    break;
                case '\n':
                    qhi = Gm.Qhi.Qhi(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        return new com.bytedance.adsdk.lottie.ac.cJ.Gm(str, qhi, cJVar, imk, cJVar2, cJVar3, cJVar4, cJVar5, cJVar6, z, z2);
    }
}
