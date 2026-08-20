package com.bytedance.sdk.openadsdk.MQ.Qhi;

import android.view.View;
import androidx.core.view.InputDeviceCompat;
import com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh;
import com.bytedance.sdk.openadsdk.core.model.tP;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: PAGBaseMrcTracker.java */
/* loaded from: classes2.dex */
public abstract class cJ {
    private final AtomicLong CJ;
    protected WeakReference<View> Qhi;
    private final int ROR;
    private final Integer Sf;
    private final Tgh.Qhi Tgh;
    protected final AtomicBoolean ac;
    protected tP cJ;
    private final AtomicBoolean fl;
    private volatile boolean hm = false;

    public abstract int Tgh();

    protected abstract boolean ac();

    protected abstract void cJ(int i);

    public static cJ Qhi(boolean z, Integer num, View view, tP tPVar, Tgh.Qhi qhi) {
        return z ? new hm(num, view, tPVar, qhi) : new ac(num, view, tPVar, qhi);
    }

    public cJ(Integer num, View view, tP tPVar, int i, Tgh.Qhi qhi) {
        this.Sf = num;
        this.ROR = i;
        this.cJ = tPVar;
        this.Tgh = qhi;
        Qhi(view);
        this.ac = new AtomicBoolean(false);
        this.CJ = new AtomicLong(-1L);
        this.fl = new AtomicBoolean(false);
    }

    public void Qhi() {
        if (this.ac.compareAndSet(false, true)) {
            Sf.Qhi(this);
        }
    }

    public int cJ() {
        if (hm()) {
            return 1;
        }
        WeakReference<View> weakReference = this.Qhi;
        View view = weakReference != null ? weakReference.get() : null;
        if (view == null || this.hm) {
            return 3;
        }
        if (Gm().equals(view.getTag(InputDeviceCompat.SOURCE_HDMI))) {
            return (Gm().equals(view.getTag(InputDeviceCompat.SOURCE_HDMI)) && ac()) ? 1 : 2;
        }
        WAv();
        Tgh.cJ(Gm());
        return 3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void CJ() {
        if (this.fl.compareAndSet(false, true)) {
            fl.Qhi(this.cJ, fl(), this.Tgh);
        }
    }

    protected Qhi fl() {
        WeakReference<View> weakReference = this.Qhi;
        if (weakReference == null) {
            return new Qhi(-1, -1, -1.0f);
        }
        View view = weakReference.get();
        if (view == null) {
            return new Qhi(0, 0, 0.0f);
        }
        return new Qhi(view.getWidth(), view.getHeight(), view.getAlpha());
    }

    public void ROR() {
        if (hm()) {
            return;
        }
        if (!this.ac.get()) {
            Sf();
        } else if (!this.CJ.compareAndSet(-1L, System.currentTimeMillis()) && System.currentTimeMillis() - this.CJ.get() >= this.ROR) {
            CJ();
        }
    }

    public void Sf() {
        this.CJ.set(-1L);
    }

    public boolean hm() {
        return this.fl.get();
    }

    public void WAv() {
        this.hm = true;
        Sf.cJ(this);
    }

    public void Qhi(int i) {
        if (i == 4) {
            Qhi();
        } else if (i == 8) {
            ABk();
        } else if (i == 9) {
            CJ();
        } else {
            cJ(i);
        }
    }

    public Integer Gm() {
        return this.Sf;
    }

    public boolean zc() {
        return this.ac.get();
    }

    public void ABk() {
        this.ac.set(false);
        Sf();
    }

    public void Qhi(View view) {
        if (view != null) {
            view.setTag(InputDeviceCompat.SOURCE_HDMI, Gm());
        }
        this.Qhi = new WeakReference<>(view);
    }
}
