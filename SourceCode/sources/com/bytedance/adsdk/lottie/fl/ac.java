package com.bytedance.adsdk.lottie.fl;

import android.graphics.PointF;
import android.util.JsonReader;
import android.util.JsonToken;
import com.onesignal.NotificationBundleProcessor;
import java.io.IOException;
/* compiled from: AnimatableTransformParser.java */
/* loaded from: classes2.dex */
public class ac {
    public static com.bytedance.adsdk.lottie.ac.Qhi.ABk Qhi(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror) throws IOException {
        boolean z = jsonReader.peek() == JsonToken.BEGIN_OBJECT;
        if (z) {
            jsonReader.beginObject();
        }
        com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar = null;
        com.bytedance.adsdk.lottie.ac.Qhi.Tgh tgh = null;
        com.bytedance.adsdk.lottie.ac.Qhi.iMK<PointF, PointF> imk = null;
        com.bytedance.adsdk.lottie.ac.Qhi.Sf sf = null;
        com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar2 = null;
        com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar3 = null;
        com.bytedance.adsdk.lottie.ac.Qhi.fl flVar = null;
        com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar4 = null;
        com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar5 = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case 97:
                    if (nextName.equals(NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY)) {
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
                case 112:
                    if (nextName.equals("p")) {
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
                case 115:
                    if (nextName.equals("s")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 3242:
                    if (nextName.equals("eo")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case 3656:
                    if (nextName.equals("rz")) {
                        c2 = 6;
                        break;
                    }
                    break;
                case 3662:
                    if (nextName.equals("sa")) {
                        c2 = 7;
                        break;
                    }
                    break;
                case 3672:
                    if (nextName.equals("sk")) {
                        c2 = '\b';
                        break;
                    }
                    break;
                case 3676:
                    if (nextName.equals("so")) {
                        c2 = '\t';
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String nextName2 = jsonReader.nextName();
                        nextName2.hashCode();
                        if (nextName2.equals("k")) {
                            tgh = Qhi.Qhi(jsonReader, ror);
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    continue;
                case 1:
                    flVar = fl.cJ(jsonReader, ror);
                    continue;
                case 2:
                    imk = Qhi.cJ(jsonReader, ror);
                    continue;
                case 3:
                    break;
                case 4:
                    sf = fl.CJ(jsonReader, ror);
                    continue;
                case 5:
                    cJVar5 = fl.Qhi(jsonReader, ror, false);
                    continue;
                case 6:
                    ror.Qhi("Lottie doesn't support 3D layers.");
                    break;
                case 7:
                    cJVar3 = fl.Qhi(jsonReader, ror, false);
                    continue;
                case '\b':
                    cJVar2 = fl.Qhi(jsonReader, ror, false);
                    continue;
                case '\t':
                    cJVar4 = fl.Qhi(jsonReader, ror, false);
                    continue;
                default:
                    jsonReader.skipValue();
                    continue;
            }
            com.bytedance.adsdk.lottie.ac.Qhi.cJ Qhi = fl.Qhi(jsonReader, ror, false);
            if (Qhi.ac().isEmpty()) {
                Qhi.ac().add(new com.bytedance.adsdk.lottie.ROR.Qhi(ror, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(ror.ROR())));
            } else if (((com.bytedance.adsdk.lottie.ROR.Qhi) Qhi.ac().get(0)).Qhi == 0) {
                Qhi.ac().set(0, new com.bytedance.adsdk.lottie.ROR.Qhi(ror, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(ror.ROR())));
            }
            cJVar = Qhi;
        }
        if (z) {
            jsonReader.endObject();
        }
        com.bytedance.adsdk.lottie.ac.Qhi.Tgh tgh2 = Qhi(tgh) ? null : tgh;
        if (Qhi(imk)) {
            imk = null;
        }
        return new com.bytedance.adsdk.lottie.ac.Qhi.ABk(tgh2, imk, Qhi(sf) ? null : sf, Qhi(cJVar) ? null : cJVar, flVar, cJVar4, cJVar5, cJ(cJVar2) ? null : cJVar2, ac(cJVar3) ? null : cJVar3);
    }

    private static boolean Qhi(com.bytedance.adsdk.lottie.ac.Qhi.Tgh tgh) {
        if (tgh != null) {
            return tgh.cJ() && tgh.ac().get(0).Qhi.equals(0.0f, 0.0f);
        }
        return true;
    }

    private static boolean Qhi(com.bytedance.adsdk.lottie.ac.Qhi.iMK<PointF, PointF> imk) {
        if (imk != null) {
            return !(imk instanceof com.bytedance.adsdk.lottie.ac.Qhi.WAv) && imk.cJ() && imk.ac().get(0).Qhi.equals(0.0f, 0.0f);
        }
        return true;
    }

    private static boolean Qhi(com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar) {
        if (cJVar != null) {
            return cJVar.cJ() && ((Float) ((com.bytedance.adsdk.lottie.ROR.Qhi) cJVar.ac().get(0)).Qhi).floatValue() == 0.0f;
        }
        return true;
    }

    private static boolean Qhi(com.bytedance.adsdk.lottie.ac.Qhi.Sf sf) {
        if (sf != null) {
            return sf.cJ() && ((com.bytedance.adsdk.lottie.ROR.ac) ((com.bytedance.adsdk.lottie.ROR.Qhi) sf.ac().get(0)).Qhi).cJ(1.0f, 1.0f);
        }
        return true;
    }

    private static boolean cJ(com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar) {
        if (cJVar != null) {
            return cJVar.cJ() && ((Float) ((com.bytedance.adsdk.lottie.ROR.Qhi) cJVar.ac().get(0)).Qhi).floatValue() == 0.0f;
        }
        return true;
    }

    private static boolean ac(com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar) {
        if (cJVar != null) {
            return cJVar.cJ() && ((Float) ((com.bytedance.adsdk.lottie.ROR.Qhi) cJVar.ac().get(0)).Qhi).floatValue() == 0.0f;
        }
        return true;
    }
}
