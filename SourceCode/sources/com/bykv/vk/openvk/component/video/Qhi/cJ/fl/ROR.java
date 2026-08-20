package com.bykv.vk.openvk.component.video.Qhi.cJ.fl;

import com.bykv.vk.openvk.component.video.Qhi.cJ.WAv;
import com.bytedance.sdk.component.cJ.Qhi.hpZ;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
/* compiled from: VolleyResponseWrapper.java */
/* loaded from: classes2.dex */
public class ROR extends Qhi {
    private hpZ ac;

    public ROR(hpZ hpz, Tgh tgh) {
        com.bytedance.sdk.component.cJ.Qhi.ROR ROR;
        this.ac = hpz;
        this.Qhi = new ArrayList();
        if (hpz != null && (ROR = hpz.ROR()) != null) {
            for (int i = 0; i < ROR.Qhi(); i++) {
                this.Qhi.add(new WAv.cJ(ROR.Qhi(i), ROR.cJ(i)));
            }
        }
        this.cJ = tgh;
    }

    @Override // com.bykv.vk.openvk.component.video.Qhi.cJ.fl.Qhi
    public int Qhi() {
        return this.ac.ac();
    }

    @Override // com.bykv.vk.openvk.component.video.Qhi.cJ.fl.Qhi
    public boolean cJ() {
        return this.ac.ac() >= 200 && this.ac.ac() < 300;
    }

    @Override // com.bykv.vk.openvk.component.video.Qhi.cJ.fl.Qhi
    public String Qhi(String str, String str2) {
        return Qhi(str) != null ? Qhi(str).cJ : str2;
    }

    @Override // com.bykv.vk.openvk.component.video.Qhi.cJ.fl.Qhi
    public List<WAv.cJ> ac() {
        return this.Qhi;
    }

    @Override // com.bykv.vk.openvk.component.video.Qhi.cJ.fl.Qhi
    public InputStream CJ() {
        return this.ac.Tgh().ac();
    }

    @Override // com.bykv.vk.openvk.component.video.Qhi.cJ.fl.Qhi
    public String fl() {
        hpZ hpz = this.ac;
        if (hpz != null && hpz.Sf() != null) {
            return this.ac.Sf().toString();
        }
        return "http/1.1";
    }

    @Override // com.bykv.vk.openvk.component.video.Qhi.cJ.fl.Qhi
    public String Tgh() {
        return Qhi(this.ac.ac());
    }
}
