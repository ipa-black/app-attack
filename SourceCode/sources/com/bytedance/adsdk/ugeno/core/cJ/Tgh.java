package com.bytedance.adsdk.ugeno.core.cJ;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.appnext.base.b.d;
import com.bytedance.adsdk.ugeno.cJ.WAv;
import com.bytedance.adsdk.ugeno.core.iMK;
import com.bytedance.adsdk.ugeno.core.zc;
import org.json.JSONObject;
/* compiled from: UGTimerEventProcessor.java */
/* loaded from: classes2.dex */
public class Tgh implements WAv.Qhi {
    private Context CJ;
    private boolean Qhi;
    private Handler ROR = new WAv(Looper.getMainLooper(), this);
    private com.bytedance.adsdk.ugeno.component.cJ Tgh;
    private iMK ac;
    private int cJ;
    private zc fl;

    public Tgh(Context context, zc zcVar, com.bytedance.adsdk.ugeno.component.cJ cJVar) {
        this.CJ = context;
        this.fl = zcVar;
        this.Tgh = cJVar;
    }

    public void Qhi(iMK imk) {
        this.ac = imk;
    }

    public void Qhi() {
        zc zcVar = this.fl;
        if (zcVar == null) {
            return;
        }
        JSONObject ac = zcVar.ac();
        try {
            this.cJ = Integer.parseInt(com.bytedance.adsdk.ugeno.Qhi.ac.Qhi(ac.optString(d.fn, "8000"), this.Tgh.WAv()));
            this.Qhi = ac.optBoolean("repeat");
            this.ROR.sendEmptyMessageDelayed(1001, this.cJ);
        } catch (NumberFormatException unused) {
        }
    }

    @Override // com.bytedance.adsdk.ugeno.cJ.WAv.Qhi
    public void Qhi(Message message) {
        if (message.what != 1001) {
            return;
        }
        iMK imk = this.ac;
        if (imk != null) {
            zc zcVar = this.fl;
            com.bytedance.adsdk.ugeno.component.cJ cJVar = this.Tgh;
            imk.Qhi(zcVar, cJVar, cJVar);
        }
        if (this.Qhi) {
            this.ROR.sendEmptyMessageDelayed(1001, this.cJ);
        } else {
            this.ROR.removeMessages(1001);
        }
    }
}
