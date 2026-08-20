package com.bytedance.adsdk.lottie.fl;

import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* compiled from: KeyframesParser.java */
/* loaded from: classes2.dex */
class EBS {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> List<com.bytedance.adsdk.lottie.ROR.Qhi<T>> Qhi(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror, float f2, xyz<T> xyzVar, boolean z) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.peek() == JsonToken.STRING) {
            ror.Qhi("Lottie doesn't support expressions.");
            return arrayList;
        }
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (nextName.equals("k")) {
                if (jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
                    jsonReader.beginArray();
                    if (jsonReader.peek() == JsonToken.NUMBER) {
                        arrayList.add(qMt.Qhi(jsonReader, ror, f2, xyzVar, false, z));
                    } else {
                        while (jsonReader.hasNext()) {
                            arrayList.add(qMt.Qhi(jsonReader, ror, f2, xyzVar, true, z));
                        }
                    }
                    jsonReader.endArray();
                } else {
                    arrayList.add(qMt.Qhi(jsonReader, ror, f2, xyzVar, false, z));
                }
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        Qhi(arrayList);
        return arrayList;
    }

    public static <T> void Qhi(List<? extends com.bytedance.adsdk.lottie.ROR.Qhi<T>> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        while (true) {
            i = size - 1;
            if (i2 >= i) {
                break;
            }
            com.bytedance.adsdk.lottie.ROR.Qhi<T> qhi = list.get(i2);
            i2++;
            com.bytedance.adsdk.lottie.ROR.Qhi<T> qhi2 = list.get(i2);
            qhi.ROR = Float.valueOf(qhi2.Tgh);
            if (qhi.cJ == null && qhi2.Qhi != null) {
                qhi.cJ = qhi2.Qhi;
                if (qhi instanceof com.bytedance.adsdk.lottie.Qhi.cJ.WAv) {
                    ((com.bytedance.adsdk.lottie.Qhi.cJ.WAv) qhi).Qhi();
                }
            }
        }
        com.bytedance.adsdk.lottie.ROR.Qhi<T> qhi3 = list.get(i);
        if ((qhi3.Qhi == null || qhi3.cJ == null) && list.size() > 1) {
            list.remove(qhi3);
        }
    }
}
