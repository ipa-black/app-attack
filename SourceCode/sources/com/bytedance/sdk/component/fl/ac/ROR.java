package com.bytedance.sdk.component.fl.ac;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.ImageView;
import com.bytedance.sdk.component.fl.ABk;
import com.bytedance.sdk.component.fl.EBS;
import com.bytedance.sdk.component.fl.MQ;
import com.bytedance.sdk.component.fl.iMK;
import com.bytedance.sdk.component.fl.kYc;
import com.bytedance.sdk.component.fl.tP;
import java.io.File;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
/* compiled from: LoadFactory.java */
/* loaded from: classes2.dex */
public class ROR {
    private ABk ROR;
    private ExecutorService Sf;
    private com.bytedance.sdk.component.fl.fl Tgh;
    private final iMK cJ;
    private kYc hm;
    private Map<String, List<ac>> Qhi = new ConcurrentHashMap();
    private Map<String, tP> ac = new HashMap();
    private Map<String, MQ> CJ = new HashMap();
    private Map<String, com.bytedance.sdk.component.fl.ac> fl = new HashMap();

    public ROR(Context context, iMK imk) {
        this.cJ = (iMK) hm.Qhi(imk);
        com.bytedance.sdk.component.fl.ac.Qhi.Qhi.Qhi(context, imk.hm());
    }

    public Collection<tP> Qhi() {
        return this.ac.values();
    }

    public Collection<MQ> cJ() {
        return this.CJ.values();
    }

    public Collection<com.bytedance.sdk.component.fl.ac> ac() {
        return this.fl.values();
    }

    public tP Qhi(com.bytedance.sdk.component.fl.cJ cJVar) {
        if (cJVar == null) {
            cJVar = com.bytedance.sdk.component.fl.ac.Qhi.Qhi.ROR();
        }
        String file = cJVar.fl().toString();
        tP tPVar = this.ac.get(file);
        if (tPVar == null) {
            tP CJ = CJ(cJVar);
            this.ac.put(file, CJ);
            return CJ;
        }
        return tPVar;
    }

    private tP CJ(com.bytedance.sdk.component.fl.cJ cJVar) {
        tP fl = this.cJ.fl();
        if (fl != null) {
            return com.bytedance.sdk.component.fl.ac.Qhi.cJ.Qhi.Qhi(fl);
        }
        return com.bytedance.sdk.component.fl.ac.Qhi.cJ.Qhi.Qhi(cJVar.cJ());
    }

    public MQ cJ(com.bytedance.sdk.component.fl.cJ cJVar) {
        if (cJVar == null) {
            cJVar = com.bytedance.sdk.component.fl.ac.Qhi.Qhi.ROR();
        }
        String file = cJVar.fl().toString();
        MQ mq = this.CJ.get(file);
        if (mq == null) {
            MQ fl = fl(cJVar);
            this.CJ.put(file, fl);
            return fl;
        }
        return mq;
    }

    private MQ fl(com.bytedance.sdk.component.fl.cJ cJVar) {
        MQ Tgh = this.cJ.Tgh();
        return Tgh != null ? Tgh : com.bytedance.sdk.component.fl.ac.Qhi.cJ.Tgh.Qhi(cJVar.cJ());
    }

    public com.bytedance.sdk.component.fl.ac ac(com.bytedance.sdk.component.fl.cJ cJVar) {
        if (cJVar == null) {
            cJVar = com.bytedance.sdk.component.fl.ac.Qhi.Qhi.ROR();
        }
        String file = cJVar.fl().toString();
        com.bytedance.sdk.component.fl.ac acVar = this.fl.get(file);
        if (acVar == null) {
            com.bytedance.sdk.component.fl.ac Tgh = Tgh(cJVar);
            this.fl.put(file, Tgh);
            return Tgh;
        }
        return acVar;
    }

    public com.bytedance.sdk.component.fl.ac Qhi(String str) {
        return ac(com.bytedance.sdk.component.fl.ac.Qhi.Qhi.Qhi(new File(str)));
    }

    private com.bytedance.sdk.component.fl.ac Tgh(com.bytedance.sdk.component.fl.cJ cJVar) {
        com.bytedance.sdk.component.fl.ac ROR = this.cJ.ROR();
        return ROR != null ? ROR : new com.bytedance.sdk.component.fl.ac.Qhi.Qhi.cJ(cJVar.fl(), cJVar.Qhi(), Tgh());
    }

    public com.bytedance.sdk.component.fl.fl CJ() {
        if (this.Tgh == null) {
            this.Tgh = hm();
        }
        return this.Tgh;
    }

    private com.bytedance.sdk.component.fl.fl hm() {
        com.bytedance.sdk.component.fl.fl CJ = this.cJ.CJ();
        return CJ == null ? com.bytedance.sdk.component.fl.cJ.cJ.Qhi() : CJ;
    }

    public ABk fl() {
        if (this.ROR == null) {
            this.ROR = WAv();
        }
        return this.ROR;
    }

    private ABk WAv() {
        ABk Qhi = this.cJ.Qhi();
        return Qhi != null ? Qhi : com.bytedance.sdk.component.fl.Qhi.cJ.Qhi();
    }

    public ExecutorService Tgh() {
        ExecutorService Qhi;
        EBS ac = this.cJ.ac();
        if (ac == null || (Qhi = ac.Qhi()) == null) {
            if (this.Sf == null) {
                this.Sf = Gm();
            }
            return this.Sf;
        }
        return Qhi;
    }

    private ExecutorService Gm() {
        ExecutorService cJ = this.cJ.cJ();
        return cJ != null ? cJ : com.bytedance.sdk.component.fl.Qhi.ac.Qhi();
    }

    public Map<String, List<ac>> ROR() {
        return this.Qhi;
    }

    public com.bytedance.sdk.component.fl.ac.cJ.Qhi Qhi(ac acVar) {
        ImageView.ScaleType CJ = acVar.CJ();
        if (CJ == null) {
            CJ = com.bytedance.sdk.component.fl.ac.cJ.Qhi.Qhi;
        }
        ImageView.ScaleType scaleType = CJ;
        Bitmap.Config Gm = acVar.Gm();
        if (Gm == null) {
            Gm = com.bytedance.sdk.component.fl.ac.cJ.Qhi.cJ;
        }
        return new com.bytedance.sdk.component.fl.ac.cJ.Qhi(acVar.cJ(), acVar.ac(), scaleType, Gm, acVar.ROR(), acVar.Sf());
    }

    public kYc Sf() {
        if (this.hm == null) {
            this.hm = zc();
        }
        return this.hm;
    }

    private kYc zc() {
        kYc Sf = this.cJ.Sf();
        return Sf == null ? new Sf() : Sf;
    }
}
