package com.bytedance.sdk.openadsdk.core.ROR.ac;

import com.google.android.exoplayer2.util.MimeTypes;
import java.util.Arrays;
import java.util.List;
/* compiled from: VastUtils.java */
/* loaded from: classes2.dex */
public class fl {
    public static final List<String> Qhi = Arrays.asList(MimeTypes.VIDEO_MP4, MimeTypes.VIDEO_H263);

    public static double Qhi(int i, double d2, int i2, int i3, int i4, String str) {
        double Qhi2 = Qhi(i, d2, i2, i3);
        return Qhi(str) * (1.0d / ((Qhi2 + 1.0d) + Qhi(i4)));
    }

    private static double Qhi(int i, double d2, int i2, int i3) {
        return (d2 > 0.0d ? Math.abs(d2 - (i3 > 0 ? i2 / i3 : 0.0d)) : 0.0d) + (i > 0 ? Math.abs((i - i2) / i) : 0.0d);
    }

    private static double Qhi(int i) {
        int max = Math.max(i, 0);
        if (700 > max || max > 1500) {
            return Math.min(Math.abs(700 - max) / 700.0f, Math.abs(1500 - max) / 1500.0f);
        }
        return 0.0d;
    }

    private static double Qhi(String str) {
        if (str == null) {
            str = "";
        }
        int hashCode = str.hashCode();
        if (hashCode != -1664118616) {
            return (hashCode == 1331848029 && str.equals(MimeTypes.VIDEO_MP4)) ? 1.5d : 1.0d;
        }
        str.equals(MimeTypes.VIDEO_H263);
        return 1.0d;
    }
}
