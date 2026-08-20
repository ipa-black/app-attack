package com.bytedance.adsdk.lottie.fl;

import android.util.JsonReader;
import java.io.IOException;
/* compiled from: DropShadowEffectParser.java */
/* loaded from: classes2.dex */
public class zc {
    private com.bytedance.adsdk.lottie.ac.Qhi.cJ CJ;
    private com.bytedance.adsdk.lottie.ac.Qhi.Qhi Qhi;
    private com.bytedance.adsdk.lottie.ac.Qhi.cJ ac;
    private com.bytedance.adsdk.lottie.ac.Qhi.cJ cJ;
    private com.bytedance.adsdk.lottie.ac.Qhi.cJ fl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Gm Qhi(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror) throws IOException {
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (nextName.equals("ef")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    cJ(jsonReader, ror);
                }
                jsonReader.endArray();
            } else {
                jsonReader.skipValue();
            }
        }
        if (this.Qhi == null || this.cJ == null || this.ac == null || this.CJ == null || this.fl == null) {
            return null;
        }
        return new Gm(this.Qhi, this.cJ, this.ac, this.CJ, this.fl);
    }

    private void cJ(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror) throws IOException {
        jsonReader.beginObject();
        String str = "";
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (nextName.equals("v")) {
                str.hashCode();
                char c2 = 65535;
                switch (str.hashCode()) {
                    case 353103893:
                        if (str.equals("Distance")) {
                            c2 = 0;
                            break;
                        }
                        break;
                    case 397447147:
                        if (str.equals("Opacity")) {
                            c2 = 1;
                            break;
                        }
                        break;
                    case 1041377119:
                        if (str.equals("Direction")) {
                            c2 = 2;
                            break;
                        }
                        break;
                    case 1379387491:
                        if (str.equals("Shadow Color")) {
                            c2 = 3;
                            break;
                        }
                        break;
                    case 1383710113:
                        if (str.equals("Softness")) {
                            c2 = 4;
                            break;
                        }
                        break;
                }
                switch (c2) {
                    case 0:
                        this.CJ = fl.Qhi(jsonReader, ror);
                        continue;
                    case 1:
                        this.cJ = fl.Qhi(jsonReader, ror, false);
                        continue;
                    case 2:
                        this.ac = fl.Qhi(jsonReader, ror, false);
                        continue;
                    case 3:
                        this.Qhi = fl.ROR(jsonReader, ror);
                        continue;
                    case 4:
                        this.fl = fl.Qhi(jsonReader, ror);
                        continue;
                    default:
                        jsonReader.skipValue();
                        continue;
                }
            } else if (nextName.equals("nm")) {
                str = jsonReader.nextString();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
    }
}
