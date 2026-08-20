package com.bytedance.sdk.openadsdk.cJ.CJ.cJ;

import com.bytedance.sdk.openadsdk.core.model.tP;
/* compiled from: VideoLogHelperModel.java */
/* loaded from: classes2.dex */
public class hpZ {
    private com.bykv.vk.openvk.component.video.api.ac.ac CJ;
    private long Qhi;
    private int ac;
    private String cJ;
    private tP fl;

    public hpZ(long j, String str, int i, com.bykv.vk.openvk.component.video.api.ac.ac acVar, tP tPVar) {
        this.Qhi = j;
        this.cJ = str;
        this.ac = i;
        this.CJ = acVar;
        this.fl = tPVar;
    }

    public long Qhi() {
        return this.Qhi;
    }

    public String cJ() {
        return this.cJ;
    }

    public int ac() {
        return this.ac;
    }

    public com.bykv.vk.openvk.component.video.api.ac.ac CJ() {
        return this.CJ;
    }

    public tP fl() {
        return this.fl;
    }

    /* compiled from: VideoLogHelperModel.java */
    /* loaded from: classes2.dex */
    public static class Qhi {
        private com.bykv.vk.openvk.component.video.api.ac.Qhi Gm;
        private int ROR;
        private int Sf;
        private int Tgh;
        private int fl;
        private int hm;
        private long Qhi = 0;
        private long cJ = 0;
        private long ac = 0;
        private boolean CJ = false;
        private boolean WAv = false;

        public long Qhi() {
            return this.Qhi;
        }

        public void Qhi(long j) {
            this.Qhi = j;
            ABk();
        }

        private void ABk() {
            long j = this.ac;
            if (j > 0) {
                long j2 = this.Qhi;
                if (j2 > j) {
                    this.Qhi = j2 % j;
                }
            }
        }

        public long cJ() {
            return this.cJ;
        }

        public void cJ(long j) {
            this.cJ = j;
        }

        public long ac() {
            return this.ac;
        }

        public void ac(long j) {
            this.ac = j;
            ABk();
        }

        public int CJ() {
            return this.fl;
        }

        public void Qhi(int i) {
            this.fl = i;
        }

        public int fl() {
            return this.Tgh;
        }

        public void cJ(int i) {
            this.Tgh = i;
        }

        public int Tgh() {
            long j = this.ac;
            if (j <= 0) {
                return 0;
            }
            return Math.min((int) ((this.Qhi * 100) / j), 100);
        }

        public int ROR() {
            return this.ROR;
        }

        public void ac(int i) {
            this.ROR = i;
        }

        public int Sf() {
            return this.Sf;
        }

        public int hm() {
            return this.hm;
        }

        public void CJ(int i) {
            this.hm = i;
        }

        public boolean WAv() {
            return this.WAv;
        }

        public boolean Gm() {
            return this.CJ;
        }

        public void Qhi(boolean z) {
            this.CJ = z;
        }

        public void Qhi(com.bykv.vk.openvk.component.video.api.ac.Qhi qhi) {
            this.Gm = qhi;
        }

        public com.bykv.vk.openvk.component.video.api.ac.Qhi zc() {
            return this.Gm;
        }
    }
}
