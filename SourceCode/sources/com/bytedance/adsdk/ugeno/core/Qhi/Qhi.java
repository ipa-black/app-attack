package com.bytedance.adsdk.ugeno.core.Qhi;

import androidx.exifinterface.media.ExifInterface;
import com.bytedance.adsdk.ugeno.core.iMK;
import com.bytedance.adsdk.ugeno.core.zc;
import com.bytedance.sdk.component.uchain.action.EventChainAction;
import com.bytedance.sdk.component.uchain.listener.ICustomRouter;
import com.bytedance.sdk.component.uchain.listener.IEventChainLifeCycleListener;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import org.json.JSONObject;
/* compiled from: UGenEventListenerAdapter.java */
/* loaded from: classes2.dex */
public class Qhi implements iMK {
    private JSONObject CJ;
    private iMK Qhi;
    private String cJ;
    private volatile C0181Qhi fl;
    private boolean ac = true;
    private boolean Tgh = false;

    public Qhi(iMK imk) {
        this.Qhi = imk;
    }

    public void Qhi(JSONObject jSONObject) {
        this.CJ = jSONObject;
    }

    public void Qhi(String str) {
        this.cJ = str;
    }

    public void Qhi(boolean z) {
        this.ac = z;
    }

    public boolean Qhi() {
        String str;
        return this.ac && (str = this.cJ) != null && ExifInterface.GPS_MEASUREMENT_3D.compareTo(str) <= 0 && this.CJ != null;
    }

    public void cJ(boolean z) {
        this.Tgh = z;
    }

    @Override // com.bytedance.adsdk.ugeno.core.iMK
    public void Qhi(zc zcVar, iMK.cJ cJVar, iMK.Qhi qhi) {
        if (Qhi()) {
            ac(zcVar, cJVar, qhi);
        } else {
            cJ(zcVar, cJVar, qhi);
        }
    }

    private void cJ(zc zcVar, iMK.cJ cJVar, iMK.Qhi qhi) {
        iMK imk = this.Qhi;
        if (imk == null) {
            return;
        }
        imk.Qhi(zcVar, cJVar, qhi);
    }

    private void ac(zc zcVar, iMK.cJ cJVar, iMK.Qhi qhi) {
        if (this.fl == null) {
            this.fl = cJ();
        }
        this.fl.Qhi(zcVar);
        this.fl.Qhi(cJVar);
        this.fl.Qhi(qhi);
        JSONObject ac = zcVar.ac();
        if (ac == null) {
            return;
        }
        new EventChainAction.Builder(ac.optString(SessionDescription.ATTR_TYPE)).setChainData(this.CJ).setEventChainLifeCycleListener(new IEventChainLifeCycleListener() { // from class: com.bytedance.adsdk.ugeno.core.Qhi.Qhi.1
        }).build().run();
    }

    private C0181Qhi cJ() {
        if (this.fl != null) {
            return this.fl;
        }
        synchronized (C0181Qhi.class) {
            if (this.fl != null) {
                return this.fl;
            }
            this.fl = new C0181Qhi();
            return this.fl;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UGenEventListenerAdapter.java */
    /* renamed from: com.bytedance.adsdk.ugeno.core.Qhi.Qhi$Qhi  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0181Qhi implements ICustomRouter {
        private iMK.cJ CJ;
        iMK.Qhi Qhi;
        private zc ac;

        C0181Qhi() {
        }

        public void Qhi(zc zcVar) {
            this.ac = zcVar;
        }

        public void Qhi(iMK.cJ cJVar) {
            this.CJ = cJVar;
        }

        public void Qhi(iMK.Qhi qhi) {
            this.Qhi = qhi;
        }
    }
}
