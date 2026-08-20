package com.bytedance.sdk.component.adexpress.dynamic.CJ;

import android.text.TextUtils;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.dynamic.CJ.ac;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONObject;
/* compiled from: LayoutUnitSizeUtils.java */
/* loaded from: classes2.dex */
public class ABk {
    private static final Set<String> Qhi = Collections.unmodifiableSet(new HashSet(Arrays.asList("dislike", "close", "close-fill", "webview-close")));
    private static String cJ;

    /* JADX WARN: Can't wrap try/catch for region: R(9:(3:179|(1:182)|183)(2:208|(1:210)(5:211|185|(5:195|196|197|(3:199|(1:205)(1:202)|203)|206)|193|194))|184|185|(3:187|189|191)|195|196|197|(0)|206) */
    /* JADX WARN: Removed duplicated region for block: B:221:0x048d A[Catch: Exception -> 0x049e, TryCatch #2 {Exception -> 0x049e, blocks: (B:219:0x0482, B:221:0x048d, B:226:0x0497), top: B:273:0x0482 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.bytedance.sdk.component.adexpress.dynamic.CJ.ac.C0190ac Qhi(java.lang.String r19, java.lang.String r20, java.lang.String r21, boolean r22, boolean r23, int r24, com.bytedance.sdk.component.adexpress.dynamic.ac.hm r25, double r26, int r28, double r29, java.lang.String r31, com.bytedance.sdk.component.adexpress.cJ.iMK r32) {
        /*
            Method dump skipped, instructions count: 1347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.adexpress.dynamic.CJ.ABk.Qhi(java.lang.String, java.lang.String, java.lang.String, boolean, boolean, int, com.bytedance.sdk.component.adexpress.dynamic.ac.hm, double, int, double, java.lang.String, com.bytedance.sdk.component.adexpress.cJ.iMK):com.bytedance.sdk.component.adexpress.dynamic.CJ.ac$ac");
    }

    public static String Qhi(String str) {
        String[] split;
        return (TextUtils.isEmpty(str) || (split = str.split("adx:")) == null || split.length < 2) ? "" : split[1];
    }

    private static ac.C0190ac Qhi(ac.C0190ac c0190ac, String str, String str2, String str3) {
        if (str.contains("union")) {
            c0190ac.Qhi = 0.0f;
            c0190ac.cJ = 0.0f;
        } else {
            if (TextUtils.isEmpty(str3)) {
                str3 = Qhi(str);
            }
            if (TextUtils.isEmpty(str3)) {
                c0190ac.Qhi = 0.0f;
                c0190ac.cJ = 0.0f;
            } else {
                return Qhi(str3, str2);
            }
        }
        return c0190ac;
    }

    public static ac.C0190ac Qhi(String str, String str2) {
        return Qhi(str, str2, false);
    }

    public static ac.C0190ac Qhi(String str, String str2, boolean z) {
        ac.C0190ac c0190ac = new ac.C0190ac();
        try {
            JSONObject jSONObject = new JSONObject(str2);
            int[] Qhi2 = Qhi(str, (float) cJ(str2), z);
            c0190ac.Qhi = Qhi2[0];
            c0190ac.cJ = Qhi2[1];
            if (jSONObject.optDouble("lineHeight", 1.0d) == 0.0d) {
                c0190ac.cJ = 0.0f;
            }
        } catch (Exception unused) {
        }
        return c0190ac;
    }

    public static double cJ(String str) {
        try {
            return Double.parseDouble(new JSONObject(str).optString(TtmlNode.ATTR_TTS_FONT_SIZE));
        } catch (Throwable unused) {
            return 0.0d;
        }
    }

    public static int[] Qhi(String str, float f2, boolean z) {
        int[] cJ2 = cJ(str, f2, z);
        return new int[]{CQU.cJ(com.bytedance.sdk.component.adexpress.fl.Qhi(), cJ2[0]), CQU.cJ(com.bytedance.sdk.component.adexpress.fl.Qhi(), cJ2[1])};
    }

    public static int[] cJ(String str, float f2, boolean z) {
        try {
            TextView textView = new TextView(com.bytedance.sdk.component.adexpress.fl.Qhi());
            textView.setTextSize(f2);
            textView.setText(str);
            textView.setIncludeFontPadding(false);
            if (z) {
                textView.setSingleLine();
            }
            textView.measure(-2, -2);
            return new int[]{textView.getMeasuredWidth() + 2, textView.getMeasuredHeight() + 2};
        } catch (Exception unused) {
            return new int[]{0, 0};
        }
    }

    public static String Qhi() {
        return cJ;
    }

    public static boolean cJ() {
        return !TextUtils.isEmpty(cJ);
    }
}
