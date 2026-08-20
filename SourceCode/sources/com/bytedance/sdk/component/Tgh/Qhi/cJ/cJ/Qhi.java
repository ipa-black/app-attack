package com.bytedance.sdk.component.Tgh.Qhi.cJ.cJ;

import android.content.ContentResolver;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh;
import com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.ROR;
import com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Sf;
import com.bytedance.sdk.component.Tgh.Qhi.hm;
import java.util.List;
/* compiled from: EventProviderImpl.java */
/* loaded from: classes2.dex */
public class Qhi {
    private static ContentResolver ac() {
        try {
            if (hm.ROR().Tgh() != null) {
                return hm.ROR().Tgh().getContentResolver();
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void Qhi() {
        if (hm.ROR().Tgh() == null) {
            return;
        }
        try {
            ContentResolver ac = ac();
            if (ac != null) {
                ac.getType(Uri.parse(CJ() + "adLogStart"));
            }
        } catch (Throwable unused) {
        }
    }

    public static void cJ() {
        if (hm.ROR().Tgh() == null) {
            return;
        }
        try {
            ContentResolver ac = ac();
            if (ac != null) {
                ac.getType(Uri.parse(CJ() + "adLogStop"));
            }
        } catch (Throwable unused) {
        }
    }

    public static void Qhi(Tgh tgh) {
        if (tgh == null) {
            return;
        }
        try {
            ContentResolver ac = ac();
            if (ac != null) {
                ac.getType(Uri.parse(CJ() + "adLogDispatch?event=" + ROR.Qhi(tgh.Tgh())));
            }
        } catch (Throwable th) {
            th.toString();
        }
    }

    public static void Qhi(String str, List<String> list, boolean z) {
        if (!TextUtils.isEmpty(str) && list != null && !list.isEmpty()) {
            try {
                StringBuilder sb = new StringBuilder();
                for (String str2 : list) {
                    sb.append(ROR.Qhi(str2)).append(",");
                }
                String str3 = "?did=" + String.valueOf(str) + "&track=" + String.valueOf(ROR.Qhi(sb.toString())) + "&replace=" + String.valueOf(z);
                ContentResolver ac = ac();
                if (ac == null) {
                    return;
                }
                ac.getType(Uri.parse(CJ() + "trackAdUrl" + str3));
            } catch (Throwable unused) {
            }
        }
    }

    public static void Qhi(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            ContentResolver ac = ac();
            if (ac != null) {
                ac.getType(Uri.parse(CJ() + "trackAdFailed?did=" + String.valueOf(str)));
            }
        } catch (Throwable unused) {
        }
    }

    private static String CJ() {
        return Sf.cJ + "/ad_log_event/";
    }
}
