package com.bykv.vk.openvk.component.video.Qhi.CJ;

import com.bykv.vk.openvk.component.video.Qhi.CJ.hpZ;
/* compiled from: AbstractMediaPlayer.java */
/* loaded from: classes2.dex */
public abstract class iMK implements hpZ {
    private hpZ.Qhi CJ;
    protected boolean Qhi = false;
    private hpZ.ac ROR;
    private hpZ.fl Sf;
    private hpZ.Sf Tgh;
    private hpZ.cJ ac;
    private hpZ.Tgh cJ;
    private hpZ.ROR fl;

    @Override // com.bykv.vk.openvk.component.video.Qhi.CJ.hpZ
    public final void Qhi(hpZ.Tgh tgh) {
        this.cJ = tgh;
    }

    @Override // com.bykv.vk.openvk.component.video.Qhi.CJ.hpZ
    public final void Qhi(hpZ.cJ cJVar) {
        this.ac = cJVar;
    }

    @Override // com.bykv.vk.openvk.component.video.Qhi.CJ.hpZ
    public final void Qhi(hpZ.Qhi qhi) {
        this.CJ = qhi;
    }

    @Override // com.bykv.vk.openvk.component.video.Qhi.CJ.hpZ
    public final void Qhi(hpZ.ROR ror) {
        this.fl = ror;
    }

    @Override // com.bykv.vk.openvk.component.video.Qhi.CJ.hpZ
    public final void Qhi(hpZ.ac acVar) {
        this.ROR = acVar;
    }

    @Override // com.bykv.vk.openvk.component.video.Qhi.CJ.hpZ
    public final void Qhi(hpZ.fl flVar) {
        this.Sf = flVar;
    }

    @Override // com.bykv.vk.openvk.component.video.Qhi.CJ.hpZ
    public final void Qhi(hpZ.Sf sf) {
        this.Tgh = sf;
    }

    public void Qhi() {
        this.cJ = null;
        this.CJ = null;
        this.ac = null;
        this.fl = null;
        this.Tgh = null;
        this.ROR = null;
        this.Sf = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void cJ() {
        try {
            hpZ.Tgh tgh = this.cJ;
            if (tgh != null) {
                tgh.cJ(this);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void ac() {
        try {
            hpZ.cJ cJVar = this.ac;
            if (cJVar != null) {
                cJVar.Qhi(this);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void Qhi(int i) {
        try {
            hpZ.Qhi qhi = this.CJ;
            if (qhi != null) {
                qhi.Qhi(this, i);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void CJ() {
        try {
            hpZ.ROR ror = this.fl;
            if (ror != null) {
                ror.ac(this);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void Qhi(int i, int i2, int i3, int i4) {
        try {
            hpZ.Sf sf = this.Tgh;
            if (sf != null) {
                sf.Qhi(this, i, i2, i3, i4);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean Qhi(int i, int i2) {
        try {
            hpZ.ac acVar = this.ROR;
            if (acVar != null) {
                if (acVar.Qhi(this, i, i2)) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean cJ(int i, int i2) {
        try {
            hpZ.fl flVar = this.Sf;
            if (flVar != null) {
                if (flVar.cJ(this, i, i2)) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    @Override // com.bykv.vk.openvk.component.video.Qhi.CJ.hpZ
    public void Qhi(boolean z) {
        this.Qhi = z;
    }
}
