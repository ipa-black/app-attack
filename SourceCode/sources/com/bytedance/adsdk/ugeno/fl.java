package com.bytedance.adsdk.ugeno;

import android.content.Context;
import com.bytedance.adsdk.ugeno.core.Tgh;
import java.util.ArrayList;
import java.util.List;
/* compiled from: UGenoEnv.java */
/* loaded from: classes2.dex */
public class fl {
    private static volatile fl Qhi;
    private Qhi CJ;
    private com.bytedance.adsdk.ugeno.core.ac ac;
    private List<com.bytedance.adsdk.ugeno.core.cJ> cJ;

    public static fl Qhi() {
        if (Qhi == null) {
            synchronized (fl.class) {
                if (Qhi == null) {
                    Qhi = new fl();
                }
            }
        }
        return Qhi;
    }

    private fl() {
    }

    public void Qhi(Context context, com.bytedance.adsdk.ugeno.core.ac acVar, Qhi qhi) {
        this.ac = acVar;
        this.CJ = qhi;
        ac();
    }

    public Qhi cJ() {
        return this.CJ;
    }

    private void ac() {
        this.cJ = new ArrayList();
        this.cJ.addAll(new Tgh().Qhi());
        com.bytedance.adsdk.ugeno.core.ac acVar = this.ac;
        if (acVar != null) {
            this.cJ.addAll(acVar.Qhi());
        }
        com.bytedance.adsdk.ugeno.core.fl.Qhi(this.cJ);
    }
}
