package com.bytedance.sdk.openadsdk.core.ROR.cJ;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.ROR.cJ.ac;
import org.apache.commons.lang.time.DateUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: VastAbsoluteProgressTracker.java */
/* loaded from: classes2.dex */
public class Qhi extends ac implements Comparable<Qhi> {
    public long Qhi;

    protected Qhi(long j, String str, ac.EnumC0219ac enumC0219ac, Boolean bool) {
        super(str, enumC0219ac, bool);
        this.Qhi = j;
    }

    public static int Qhi(String str) {
        if (TextUtils.isEmpty(str)) {
            return Integer.MIN_VALUE;
        }
        String[] split = str.split(":");
        if (split.length == 3) {
            try {
                return (int) ((Integer.parseInt(split[0]) * DateUtils.MILLIS_IN_HOUR) + (Integer.parseInt(split[1]) * 60000) + (Float.parseFloat(split[2]) * 1000.0f));
            } catch (Throwable unused) {
            }
        }
        return Integer.MIN_VALUE;
    }

    public boolean Qhi(long j) {
        return this.Qhi <= j && !fl();
    }

    @Override // java.lang.Comparable
    /* renamed from: Qhi */
    public int compareTo(Qhi qhi) {
        if (qhi != null) {
            long j = this.Qhi;
            long j2 = qhi.Qhi;
            if (j > j2) {
                return 1;
            }
            return j < j2 ? -1 : 0;
        }
        return 1;
    }

    /* compiled from: VastAbsoluteProgressTracker.java */
    /* renamed from: com.bytedance.sdk.openadsdk.core.ROR.cJ.Qhi$Qhi  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0218Qhi {
        private final String Qhi;
        private final long cJ;
        private ac.EnumC0219ac ac = ac.EnumC0219ac.TRACKING_URL;
        private boolean CJ = false;

        public C0218Qhi(String str, long j) {
            this.Qhi = str;
            this.cJ = j;
        }

        public Qhi Qhi() {
            return new Qhi(this.cJ, this.Qhi, this.ac, Boolean.valueOf(this.CJ));
        }
    }

    public JSONObject Qhi() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("content", ac());
        jSONObject.put("trackingMilliseconds", this.Qhi);
        return jSONObject;
    }
}
