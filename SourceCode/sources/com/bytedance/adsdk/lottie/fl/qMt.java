package com.bytedance.adsdk.lottie.fl;

import android.graphics.PointF;
import android.util.JsonReader;
import android.util.SparseArray;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.appnext.base.a.c.d;
import com.onesignal.NotificationBundleProcessor;
import java.io.IOException;
import java.lang.ref.WeakReference;
/* compiled from: KeyframeParser.java */
/* loaded from: classes2.dex */
class qMt {
    private static final Interpolator Qhi = new LinearInterpolator();
    private static SparseArray<WeakReference<Interpolator>> cJ;

    qMt() {
    }

    private static SparseArray<WeakReference<Interpolator>> Qhi() {
        if (cJ == null) {
            cJ = new SparseArray<>();
        }
        return cJ;
    }

    private static WeakReference<Interpolator> Qhi(int i) {
        WeakReference<Interpolator> weakReference;
        synchronized (qMt.class) {
            weakReference = Qhi().get(i);
        }
        return weakReference;
    }

    private static void Qhi(int i, WeakReference<Interpolator> weakReference) {
        synchronized (qMt.class) {
            cJ.put(i, weakReference);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> com.bytedance.adsdk.lottie.ROR.Qhi<T> Qhi(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror, float f2, xyz<T> xyzVar, boolean z, boolean z2) throws IOException {
        if (z && z2) {
            return cJ(ror, jsonReader, f2, xyzVar);
        }
        if (z) {
            return Qhi(ror, jsonReader, f2, xyzVar);
        }
        return Qhi(jsonReader, f2, xyzVar);
    }

    private static <T> com.bytedance.adsdk.lottie.ROR.Qhi<T> Qhi(com.bytedance.adsdk.lottie.ROR ror, JsonReader jsonReader, float f2, xyz<T> xyzVar) throws IOException {
        Interpolator Qhi2;
        jsonReader.beginObject();
        PointF pointF = null;
        T t = null;
        T t2 = null;
        PointF pointF2 = null;
        PointF pointF3 = null;
        float f3 = 0.0f;
        boolean z = false;
        PointF pointF4 = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case 101:
                    if (nextName.equals("e")) {
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
                case 105:
                    if (nextName.equals("i")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 111:
                    if (nextName.equals(NotificationBundleProcessor.PUSH_MINIFIED_BUTTONS_LIST)) {
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
                case 116:
                    if (nextName.equals(d.COLUMN_TYPE)) {
                        c2 = 5;
                        break;
                    }
                    break;
                case 3701:
                    if (nextName.equals("ti")) {
                        c2 = 6;
                        break;
                    }
                    break;
                case 3707:
                    if (nextName.equals(TypedValues.TransitionType.S_TO)) {
                        c2 = 7;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    t = xyzVar.cJ(jsonReader, f2);
                    break;
                case 1:
                    if (jsonReader.nextInt() != 1) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 2:
                    pointF4 = MQ.cJ(jsonReader, 1.0f);
                    break;
                case 3:
                    pointF = MQ.cJ(jsonReader, 1.0f);
                    break;
                case 4:
                    t2 = xyzVar.cJ(jsonReader, f2);
                    break;
                case 5:
                    f3 = (float) jsonReader.nextDouble();
                    break;
                case 6:
                    pointF3 = MQ.cJ(jsonReader, f2);
                    break;
                case 7:
                    pointF2 = MQ.cJ(jsonReader, f2);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        if (z) {
            t = t2;
        } else if (pointF != null && pointF4 != null) {
            Qhi2 = Qhi(pointF, pointF4);
            com.bytedance.adsdk.lottie.ROR.Qhi<T> qhi = new com.bytedance.adsdk.lottie.ROR.Qhi<>(ror, t2, t, Qhi2, f3, null);
            qhi.Sf = pointF2;
            qhi.hm = pointF3;
            return qhi;
        }
        Qhi2 = Qhi;
        com.bytedance.adsdk.lottie.ROR.Qhi<T> qhi2 = new com.bytedance.adsdk.lottie.ROR.Qhi<>(ror, t2, t, Qhi2, f3, null);
        qhi2.Sf = pointF2;
        qhi2.hm = pointF3;
        return qhi2;
    }

    /* JADX WARN: Removed duplicated region for block: B:128:0x0262 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static <T> com.bytedance.adsdk.lottie.ROR.Qhi<T> cJ(com.bytedance.adsdk.lottie.ROR r23, android.util.JsonReader r24, float r25, com.bytedance.adsdk.lottie.fl.xyz<T> r26) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 706
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.lottie.fl.qMt.cJ(com.bytedance.adsdk.lottie.ROR, android.util.JsonReader, float, com.bytedance.adsdk.lottie.fl.xyz):com.bytedance.adsdk.lottie.ROR.Qhi");
    }

    private static Interpolator Qhi(PointF pointF, PointF pointF2) {
        Interpolator linearInterpolator;
        pointF.x = com.bytedance.adsdk.lottie.Tgh.Tgh.cJ(pointF.x, -1.0f, 1.0f);
        pointF.y = com.bytedance.adsdk.lottie.Tgh.Tgh.cJ(pointF.y, -100.0f, 100.0f);
        pointF2.x = com.bytedance.adsdk.lottie.Tgh.Tgh.cJ(pointF2.x, -1.0f, 1.0f);
        pointF2.y = com.bytedance.adsdk.lottie.Tgh.Tgh.cJ(pointF2.y, -100.0f, 100.0f);
        int Qhi2 = com.bytedance.adsdk.lottie.Tgh.ROR.Qhi(pointF.x, pointF.y, pointF2.x, pointF2.y);
        WeakReference<Interpolator> Qhi3 = com.bytedance.adsdk.lottie.Tgh.Qhi() ? null : Qhi(Qhi2);
        Interpolator interpolator = Qhi3 != null ? Qhi3.get() : null;
        if (Qhi3 == null || interpolator == null) {
            try {
                linearInterpolator = com.bytedance.adsdk.lottie.HzH.Qhi(pointF.x, pointF.y, pointF2.x, pointF2.y);
            } catch (IllegalArgumentException e2) {
                if ("The Path cannot loop back on itself.".equals(e2.getMessage())) {
                    linearInterpolator = com.bytedance.adsdk.lottie.HzH.Qhi(Math.min(pointF.x, 1.0f), pointF.y, Math.max(pointF2.x, 0.0f), pointF2.y);
                } else {
                    linearInterpolator = new LinearInterpolator();
                }
            }
            interpolator = linearInterpolator;
            if (!com.bytedance.adsdk.lottie.Tgh.Qhi()) {
                try {
                    Qhi(Qhi2, new WeakReference(interpolator));
                } catch (ArrayIndexOutOfBoundsException unused) {
                }
            }
        }
        return interpolator;
    }

    private static <T> com.bytedance.adsdk.lottie.ROR.Qhi<T> Qhi(JsonReader jsonReader, float f2, xyz<T> xyzVar) throws IOException {
        return new com.bytedance.adsdk.lottie.ROR.Qhi<>(xyzVar.cJ(jsonReader, f2));
    }
}
