package com.bytedance.sdk.openadsdk.MQ;

import android.text.TextUtils;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.zc;
import com.bytedance.sdk.openadsdk.utils.js;
import java.net.URLEncoder;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: TrackAdUrlUtils.java */
/* loaded from: classes2.dex */
public class Qhi {
    private static int Qhi(int i) {
        int i2 = 2;
        if (i != 2) {
            i2 = 3;
            if (i != 3) {
                i2 = 4;
                if (i != 4) {
                    i2 = 5;
                    if (i != 5 && i != 15) {
                        return -1;
                    }
                }
            }
        }
        return i2;
    }

    public static List<String> Qhi(List<String> list, boolean z) {
        String Qhi = zc.Qhi(HzH.Qhi());
        if (list == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (next.contains("{TS}") || next.contains("__TS__")) {
                long currentTimeMillis = System.currentTimeMillis();
                next = next.replace("{TS}", String.valueOf(currentTimeMillis)).replace("__TS__", String.valueOf(currentTimeMillis));
            }
            if ((next.contains("{UID}") || next.contains("__UID__")) && !TextUtils.isEmpty(Qhi)) {
                next = next.replace("{UID}", Qhi).replace("__UID__", Qhi);
            }
            if (z) {
                next = Qhi(next);
            }
            arrayList.add(next);
        }
        return arrayList;
    }

    private static String Qhi(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            return str.replace("[ss_random]", String.valueOf(new SecureRandom().nextLong())).replace("[ss_timestamp]", String.valueOf(System.currentTimeMillis()));
        } catch (Exception e2) {
            ABk.Qhi("TrackAdUrlUtils", e2.getMessage());
            return str;
        }
    }

    public static List<String> Qhi(List<String> list, boolean z, tP tPVar) {
        String Qhi = zc.Qhi(HzH.Qhi());
        if (list == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (next.contains("{TS}") || next.contains("__TS__")) {
                long currentTimeMillis = System.currentTimeMillis();
                next = next.replace("{TS}", String.valueOf(currentTimeMillis)).replace("__TS__", String.valueOf(currentTimeMillis));
            }
            if ((next.contains("{UID}") || next.contains("__UID__")) && !TextUtils.isEmpty(Qhi)) {
                next = next.replace("{UID}", Qhi).replace("__UID__", Qhi);
            }
            if (next.contains("__CID__") && tPVar != null && !TextUtils.isEmpty(tPVar.HLI())) {
                next = next.replace("__CID__", tPVar.HLI());
            }
            if (next.contains("__CTYPE__") && tPVar != null) {
                next = next.replace("__CTYPE__", String.valueOf(Qhi(tPVar.gga())));
            }
            if (next.contains("__GAID__")) {
                next = next.replace("__GAID__", com.bytedance.sdk.openadsdk.pA.Qhi.cJ.Qhi.Qhi().cJ());
            }
            if (next.contains("__OS__")) {
                next = next.replace("__OS__", "0");
            }
            if (next.contains("__UA1__")) {
                next = next.replace("__UA1__", URLEncoder.encode(js.ac()));
            }
            if (z) {
                next = Qhi(next);
            }
            arrayList.add(next);
        }
        return arrayList;
    }
}
