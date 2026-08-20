package com.bytedance.adsdk.lottie.fl;

import android.util.JsonReader;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;
import java.util.ArrayList;
/* compiled from: FontCharacterParser.java */
/* loaded from: classes2.dex */
class iMK {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.lottie.ac.fl Qhi(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginObject();
        double d2 = 0.0d;
        String str = null;
        String str2 = null;
        char c2 = 0;
        double d3 = 0.0d;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c3 = 65535;
            switch (nextName.hashCode()) {
                case -1866931350:
                    if (nextName.equals("fFamily")) {
                        c3 = 0;
                        break;
                    }
                    break;
                case 119:
                    if (nextName.equals("w")) {
                        c3 = 1;
                        break;
                    }
                    break;
                case 3173:
                    if (nextName.equals("ch")) {
                        c3 = 2;
                        break;
                    }
                    break;
                case 3076010:
                    if (nextName.equals("data")) {
                        c3 = 3;
                        break;
                    }
                    break;
                case 3530753:
                    if (nextName.equals("size")) {
                        c3 = 4;
                        break;
                    }
                    break;
                case 109780401:
                    if (nextName.equals(TtmlNode.TAG_STYLE)) {
                        c3 = 5;
                        break;
                    }
                    break;
            }
            switch (c3) {
                case 0:
                    str2 = jsonReader.nextString();
                    break;
                case 1:
                    d2 = jsonReader.nextDouble();
                    break;
                case 2:
                    c2 = jsonReader.nextString().charAt(0);
                    break;
                case 3:
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        if ("shapes".equals(jsonReader.nextName())) {
                            jsonReader.beginArray();
                            while (jsonReader.hasNext()) {
                                arrayList.add((com.bytedance.adsdk.lottie.ac.cJ.HzH) hm.Qhi(jsonReader, ror));
                            }
                            jsonReader.endArray();
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    break;
                case 4:
                    d3 = jsonReader.nextDouble();
                    break;
                case 5:
                    str = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return new com.bytedance.adsdk.lottie.ac.fl(arrayList, c2, d3, d2, str, str2);
    }
}
