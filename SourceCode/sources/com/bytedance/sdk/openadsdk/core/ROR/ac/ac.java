package com.bytedance.sdk.openadsdk.core.ROR.ac;

import android.text.TextUtils;
import com.google.android.exoplayer2.C;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* compiled from: VastMacroHelper.java */
/* loaded from: classes2.dex */
public class ac {
    private final List<String> Qhi;
    private final Map<cJ, String> cJ;

    public ac(List<String> list) {
        this.Qhi = list;
        HashMap hashMap = new HashMap();
        this.cJ = hashMap;
        hashMap.put(cJ.CACHEBUSTING, cJ());
    }

    public List<String> Qhi() {
        cJ[] values;
        ArrayList arrayList = new ArrayList();
        for (String str : this.Qhi) {
            if (!TextUtils.isEmpty(str)) {
                for (cJ cJVar : cJ.values()) {
                    String str2 = this.cJ.get(cJVar);
                    if (str2 == null) {
                        str2 = "";
                    }
                    str = str.replaceAll("\\[" + cJVar.name() + "\\]", str2);
                }
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public ac Qhi(com.bytedance.sdk.openadsdk.core.ROR.Qhi.Qhi qhi) {
        if (qhi != null) {
            this.cJ.put(cJ.ERRORCODE, qhi.Qhi());
        }
        return this;
    }

    public ac Qhi(long j) {
        if (j >= 0) {
            String cJ = cJ(j);
            if (!TextUtils.isEmpty(cJ)) {
                this.cJ.put(cJ.CONTENTPLAYHEAD, cJ);
            }
        }
        return this;
    }

    public ac Qhi(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                str = URLEncoder.encode(str, C.UTF8_NAME);
            } catch (Throwable unused) {
            }
            this.cJ.put(cJ.ASSETURI, str);
        }
        return this;
    }

    private String cJ() {
        return String.format(Locale.US, "%08d", Long.valueOf(Math.round(Math.random() * 1.0E8d)));
    }

    private String cJ(long j) {
        return String.format(Locale.getDefault(), "%02d:%02d:%02d.%03d", Long.valueOf(TimeUnit.MILLISECONDS.toHours(j)), Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(j) % TimeUnit.HOURS.toMinutes(1L)), Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(j) % TimeUnit.MINUTES.toSeconds(1L)), Long.valueOf(j % 1000));
    }
}
