package com.bytedance.adsdk.lottie.fl;

import android.graphics.Rect;
import android.util.JsonReader;
import android.util.LongSparseArray;
import android.util.SparseArray;
import com.bytedance.adsdk.lottie.ac.ac.fl;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: LottieCompositionParser.java */
/* loaded from: classes2.dex */
public class Dww {
    public static com.bytedance.adsdk.lottie.ROR Qhi(JsonReader jsonReader) throws IOException {
        float f2;
        char c2;
        HashMap hashMap;
        ArrayList arrayList;
        float Qhi = com.bytedance.adsdk.lottie.Tgh.ROR.Qhi();
        LongSparseArray<com.bytedance.adsdk.lottie.ac.ac.fl> longSparseArray = new LongSparseArray<>();
        ArrayList arrayList2 = new ArrayList();
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        HashMap hashMap4 = new HashMap();
        ArrayList arrayList3 = new ArrayList();
        SparseArray<com.bytedance.adsdk.lottie.ac.fl> sparseArray = new SparseArray<>();
        com.bytedance.adsdk.lottie.ROR ror = new com.bytedance.adsdk.lottie.ROR();
        jsonReader.beginObject();
        float f3 = 0.0f;
        float f4 = 0.0f;
        float f5 = 0.0f;
        int i = 0;
        int i2 = 0;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c3 = 65535;
            switch (nextName.hashCode()) {
                case -1408207997:
                    f2 = f5;
                    if (nextName.equals("assets")) {
                        c3 = 0;
                        break;
                    }
                    break;
                case -1109732030:
                    f2 = f5;
                    if (nextName.equals("layers")) {
                        c3 = 1;
                        break;
                    }
                    break;
                case 104:
                    f2 = f5;
                    if (nextName.equals("h")) {
                        c3 = 2;
                        break;
                    }
                    break;
                case 118:
                    f2 = f5;
                    if (nextName.equals("v")) {
                        c2 = 3;
                        c3 = c2;
                        break;
                    }
                    break;
                case 119:
                    f2 = f5;
                    if (nextName.equals("w")) {
                        c2 = 4;
                        c3 = c2;
                        break;
                    }
                    break;
                case 3276:
                    f2 = f5;
                    if (nextName.equals("fr")) {
                        c2 = 5;
                        c3 = c2;
                        break;
                    }
                    break;
                case 3367:
                    f2 = f5;
                    if (nextName.equals("ip")) {
                        c2 = 6;
                        c3 = c2;
                        break;
                    }
                    break;
                case 3553:
                    f2 = f5;
                    if (nextName.equals("op")) {
                        c2 = 7;
                        c3 = c2;
                        break;
                    }
                    break;
                case 94623709:
                    f2 = f5;
                    if (nextName.equals("chars")) {
                        c2 = '\b';
                        c3 = c2;
                        break;
                    }
                    break;
                case 97615364:
                    f2 = f5;
                    if (nextName.equals("fonts")) {
                        c2 = '\t';
                        c3 = c2;
                        break;
                    }
                    break;
                case 839250809:
                    f2 = f5;
                    if (nextName.equals("markers")) {
                        c2 = '\n';
                        c3 = c2;
                        break;
                    }
                    break;
                default:
                    f2 = f5;
                    break;
            }
            switch (c3) {
                case 0:
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    Qhi(jsonReader, ror, hashMap2, hashMap3);
                    f5 = f2;
                    hashMap4 = hashMap;
                    arrayList3 = arrayList;
                case 1:
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    Qhi(jsonReader, ror, arrayList2, longSparseArray);
                    f5 = f2;
                    hashMap4 = hashMap;
                    arrayList3 = arrayList;
                case 2:
                    i2 = jsonReader.nextInt();
                    f5 = f2;
                case 3:
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    String[] split = jsonReader.nextString().split("\\.");
                    if (!com.bytedance.adsdk.lottie.Tgh.ROR.Qhi(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[2]), 4, 4, 0)) {
                        ror.Qhi("Lottie only supports bodymovin >= 4.4.0");
                    }
                    f5 = f2;
                    hashMap4 = hashMap;
                    arrayList3 = arrayList;
                case 4:
                    i = jsonReader.nextInt();
                    f5 = f2;
                case 5:
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    f5 = (float) jsonReader.nextDouble();
                    hashMap4 = hashMap;
                    arrayList3 = arrayList;
                case 6:
                    f3 = (float) jsonReader.nextDouble();
                    f5 = f2;
                case 7:
                    f4 = ((float) jsonReader.nextDouble()) - 0.01f;
                    f5 = f2;
                case '\b':
                    Qhi(jsonReader, ror, sparseArray);
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    f5 = f2;
                    hashMap4 = hashMap;
                    arrayList3 = arrayList;
                case '\t':
                    Qhi(jsonReader, hashMap4);
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    f5 = f2;
                    hashMap4 = hashMap;
                    arrayList3 = arrayList;
                case '\n':
                    Qhi(jsonReader, arrayList3);
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    f5 = f2;
                    hashMap4 = hashMap;
                    arrayList3 = arrayList;
                default:
                    jsonReader.skipValue();
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    f5 = f2;
                    hashMap4 = hashMap;
                    arrayList3 = arrayList;
            }
        }
        jsonReader.endObject();
        ror.Qhi(new Rect(0, 0, (int) (i * Qhi), (int) (i2 * Qhi)), f3, f4, f5, arrayList2, longSparseArray, hashMap2, hashMap3, sparseArray, hashMap4, arrayList3);
        return ror;
    }

    private static void Qhi(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror, List<com.bytedance.adsdk.lottie.ac.ac.fl> list, LongSparseArray<com.bytedance.adsdk.lottie.ac.ac.fl> longSparseArray) throws IOException {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            com.bytedance.adsdk.lottie.ac.ac.fl Qhi = bxS.Qhi(jsonReader, ror);
            Qhi.Gm();
            fl.Qhi qhi = fl.Qhi.IMAGE;
            list.add(Qhi);
            longSparseArray.put(Qhi.fl(), Qhi);
        }
        jsonReader.endArray();
    }

    private static void Qhi(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror, Map<String, List<com.bytedance.adsdk.lottie.ac.ac.fl>> map, Map<String, com.bytedance.adsdk.lottie.WAv> map2) throws IOException {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            ArrayList arrayList = new ArrayList();
            LongSparseArray longSparseArray = new LongSparseArray();
            jsonReader.beginObject();
            int i = 0;
            int i2 = 0;
            String str = null;
            String str2 = null;
            String str3 = null;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                nextName.hashCode();
                char c2 = 65535;
                switch (nextName.hashCode()) {
                    case -1109732030:
                        if (nextName.equals("layers")) {
                            c2 = 0;
                            break;
                        }
                        break;
                    case 104:
                        if (nextName.equals("h")) {
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
                    case 117:
                        if (nextName.equals("u")) {
                            c2 = 3;
                            break;
                        }
                        break;
                    case 119:
                        if (nextName.equals("w")) {
                            c2 = 4;
                            break;
                        }
                        break;
                    case 3355:
                        if (nextName.equals("id")) {
                            c2 = 5;
                            break;
                        }
                        break;
                }
                switch (c2) {
                    case 0:
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            com.bytedance.adsdk.lottie.ac.ac.fl Qhi = bxS.Qhi(jsonReader, ror);
                            longSparseArray.put(Qhi.fl(), Qhi);
                            arrayList.add(Qhi);
                        }
                        jsonReader.endArray();
                        break;
                    case 1:
                        i2 = jsonReader.nextInt();
                        break;
                    case 2:
                        str2 = jsonReader.nextString();
                        break;
                    case 3:
                        str3 = jsonReader.nextString();
                        break;
                    case 4:
                        i = jsonReader.nextInt();
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
            if (str2 != null) {
                com.bytedance.adsdk.lottie.WAv wAv = new com.bytedance.adsdk.lottie.WAv(i, i2, str, str2, str3);
                map2.put(wAv.ac(), wAv);
            } else {
                map.put(str, arrayList);
            }
        }
        jsonReader.endArray();
    }

    private static void Qhi(JsonReader jsonReader, Map<String, com.bytedance.adsdk.lottie.ac.ac> map) throws IOException {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (nextName.equals("list")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    com.bytedance.adsdk.lottie.ac.ac Qhi = pA.Qhi(jsonReader);
                    map.put(Qhi.cJ(), Qhi);
                }
                jsonReader.endArray();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
    }

    private static void Qhi(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror, SparseArray<com.bytedance.adsdk.lottie.ac.fl> sparseArray) throws IOException {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            com.bytedance.adsdk.lottie.ac.fl Qhi = iMK.Qhi(jsonReader, ror);
            sparseArray.put(Qhi.hashCode(), Qhi);
        }
        jsonReader.endArray();
    }

    private static void Qhi(JsonReader jsonReader, List<com.bytedance.adsdk.lottie.ac.ROR> list) throws IOException {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            jsonReader.beginObject();
            float f2 = 0.0f;
            String str = null;
            float f3 = 0.0f;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                nextName.hashCode();
                char c2 = 65535;
                switch (nextName.hashCode()) {
                    case 3178:
                        if (nextName.equals("cm")) {
                            c2 = 0;
                            break;
                        }
                        break;
                    case 3214:
                        if (nextName.equals("dr")) {
                            c2 = 1;
                            break;
                        }
                        break;
                    case 3705:
                        if (nextName.equals("tm")) {
                            c2 = 2;
                            break;
                        }
                        break;
                }
                switch (c2) {
                    case 0:
                        str = jsonReader.nextString();
                        break;
                    case 1:
                        f3 = (float) jsonReader.nextDouble();
                        break;
                    case 2:
                        f2 = (float) jsonReader.nextDouble();
                        break;
                    default:
                        jsonReader.skipValue();
                        break;
                }
            }
            jsonReader.endObject();
            list.add(new com.bytedance.adsdk.lottie.ac.ROR(str, f2, f3));
        }
        jsonReader.endArray();
    }
}
