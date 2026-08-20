package com.bytedance.sdk.component.adexpress.dynamic.cJ;

import android.text.TextUtils;
import com.bytedance.sdk.component.adexpress.dynamic.ac.Sf;
/* compiled from: DynamicInteractHelper.java */
/* loaded from: classes2.dex */
public class Qhi {
    public static int Qhi(Sf sf) {
        if (sf == null) {
            return 0;
        }
        String es = sf.es();
        String Dww = sf.Dww();
        if (TextUtils.isEmpty(Dww) || TextUtils.isEmpty(es) || !Dww.equals("creative")) {
            return 0;
        }
        if (es.equals("shake")) {
            return 2;
        }
        if (es.equals("twist")) {
            return 3;
        }
        return es.equals("slide") ? 1 : 0;
    }
}
