package com.bytedance.adsdk.lottie.fl;

import android.util.JsonReader;
import com.bytedance.adsdk.lottie.ac.cJ.tP;
import com.ironsource.sdk.c.d;
import com.onesignal.NotificationBundleProcessor;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ShapeStrokeParser.java */
/* loaded from: classes2.dex */
public class PAe {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static com.bytedance.adsdk.lottie.ac.cJ.tP Qhi(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror) throws IOException {
        char c2;
        char c3;
        int i;
        ArrayList arrayList = new ArrayList();
        float f2 = 0.0f;
        String str = null;
        com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar = null;
        com.bytedance.adsdk.lottie.ac.Qhi.Qhi qhi = null;
        com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar2 = null;
        tP.Qhi qhi2 = null;
        tP.cJ cJVar3 = null;
        boolean z = false;
        com.bytedance.adsdk.lottie.ac.Qhi.fl flVar = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            int i2 = 1;
            switch (nextName.hashCode()) {
                case 99:
                    if (nextName.equals("c")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 100:
                    if (nextName.equals(d.f11571a)) {
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
                case 119:
                    if (nextName.equals("w")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3324:
                    if (nextName.equals("hd")) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3447:
                    if (nextName.equals("lc")) {
                        c2 = 5;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3454:
                    if (nextName.equals("lj")) {
                        c2 = 6;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3487:
                    if (nextName.equals("ml")) {
                        c2 = 7;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3519:
                    if (nextName.equals("nm")) {
                        c2 = '\b';
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
                    qhi = fl.ROR(jsonReader, ror);
                    continue;
                case 1:
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        String str2 = null;
                        com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar4 = null;
                        while (jsonReader.hasNext()) {
                            String nextName2 = jsonReader.nextName();
                            nextName2.hashCode();
                            if (nextName2.equals(NotificationBundleProcessor.PUSH_MINIFIED_BUTTON_TEXT)) {
                                str2 = jsonReader.nextString();
                            } else if (nextName2.equals("v")) {
                                cJVar4 = fl.Qhi(jsonReader, ror);
                            } else {
                                jsonReader.skipValue();
                            }
                        }
                        jsonReader.endObject();
                        str2.hashCode();
                        switch (str2.hashCode()) {
                            case 100:
                                if (str2.equals(d.f11571a)) {
                                    c3 = 0;
                                    break;
                                }
                                c3 = 65535;
                                break;
                            case 103:
                                if (str2.equals("g")) {
                                    c3 = 1;
                                    break;
                                }
                                c3 = 65535;
                                break;
                            case 111:
                                if (str2.equals(NotificationBundleProcessor.PUSH_MINIFIED_BUTTONS_LIST)) {
                                    c3 = 2;
                                    break;
                                }
                                c3 = 65535;
                                break;
                            default:
                                c3 = 65535;
                                break;
                        }
                        switch (c3) {
                            case 0:
                            case 1:
                                i = 1;
                                ror.Qhi(true);
                                arrayList.add(cJVar4);
                                i2 = i;
                                break;
                            case 2:
                                cJVar = cJVar4;
                                i2 = 1;
                                break;
                            default:
                                i = 1;
                                i2 = i;
                                break;
                        }
                    }
                    int i3 = i2;
                    jsonReader.endArray();
                    if (arrayList.size() != i3) {
                        break;
                    } else {
                        arrayList.add(arrayList.get(0));
                        continue;
                    }
                case 2:
                    flVar = fl.cJ(jsonReader, ror);
                    continue;
                case 3:
                    cJVar2 = fl.Qhi(jsonReader, ror);
                    continue;
                case 4:
                    z = jsonReader.nextBoolean();
                    continue;
                case 5:
                    qhi2 = tP.Qhi.values()[jsonReader.nextInt() - 1];
                    continue;
                case 6:
                    cJVar3 = tP.cJ.values()[jsonReader.nextInt() - 1];
                    continue;
                case 7:
                    f2 = (float) jsonReader.nextDouble();
                    continue;
                case '\b':
                    str = jsonReader.nextString();
                    continue;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        if (flVar == null) {
            flVar = new com.bytedance.adsdk.lottie.ac.Qhi.fl(Collections.singletonList(new com.bytedance.adsdk.lottie.ROR.Qhi(100)));
        }
        return new com.bytedance.adsdk.lottie.ac.cJ.tP(str, cJVar, arrayList, qhi, flVar, cJVar2, qhi2, cJVar3, f2, z);
    }
}
