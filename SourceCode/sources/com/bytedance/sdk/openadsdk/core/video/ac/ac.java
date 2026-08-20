package com.bytedance.sdk.openadsdk.core.video.ac;

import com.bykv.vk.openvk.component.video.Qhi.CJ.HzH;
import com.bykv.vk.openvk.component.video.api.Qhi;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: SupportReplayMediaPlayer.java */
/* loaded from: classes2.dex */
public class ac extends HzH {
    private final Qhi CJ;
    private final List<cJ> Qhi = Collections.synchronizedList(new ArrayList());
    private int cJ = 1;
    private int ac = 1;

    /* compiled from: SupportReplayMediaPlayer.java */
    /* loaded from: classes2.dex */
    public interface cJ extends Qhi.InterfaceC0166Qhi {
        void Qhi(int i, int i2);
    }

    static /* synthetic */ int Qhi(ac acVar) {
        int i = acVar.ac;
        acVar.ac = i + 1;
        return i;
    }

    public ac() {
        Qhi qhi = new Qhi();
        this.CJ = qhi;
        super.Qhi(qhi);
        Qhi(500);
    }

    @Override // com.bykv.vk.openvk.component.video.Qhi.CJ.HzH
    public long hpZ() {
        return super.hpZ() * this.cJ;
    }

    @Override // com.bykv.vk.openvk.component.video.Qhi.CJ.HzH
    public long HzH() {
        return super.HzH() + ((this.ac - 1) * super.hpZ());
    }

    public void ac(int i) {
        this.cJ = Math.max(1, i);
    }

    @Override // com.bykv.vk.openvk.component.video.Qhi.CJ.HzH
    public void Qhi(Qhi.InterfaceC0166Qhi interfaceC0166Qhi) {
        if (interfaceC0166Qhi instanceof cJ) {
            if (this.Qhi.contains(interfaceC0166Qhi)) {
                return;
            }
            this.Qhi.add((cJ) interfaceC0166Qhi);
            return;
        }
        super.Qhi(interfaceC0166Qhi);
    }

    public int MQ() {
        return this.ac;
    }

    /* compiled from: SupportReplayMediaPlayer.java */
    /* loaded from: classes2.dex */
    private class Qhi implements Qhi.InterfaceC0166Qhi {
        private Qhi() {
        }

        @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
        public void Qhi(com.bykv.vk.openvk.component.video.api.Qhi qhi) {
            ac.Qhi(ac.this);
            if (ac.this.ac <= ac.this.cJ) {
                for (cJ cJVar : ac.this.Qhi) {
                    cJVar.Qhi(ac.this.ac, ac.this.cJ);
                }
                ac.this.hm();
                return;
            }
            for (cJ cJVar2 : ac.this.Qhi) {
                cJVar2.Qhi(qhi);
            }
        }

        @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
        public void Qhi(com.bykv.vk.openvk.component.video.api.Qhi qhi, long j) {
            for (cJ cJVar : ac.this.Qhi) {
                cJVar.Qhi(qhi, j);
            }
        }

        @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
        public void cJ(com.bykv.vk.openvk.component.video.api.Qhi qhi) {
            for (cJ cJVar : ac.this.Qhi) {
                cJVar.cJ(qhi);
            }
        }

        @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
        public void Qhi(com.bykv.vk.openvk.component.video.api.Qhi qhi, com.bykv.vk.openvk.component.video.api.ac.Qhi qhi2) {
            for (cJ cJVar : ac.this.Qhi) {
                cJVar.Qhi(qhi, qhi2);
            }
        }

        @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
        public void Qhi(com.bykv.vk.openvk.component.video.api.Qhi qhi, boolean z) {
            for (cJ cJVar : ac.this.Qhi) {
                cJVar.Qhi(qhi, z);
            }
        }

        @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
        public void ac(com.bykv.vk.openvk.component.video.api.Qhi qhi) {
            for (cJ cJVar : ac.this.Qhi) {
                cJVar.ac(qhi);
            }
        }

        @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
        public void Qhi(com.bykv.vk.openvk.component.video.api.Qhi qhi, int i, int i2) {
            for (cJ cJVar : ac.this.Qhi) {
                cJVar.Qhi(qhi, i, i2);
            }
        }

        @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
        public void Qhi(com.bykv.vk.openvk.component.video.api.Qhi qhi, int i, int i2, int i3) {
            for (cJ cJVar : ac.this.Qhi) {
                cJVar.Qhi(qhi, i, i2, i3);
            }
        }

        @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
        public void Qhi(com.bykv.vk.openvk.component.video.api.Qhi qhi, int i) {
            for (cJ cJVar : ac.this.Qhi) {
                cJVar.Qhi(qhi, i);
            }
        }

        @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
        public void cJ(com.bykv.vk.openvk.component.video.api.Qhi qhi, int i) {
            for (cJ cJVar : ac.this.Qhi) {
                cJVar.cJ(qhi, i);
            }
        }

        @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
        public void Qhi(com.bykv.vk.openvk.component.video.api.Qhi qhi, long j, long j2) {
            for (cJ cJVar : ac.this.Qhi) {
                cJVar.Qhi(qhi, j, j2);
            }
        }

        @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
        public void CJ(com.bykv.vk.openvk.component.video.api.Qhi qhi) {
            for (cJ cJVar : ac.this.Qhi) {
                cJVar.CJ(qhi);
            }
        }

        @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
        public void fl(com.bykv.vk.openvk.component.video.api.Qhi qhi) {
            for (cJ cJVar : ac.this.Qhi) {
                cJVar.fl(qhi);
            }
        }
    }
}
