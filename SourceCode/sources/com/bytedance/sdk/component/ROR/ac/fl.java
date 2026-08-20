package com.bytedance.sdk.component.ROR.ac;

import java.util.Map;
/* compiled from: TNCConfig.java */
/* loaded from: classes2.dex */
public class fl {
    public boolean Qhi = false;
    public boolean cJ = true;
    public Map<String, Integer> ac = null;
    public Map<String, String> CJ = null;
    public int fl = 10;
    public int Tgh = 1;
    public int ROR = 1;
    public int Sf = 10;
    public int hm = 1;
    public int WAv = 1;
    public int Gm = 900;
    public int zc = 120;
    public String ABk = null;
    public int iMK = 0;
    public long pA = 0;

    public String toString() {
        StringBuilder sb = new StringBuilder(" localEnable: ");
        sb.append(this.Qhi);
        sb.append(" probeEnable: ").append(this.cJ);
        StringBuilder append = sb.append(" hostFilter: ");
        Map<String, Integer> map = this.ac;
        append.append(map != null ? map.size() : 0);
        StringBuilder append2 = sb.append(" hostMap: ");
        Map<String, String> map2 = this.CJ;
        append2.append(map2 != null ? map2.size() : 0);
        sb.append(" reqTo: ").append(this.fl).append("#").append(this.Tgh).append("#").append(this.ROR);
        sb.append(" reqErr: ").append(this.Sf).append("#").append(this.hm).append("#").append(this.WAv);
        sb.append(" updateInterval: ").append(this.Gm);
        sb.append(" updateRandom: ").append(this.zc);
        sb.append(" httpBlack: ").append(this.ABk);
        return sb.toString();
    }
}
