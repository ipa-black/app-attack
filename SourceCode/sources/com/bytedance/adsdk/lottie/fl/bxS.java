package com.bytedance.adsdk.lottie.fl;

import android.graphics.Color;
import android.graphics.Rect;
import android.util.JsonReader;
import com.appnext.base.a.c.d;
import com.bytedance.adsdk.lottie.ac.ac.fl;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.onesignal.NotificationBundleProcessor;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
/* compiled from: LayerParser.java */
/* loaded from: classes2.dex */
public class bxS {
    public static com.bytedance.adsdk.lottie.ac.ac.fl Qhi(com.bytedance.adsdk.lottie.ROR ror) {
        Rect CJ = ror.CJ();
        return new com.bytedance.adsdk.lottie.ac.ac.fl(Collections.emptyList(), ror, "__container", -1L, fl.Qhi.PRE_COMP, -1L, null, Collections.emptyList(), new com.bytedance.adsdk.lottie.ac.Qhi.ABk(), 0, 0, 0, 0.0f, 0.0f, CJ.width(), CJ.height(), null, null, Collections.emptyList(), fl.cJ.NONE, null, false, null, null);
    }

    public static com.bytedance.adsdk.lottie.ac.ac.fl Qhi(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror) throws IOException {
        ArrayList arrayList;
        fl.cJ cJVar = fl.cJ.NONE;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        jsonReader.beginObject();
        Float valueOf = Float.valueOf(0.0f);
        Float valueOf2 = Float.valueOf(1.0f);
        fl.cJ cJVar2 = cJVar;
        fl.Qhi qhi = null;
        String str = null;
        com.bytedance.adsdk.lottie.ac.Qhi.ABk aBk = null;
        com.bytedance.adsdk.lottie.ac.Qhi.Gm gm = null;
        com.bytedance.adsdk.lottie.ac.Qhi.zc zcVar = null;
        com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar3 = null;
        com.bytedance.adsdk.lottie.ac.cJ.Qhi qhi2 = null;
        Gm gm2 = null;
        long j = 0;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        float f2 = 0.0f;
        float f3 = 0.0f;
        float f4 = 0.0f;
        float f5 = 0.0f;
        long j2 = -1;
        float f6 = 1.0f;
        String str2 = "UNSET";
        String str3 = null;
        float f7 = 0.0f;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case -995424086:
                    if (nextName.equals("parent")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -903568142:
                    if (nextName.equals("shapes")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 104:
                    if (nextName.equals("h")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 116:
                    if (nextName.equals(d.COLUMN_TYPE)) {
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
                case 3177:
                    if (nextName.equals("cl")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case 3233:
                    if (nextName.equals("ef")) {
                        c2 = 6;
                        break;
                    }
                    break;
                case 3324:
                    if (nextName.equals("hd")) {
                        c2 = 7;
                        break;
                    }
                    break;
                case 3367:
                    if (nextName.equals("ip")) {
                        c2 = '\b';
                        break;
                    }
                    break;
                case 3432:
                    if (nextName.equals("ks")) {
                        c2 = '\t';
                        break;
                    }
                    break;
                case 3519:
                    if (nextName.equals("nm")) {
                        c2 = '\n';
                        break;
                    }
                    break;
                case 3553:
                    if (nextName.equals("op")) {
                        c2 = 11;
                        break;
                    }
                    break;
                case 3664:
                    if (nextName.equals("sc")) {
                        c2 = '\f';
                        break;
                    }
                    break;
                case 3669:
                    if (nextName.equals("sh")) {
                        c2 = '\r';
                        break;
                    }
                    break;
                case 3679:
                    if (nextName.equals("sr")) {
                        c2 = 14;
                        break;
                    }
                    break;
                case 3681:
                    if (nextName.equals("st")) {
                        c2 = 15;
                        break;
                    }
                    break;
                case 3684:
                    if (nextName.equals("sw")) {
                        c2 = 16;
                        break;
                    }
                    break;
                case 3705:
                    if (nextName.equals("tm")) {
                        c2 = 17;
                        break;
                    }
                    break;
                case 3712:
                    if (nextName.equals(TtmlNode.TAG_TT)) {
                        c2 = 18;
                        break;
                    }
                    break;
                case 3717:
                    if (nextName.equals("ty")) {
                        c2 = 19;
                        break;
                    }
                    break;
                case 104415:
                    if (nextName.equals("ind")) {
                        c2 = 20;
                        break;
                    }
                    break;
                case 108390670:
                    if (nextName.equals("refId")) {
                        c2 = 21;
                        break;
                    }
                    break;
                case 1441620890:
                    if (nextName.equals("masksProperties")) {
                        c2 = 22;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    j2 = jsonReader.nextInt();
                    break;
                case 1:
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        com.bytedance.adsdk.lottie.ac.cJ.ac Qhi = hm.Qhi(jsonReader, ror);
                        if (Qhi != null) {
                            arrayList3.add(Qhi);
                        }
                    }
                    jsonReader.endArray();
                    break;
                case 2:
                    f4 = (float) (jsonReader.nextDouble() * com.bytedance.adsdk.lottie.Tgh.ROR.Qhi());
                    break;
                case 3:
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String nextName2 = jsonReader.nextName();
                        nextName2.hashCode();
                        if (nextName2.equals(NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY)) {
                            jsonReader.beginArray();
                            if (jsonReader.hasNext()) {
                                zcVar = cJ.Qhi(jsonReader, ror);
                            }
                            while (jsonReader.hasNext()) {
                                jsonReader.skipValue();
                            }
                            jsonReader.endArray();
                        } else if (nextName2.equals(com.ironsource.sdk.c.d.f11571a)) {
                            gm = fl.Tgh(jsonReader, ror);
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    break;
                case 4:
                    f3 = (float) (jsonReader.nextDouble() * com.bytedance.adsdk.lottie.Tgh.ROR.Qhi());
                    break;
                case 5:
                    str3 = jsonReader.nextString();
                    break;
                case 6:
                    jsonReader.beginArray();
                    ArrayList arrayList4 = new ArrayList();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            String nextName3 = jsonReader.nextName();
                            nextName3.hashCode();
                            if (nextName3.equals("nm")) {
                                arrayList4.add(jsonReader.nextString());
                            } else if (nextName3.equals("ty")) {
                                int nextInt = jsonReader.nextInt();
                                if (nextInt == 29) {
                                    qhi2 = Tgh.Qhi(jsonReader, ror);
                                } else if (nextInt == 25) {
                                    gm2 = new zc().Qhi(jsonReader, ror);
                                }
                            } else {
                                jsonReader.skipValue();
                            }
                        }
                        jsonReader.endObject();
                    }
                    jsonReader.endArray();
                    ror.Qhi("Lottie doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: ".concat(String.valueOf(arrayList4)));
                    break;
                case 7:
                    z = jsonReader.nextBoolean();
                    break;
                case '\b':
                    f7 = (float) jsonReader.nextDouble();
                    break;
                case '\t':
                    aBk = ac.Qhi(jsonReader, ror);
                    break;
                case '\n':
                    str2 = jsonReader.nextString();
                    break;
                case 11:
                    f5 = (float) jsonReader.nextDouble();
                    break;
                case '\f':
                    i3 = Color.parseColor(jsonReader.nextString());
                    break;
                case '\r':
                    i2 = (int) (jsonReader.nextInt() * com.bytedance.adsdk.lottie.Tgh.ROR.Qhi());
                    break;
                case 14:
                    f6 = (float) jsonReader.nextDouble();
                    break;
                case 15:
                    f2 = (float) jsonReader.nextDouble();
                    break;
                case 16:
                    i = (int) (jsonReader.nextInt() * com.bytedance.adsdk.lottie.Tgh.ROR.Qhi());
                    break;
                case 17:
                    cJVar3 = fl.Qhi(jsonReader, ror, false);
                    break;
                case 18:
                    int nextInt2 = jsonReader.nextInt();
                    if (nextInt2 >= fl.cJ.values().length) {
                        ror.Qhi("Unsupported matte type: ".concat(String.valueOf(nextInt2)));
                        break;
                    } else {
                        cJVar2 = fl.cJ.values()[nextInt2];
                        int i4 = AnonymousClass1.Qhi[cJVar2.ordinal()];
                        if (i4 == 1) {
                            ror.Qhi("Unsupported matte type: Luma");
                        } else if (i4 == 2) {
                            ror.Qhi("Unsupported matte type: Luma Inverted");
                        }
                        ror.Qhi(1);
                        break;
                    }
                case 19:
                    int nextInt3 = jsonReader.nextInt();
                    if (nextInt3 < fl.Qhi.UNKNOWN.ordinal()) {
                        qhi = fl.Qhi.values()[nextInt3];
                        break;
                    } else {
                        qhi = fl.Qhi.UNKNOWN;
                        break;
                    }
                case 20:
                    j = jsonReader.nextInt();
                    break;
                case 21:
                    str = jsonReader.nextString();
                    break;
                case 22:
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        arrayList2.add(CQU.Qhi(jsonReader, ror));
                    }
                    ror.Qhi(arrayList2.size());
                    jsonReader.endArray();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        ArrayList arrayList5 = new ArrayList();
        if (f7 > 0.0f) {
            arrayList = arrayList2;
            arrayList5.add(new com.bytedance.adsdk.lottie.ROR.Qhi(ror, valueOf, valueOf, null, 0.0f, Float.valueOf(f7)));
        } else {
            arrayList = arrayList2;
        }
        if (f5 <= 0.0f) {
            f5 = ror.ROR();
        }
        arrayList5.add(new com.bytedance.adsdk.lottie.ROR.Qhi(ror, valueOf2, valueOf2, null, f7, Float.valueOf(f5)));
        arrayList5.add(new com.bytedance.adsdk.lottie.ROR.Qhi(ror, valueOf, valueOf, null, f5, Float.valueOf(Float.MAX_VALUE)));
        if (str2.endsWith(".ai") || "ai".equals(str3)) {
            ror.Qhi("Convert your Illustrator layers to shape layers.");
        }
        return new com.bytedance.adsdk.lottie.ac.ac.fl(arrayList3, ror, str2, j, qhi, j2, str, arrayList, aBk, i, i2, i3, f6, f2, f3, f4, gm, zcVar, arrayList5, cJVar2, cJVar3, z, qhi2, gm2);
    }

    /* compiled from: LayerParser.java */
    /* renamed from: com.bytedance.adsdk.lottie.fl.bxS$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] Qhi;

        static {
            int[] iArr = new int[fl.cJ.values().length];
            Qhi = iArr;
            try {
                iArr[fl.cJ.LUMA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                Qhi[fl.cJ.LUMA_INVERTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }
}
