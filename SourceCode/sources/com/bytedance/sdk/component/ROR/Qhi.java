package com.bytedance.sdk.component.ROR;

import android.content.Context;
import android.os.Bundle;
import com.bytedance.sdk.component.ROR.CJ.Sf;
import com.bytedance.sdk.component.ROR.ac.Sf;
import com.bytedance.sdk.component.ROR.cJ.fl;
import com.bytedance.sdk.component.cJ.Qhi.hm;
import com.bytedance.sdk.component.cJ.Qhi.zc;
import com.bytedance.sdk.component.utils.kYc;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
/* compiled from: NetClient.java */
/* loaded from: classes2.dex */
public class Qhi {
    private zc Qhi;
    private int ac;
    private Sf cJ;

    private Qhi(C0182Qhi c0182Qhi) {
        zc.Qhi cJ = new zc.Qhi().Qhi(c0182Qhi.Qhi, TimeUnit.MILLISECONDS).ac(c0182Qhi.ac, TimeUnit.MILLISECONDS).cJ(c0182Qhi.cJ, TimeUnit.MILLISECONDS);
        if (c0182Qhi.CJ) {
            Sf sf = new Sf();
            this.cJ = sf;
            cJ.Qhi(sf);
        }
        if (c0182Qhi.fl != null && c0182Qhi.fl.size() > 0) {
            for (hm hmVar : c0182Qhi.fl) {
                cJ.Qhi(hmVar);
            }
        }
        if (c0182Qhi.ROR != null) {
            Bundle unused = c0182Qhi.ROR;
        }
        Set unused2 = c0182Qhi.Tgh;
        this.Qhi = cJ.Qhi();
    }

    public void Qhi(Context context, boolean z, com.bytedance.sdk.component.ROR.ac.cJ cJVar) {
        if (context == null) {
            throw new IllegalArgumentException("tryInitAdTTNet context is null");
        }
        if (cJVar == null) {
            throw new IllegalArgumentException("tryInitAdTTNet ITTAdNetDepend is null");
        }
        int Qhi = cJVar.Qhi();
        this.ac = Qhi;
        Sf sf = this.cJ;
        if (sf != null) {
            sf.Qhi(Qhi);
        }
        com.bytedance.sdk.component.ROR.ac.hm.Qhi().Qhi(this.ac).Qhi(z);
        com.bytedance.sdk.component.ROR.ac.hm.Qhi().Qhi(this.ac).Qhi(cJVar);
        com.bytedance.sdk.component.ROR.ac.hm.Qhi().Qhi(this.ac).Qhi(context, kYc.Qhi(context));
    }

    public void Qhi(Context context, boolean z) {
        com.bytedance.sdk.component.ROR.ac.Qhi.cJ(true);
        if (Qhi(context) || (!kYc.Qhi(context) && z)) {
            com.bytedance.sdk.component.ROR.ac.hm.Qhi().Qhi(this.ac, context).CJ();
            com.bytedance.sdk.component.ROR.ac.hm.Qhi().Qhi(this.ac, context).Qhi();
        }
        if (kYc.Qhi(context)) {
            com.bytedance.sdk.component.ROR.ac.hm.Qhi().Qhi(this.ac, context).CJ();
            com.bytedance.sdk.component.ROR.ac.hm.Qhi().Qhi(this.ac, context).Qhi();
        }
    }

    public static void Qhi() {
        com.bytedance.sdk.component.ROR.CJ.Sf.Qhi(Sf.Qhi.DEBUG);
    }

    public fl cJ() {
        return new fl(this.Qhi);
    }

    public com.bytedance.sdk.component.ROR.cJ.cJ ac() {
        return new com.bytedance.sdk.component.ROR.cJ.cJ(this.Qhi);
    }

    public com.bytedance.sdk.component.ROR.cJ.Qhi CJ() {
        return new com.bytedance.sdk.component.ROR.cJ.Qhi(this.Qhi);
    }

    private static boolean Qhi(Context context) {
        String cJ = kYc.cJ(context);
        if (cJ != null) {
            return cJ.endsWith(":push") || cJ.endsWith(":pushservice");
        }
        return false;
    }

    public zc fl() {
        return this.Qhi;
    }

    /* compiled from: NetClient.java */
    /* renamed from: com.bytedance.sdk.component.ROR.Qhi$Qhi  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0182Qhi {
        private Bundle ROR;
        private Set<String> Tgh;
        boolean CJ = true;
        final List<hm> fl = new ArrayList();
        int Qhi = 10000;
        int cJ = 10000;
        int ac = 10000;

        public C0182Qhi Qhi(long j, TimeUnit timeUnit) {
            this.Qhi = Qhi("timeout", j, timeUnit);
            return this;
        }

        public C0182Qhi cJ(long j, TimeUnit timeUnit) {
            this.cJ = Qhi("timeout", j, timeUnit);
            return this;
        }

        public C0182Qhi ac(long j, TimeUnit timeUnit) {
            this.ac = Qhi("timeout", j, timeUnit);
            return this;
        }

        public C0182Qhi Qhi(boolean z) {
            this.CJ = z;
            return this;
        }

        private static int Qhi(String str, long j, TimeUnit timeUnit) {
            int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            if (i >= 0) {
                if (timeUnit == null) {
                    throw new NullPointerException("unit == null");
                }
                long millis = timeUnit.toMillis(j);
                if (millis <= 2147483647L) {
                    if (millis != 0 || i <= 0) {
                        return (int) millis;
                    }
                    throw new IllegalArgumentException(str + " too small.");
                }
                throw new IllegalArgumentException(str + " too large.");
            }
            throw new IllegalArgumentException(str + " < 0");
        }

        public Qhi Qhi() {
            return new Qhi(this);
        }
    }
}
