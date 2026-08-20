package com.bytedance.adsdk.lottie.fl;

import android.graphics.PointF;
import android.util.JsonReader;
import com.appnext.base.a.c.d;
import com.appnext.base.b.f;
import com.bytedance.adsdk.lottie.ac.cJ;
import com.explorestack.iab.mraid.j;
import java.io.IOException;
/* compiled from: DocumentDataParser.java */
/* loaded from: classes2.dex */
public class WAv implements xyz<com.bytedance.adsdk.lottie.ac.cJ> {
    public static final WAv Qhi = new WAv();

    private WAv() {
    }

    @Override // com.bytedance.adsdk.lottie.fl.xyz
    /* renamed from: Qhi */
    public com.bytedance.adsdk.lottie.ac.cJ cJ(JsonReader jsonReader, float f2) throws IOException {
        cJ.Qhi qhi = cJ.Qhi.CENTER;
        jsonReader.beginObject();
        cJ.Qhi qhi2 = qhi;
        String str = null;
        String str2 = null;
        PointF pointF = null;
        PointF pointF2 = null;
        float f3 = 0.0f;
        float f4 = 0.0f;
        float f5 = 0.0f;
        float f6 = 0.0f;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z = true;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case 102:
                    if (nextName.equals(f.TAG)) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 106:
                    if (nextName.equals(j.f9356g)) {
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
                case 116:
                    if (nextName.equals(d.COLUMN_TYPE)) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 3261:
                    if (nextName.equals("fc")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 3452:
                    if (nextName.equals("lh")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case 3463:
                    if (nextName.equals("ls")) {
                        c2 = 6;
                        break;
                    }
                    break;
                case 3543:
                    if (nextName.equals("of")) {
                        c2 = 7;
                        break;
                    }
                    break;
                case 3587:
                    if (nextName.equals("ps")) {
                        c2 = '\b';
                        break;
                    }
                    break;
                case 3664:
                    if (nextName.equals("sc")) {
                        c2 = '\t';
                        break;
                    }
                    break;
                case 3684:
                    if (nextName.equals("sw")) {
                        c2 = '\n';
                        break;
                    }
                    break;
                case 3687:
                    if (nextName.equals("sz")) {
                        c2 = 11;
                        break;
                    }
                    break;
                case 3710:
                    if (nextName.equals("tr")) {
                        c2 = '\f';
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    str2 = jsonReader.nextString();
                    break;
                case 1:
                    int nextInt = jsonReader.nextInt();
                    if (nextInt > cJ.Qhi.CENTER.ordinal() || nextInt < 0) {
                        qhi2 = cJ.Qhi.CENTER;
                        break;
                    } else {
                        qhi2 = cJ.Qhi.values()[nextInt];
                        break;
                    }
                    break;
                case 2:
                    f3 = (float) jsonReader.nextDouble();
                    break;
                case 3:
                    str = jsonReader.nextString();
                    break;
                case 4:
                    i2 = MQ.Qhi(jsonReader);
                    break;
                case 5:
                    f4 = (float) jsonReader.nextDouble();
                    break;
                case 6:
                    f5 = (float) jsonReader.nextDouble();
                    break;
                case 7:
                    z = jsonReader.nextBoolean();
                    break;
                case '\b':
                    jsonReader.beginArray();
                    PointF pointF3 = new PointF(((float) jsonReader.nextDouble()) * f2, ((float) jsonReader.nextDouble()) * f2);
                    jsonReader.endArray();
                    pointF = pointF3;
                    break;
                case '\t':
                    i3 = MQ.Qhi(jsonReader);
                    break;
                case '\n':
                    f6 = (float) jsonReader.nextDouble();
                    break;
                case 11:
                    jsonReader.beginArray();
                    PointF pointF4 = new PointF(((float) jsonReader.nextDouble()) * f2, ((float) jsonReader.nextDouble()) * f2);
                    jsonReader.endArray();
                    pointF2 = pointF4;
                    break;
                case '\f':
                    i = jsonReader.nextInt();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return new com.bytedance.adsdk.lottie.ac.cJ(str, str2, f3, qhi2, i, f4, f5, i2, i3, f6, z, pointF, pointF2);
    }
}
