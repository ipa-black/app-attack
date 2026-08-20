package com.bytedance.sdk.component.widget;

import com.bytedance.sdk.component.utils.ABk;
import java.util.List;
import java.util.regex.Pattern;
/* compiled from: ArbitrageUtils.java */
/* loaded from: classes2.dex */
public class cJ {
    public static boolean Qhi(List<String> list, String str) {
        if (list != null && !list.isEmpty()) {
            for (String str2 : list) {
                try {
                } catch (Throwable th) {
                    ABk.cJ(th.toString());
                }
                if (Pattern.matches(str2, str)) {
                    return true;
                }
            }
        }
        return false;
    }
}
