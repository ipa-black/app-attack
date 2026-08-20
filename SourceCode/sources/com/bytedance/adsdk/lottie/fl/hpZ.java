package com.bytedance.adsdk.lottie.fl;

import android.graphics.Color;
import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* compiled from: GradientColorParser.java */
/* loaded from: classes2.dex */
public class hpZ implements xyz<com.bytedance.adsdk.lottie.ac.cJ.fl> {
    private int Qhi;

    public hpZ(int i) {
        this.Qhi = i;
    }

    @Override // com.bytedance.adsdk.lottie.fl.xyz
    /* renamed from: Qhi */
    public com.bytedance.adsdk.lottie.ac.cJ.fl cJ(JsonReader jsonReader, float f2) throws IOException {
        ArrayList arrayList = new ArrayList();
        boolean z = jsonReader.peek() == JsonToken.BEGIN_ARRAY;
        if (z) {
            jsonReader.beginArray();
        }
        while (jsonReader.hasNext()) {
            arrayList.add(Float.valueOf((float) jsonReader.nextDouble()));
        }
        if (arrayList.size() == 4 && arrayList.get(0).floatValue() == 1.0f) {
            arrayList.set(0, Float.valueOf(0.0f));
            arrayList.add(Float.valueOf(1.0f));
            arrayList.add(arrayList.get(1));
            arrayList.add(arrayList.get(2));
            arrayList.add(arrayList.get(3));
            this.Qhi = 2;
        }
        if (z) {
            jsonReader.endArray();
        }
        if (this.Qhi == -1) {
            this.Qhi = arrayList.size() / 4;
        }
        int i = this.Qhi;
        float[] fArr = new float[i];
        int[] iArr = new int[i];
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < this.Qhi * 4; i4++) {
            int i5 = i4 / 4;
            double floatValue = arrayList.get(i4).floatValue();
            int i6 = i4 % 4;
            if (i6 == 0) {
                if (i5 > 0) {
                    float f3 = (float) floatValue;
                    if (fArr[i5 - 1] >= f3) {
                        fArr[i5] = f3 + 0.01f;
                    }
                }
                fArr[i5] = (float) floatValue;
            } else if (i6 == 1) {
                i2 = (int) (floatValue * 255.0d);
            } else if (i6 == 2) {
                i3 = (int) (floatValue * 255.0d);
            } else if (i6 == 3) {
                iArr[i5] = Color.argb(255, i2, i3, (int) (floatValue * 255.0d));
            }
        }
        return Qhi(new com.bytedance.adsdk.lottie.ac.cJ.fl(fArr, iArr), arrayList);
    }

    private com.bytedance.adsdk.lottie.ac.cJ.fl Qhi(com.bytedance.adsdk.lottie.ac.cJ.fl flVar, List<Float> list) {
        int i = this.Qhi * 4;
        if (list.size() <= i) {
            return flVar;
        }
        float[] Qhi = flVar.Qhi();
        int[] cJ = flVar.cJ();
        int size = (list.size() - i) / 2;
        float[] fArr = new float[size];
        float[] fArr2 = new float[size];
        int i2 = 0;
        while (i < list.size()) {
            if (i % 2 == 0) {
                fArr[i2] = list.get(i).floatValue();
            } else {
                fArr2[i2] = list.get(i).floatValue();
                i2++;
            }
            i++;
        }
        float[] Qhi2 = Qhi(flVar.Qhi(), fArr);
        int length = Qhi2.length;
        int[] iArr = new int[length];
        for (int i3 = 0; i3 < length; i3++) {
            float f2 = Qhi2[i3];
            int binarySearch = Arrays.binarySearch(Qhi, f2);
            int binarySearch2 = Arrays.binarySearch(fArr, f2);
            if (binarySearch < 0 || binarySearch2 > 0) {
                if (binarySearch2 < 0) {
                    binarySearch2 = -(binarySearch2 + 1);
                }
                iArr[i3] = Qhi(f2, fArr2[binarySearch2], Qhi, cJ);
            } else {
                iArr[i3] = Qhi(f2, cJ[binarySearch], fArr, fArr2);
            }
        }
        return new com.bytedance.adsdk.lottie.ac.cJ.fl(Qhi2, iArr);
    }

    int Qhi(float f2, float f3, float[] fArr, int[] iArr) {
        if (iArr.length < 2 || f2 == fArr[0]) {
            return iArr[0];
        }
        for (int i = 1; i < fArr.length; i++) {
            float f4 = fArr[i];
            if (f4 >= f2 || i == fArr.length - 1) {
                int i2 = i - 1;
                float f5 = fArr[i2];
                float f6 = (f2 - f5) / (f4 - f5);
                int i3 = iArr[i];
                int i4 = iArr[i2];
                return Color.argb((int) (f3 * 255.0f), com.bytedance.adsdk.lottie.Tgh.cJ.Qhi(f6, Color.red(i4), Color.red(i3)), com.bytedance.adsdk.lottie.Tgh.cJ.Qhi(f6, Color.green(i4), Color.green(i3)), com.bytedance.adsdk.lottie.Tgh.cJ.Qhi(f6, Color.blue(i4), Color.blue(i3)));
            }
        }
        throw new IllegalArgumentException("Unreachable code.");
    }

    private int Qhi(float f2, int i, float[] fArr, float[] fArr2) {
        float Qhi;
        if (fArr2.length < 2 || f2 <= fArr[0]) {
            return Color.argb((int) (fArr2[0] * 255.0f), Color.red(i), Color.green(i), Color.blue(i));
        }
        for (int i2 = 1; i2 < fArr.length; i2++) {
            float f3 = fArr[i2];
            int i3 = (f3 > f2 ? 1 : (f3 == f2 ? 0 : -1));
            if (i3 >= 0 || i2 == fArr.length - 1) {
                if (i3 <= 0) {
                    Qhi = fArr2[i2];
                } else {
                    int i4 = i2 - 1;
                    float f4 = fArr[i4];
                    Qhi = com.bytedance.adsdk.lottie.Tgh.Tgh.Qhi(fArr2[i4], fArr2[i2], (f2 - f4) / (f3 - f4));
                }
                return Color.argb((int) (Qhi * 255.0f), Color.red(i), Color.green(i), Color.blue(i));
            }
        }
        throw new IllegalArgumentException("Unreachable code.");
    }

    protected static float[] Qhi(float[] fArr, float[] fArr2) {
        if (fArr.length == 0) {
            return fArr2;
        }
        if (fArr2.length == 0) {
            return fArr;
        }
        int length = fArr.length + fArr2.length;
        float[] fArr3 = new float[length];
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            float f2 = i2 < fArr.length ? fArr[i2] : Float.NaN;
            float f3 = i3 < fArr2.length ? fArr2[i3] : Float.NaN;
            if (Float.isNaN(f3) || f2 < f3) {
                fArr3[i4] = f2;
                i2++;
            } else if (Float.isNaN(f2) || f3 < f2) {
                fArr3[i4] = f3;
                i3++;
            } else {
                fArr3[i4] = f2;
                i2++;
                i3++;
                i++;
            }
        }
        return i == 0 ? fArr3 : Arrays.copyOf(fArr3, length - i);
    }
}
