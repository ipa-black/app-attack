package com.bytedance.sdk.openadsdk.WAv;

import android.content.Context;
import android.media.AudioManager;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
/* compiled from: VolumeChangeObserver.java */
/* loaded from: classes2.dex */
public class hm {
    private final AudioManager Qhi;
    private int cJ = -1;
    private boolean ac = false;

    public hm(Context context) {
        this.Qhi = (AudioManager) context.getApplicationContext().getSystemService("audio");
    }

    public int Qhi() {
        return this.cJ;
    }

    public void Qhi(int i) {
        this.cJ = i;
    }

    public boolean cJ() {
        if (this.ac) {
            this.ac = false;
            return true;
        }
        return false;
    }

    public void Qhi(boolean z) {
        Qhi(z, false);
    }

    public void Qhi(boolean z, boolean z2) {
        if (this.Qhi == null) {
            return;
        }
        int i = 0;
        if (z) {
            int ROR = DeviceUtils.ROR();
            if (ROR != 0) {
                this.cJ = ROR;
            } else if (!z2) {
                return;
            }
            Qhi(3, 0, 0);
            this.ac = true;
            return;
        }
        int i2 = this.cJ;
        if (i2 == 0) {
            i2 = DeviceUtils.hm() / 15;
        } else {
            if (i2 == -1) {
                if (!z2) {
                    return;
                }
                i2 = DeviceUtils.hm() / 15;
            }
            this.cJ = -1;
            Qhi(3, i2, i);
            this.ac = true;
        }
        i = 1;
        this.cJ = -1;
        Qhi(3, i2, i);
        this.ac = true;
    }

    private void Qhi(int i, int i2, int i3) {
        try {
            this.Qhi.setStreamVolume(i, i2, i3);
        } catch (Throwable unused) {
        }
    }
}
