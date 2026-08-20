package com.bytedance.adsdk.lottie.fl;

import android.util.JsonReader;
import java.io.IOException;
import java.util.List;
/* compiled from: AnimatableValueParser.java */
/* loaded from: classes2.dex */
public class fl {
    public static com.bytedance.adsdk.lottie.ac.Qhi.cJ Qhi(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror) throws IOException {
        return Qhi(jsonReader, ror, true);
    }

    public static com.bytedance.adsdk.lottie.ac.Qhi.cJ Qhi(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror, boolean z) throws IOException {
        return new com.bytedance.adsdk.lottie.ac.Qhi.cJ(Qhi(jsonReader, z ? com.bytedance.adsdk.lottie.Tgh.ROR.Qhi() : 1.0f, ror, ABk.Qhi));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.lottie.ac.Qhi.fl cJ(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror) throws IOException {
        return new com.bytedance.adsdk.lottie.ac.Qhi.fl(Qhi(jsonReader, ror, tP.Qhi));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.lottie.ac.Qhi.ROR ac(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror) throws IOException {
        return new com.bytedance.adsdk.lottie.ac.Qhi.ROR(EBS.Qhi(jsonReader, ror, com.bytedance.adsdk.lottie.Tgh.ROR.Qhi(), NFd.Qhi, true));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.lottie.ac.Qhi.Sf CJ(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror) throws IOException {
        return new com.bytedance.adsdk.lottie.ac.Qhi.Sf(Qhi(jsonReader, ror, js.Qhi));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.lottie.ac.Qhi.hm fl(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror) throws IOException {
        return new com.bytedance.adsdk.lottie.ac.Qhi.hm(Qhi(jsonReader, com.bytedance.adsdk.lottie.Tgh.ROR.Qhi(), ror, zn.Qhi));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.lottie.ac.Qhi.Gm Tgh(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror) throws IOException {
        return new com.bytedance.adsdk.lottie.ac.Qhi.Gm(Qhi(jsonReader, com.bytedance.adsdk.lottie.Tgh.ROR.Qhi(), ror, WAv.Qhi));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.lottie.ac.Qhi.Qhi ROR(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror) throws IOException {
        return new com.bytedance.adsdk.lottie.ac.Qhi.Qhi(Qhi(jsonReader, ror, Sf.Qhi));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.bytedance.adsdk.lottie.ac.Qhi.ac Qhi(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror, int i) throws IOException {
        return new com.bytedance.adsdk.lottie.ac.Qhi.ac(Qhi(jsonReader, ror, new hpZ(i)));
    }

    private static <T> List<com.bytedance.adsdk.lottie.ROR.Qhi<T>> Qhi(JsonReader jsonReader, com.bytedance.adsdk.lottie.ROR ror, xyz<T> xyzVar) throws IOException {
        return EBS.Qhi(jsonReader, ror, 1.0f, xyzVar, false);
    }

    private static <T> List<com.bytedance.adsdk.lottie.ROR.Qhi<T>> Qhi(JsonReader jsonReader, float f2, com.bytedance.adsdk.lottie.ROR ror, xyz<T> xyzVar) throws IOException {
        return EBS.Qhi(jsonReader, ror, f2, xyzVar, false);
    }
}
