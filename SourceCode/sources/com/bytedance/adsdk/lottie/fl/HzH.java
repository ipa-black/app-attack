package com.bytedance.adsdk.lottie.fl;

import android.graphics.Path;
import android.util.JsonReader;
import com.appnext.base.a.c.d;
import com.onesignal.NotificationBundleProcessor;
import java.io.IOException;
import java.util.Collections;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GradientFillParser.java */
/* loaded from: classes2.dex */
public class HzH {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static com.bytedance.adsdk.lottie.ac.cJ.Tgh Qhi(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror) throws IOException {
        char c2;
        com.bytedance.adsdk.lottie.ac.Qhi.fl flVar = null;
        Path.FillType fillType = Path.FillType.WINDING;
        String str = null;
        com.bytedance.adsdk.lottie.ac.cJ.Sf sf = null;
        com.bytedance.adsdk.lottie.ac.Qhi.ac acVar = null;
        com.bytedance.adsdk.lottie.ac.Qhi.ROR ror2 = null;
        com.bytedance.adsdk.lottie.ac.Qhi.ROR ror3 = null;
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            int i = -1;
            switch (nextName.hashCode()) {
                case 101:
                    if (nextName.equals("e")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 103:
                    if (nextName.equals("g")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 111:
                    if (nextName.equals(NotificationBundleProcessor.PUSH_MINIFIED_BUTTONS_LIST)) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 114:
                    if (nextName.equals("r")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 115:
                    if (nextName.equals("s")) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 116:
                    if (nextName.equals(d.COLUMN_TYPE)) {
                        c2 = 5;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3324:
                    if (nextName.equals("hd")) {
                        c2 = 6;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3519:
                    if (nextName.equals("nm")) {
                        c2 = 7;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            switch (c2) {
                case 0:
                    ror3 = fl.ac(jsonReader, ror);
                    break;
                case 1:
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String nextName2 = jsonReader.nextName();
                        nextName2.hashCode();
                        if (nextName2.equals("k")) {
                            acVar = fl.Qhi(jsonReader, ror, i);
                        } else if (nextName2.equals("p")) {
                            i = jsonReader.nextInt();
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    break;
                case 2:
                    flVar = fl.cJ(jsonReader, ror);
                    break;
                case 3:
                    fillType = jsonReader.nextInt() == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD;
                    break;
                case 4:
                    ror2 = fl.ac(jsonReader, ror);
                    break;
                case 5:
                    sf = jsonReader.nextInt() == 1 ? com.bytedance.adsdk.lottie.ac.cJ.Sf.LINEAR : com.bytedance.adsdk.lottie.ac.cJ.Sf.RADIAL;
                    break;
                case 6:
                    z = jsonReader.nextBoolean();
                    break;
                case 7:
                    str = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        return new com.bytedance.adsdk.lottie.ac.cJ.Tgh(str, sf, fillType, acVar, flVar == null ? new com.bytedance.adsdk.lottie.ac.Qhi.fl(Collections.singletonList(new com.bytedance.adsdk.lottie.ROR.Qhi(100))) : flVar, ror2, ror3, null, null, z);
    }
}
