package com.bytedance.sdk.openadsdk.ROR;

import com.bytedance.sdk.component.fl.WAv;
import com.bytedance.sdk.component.fl.qMt;
import com.google.firebase.analytics.FirebaseAnalytics;
/* compiled from: StepTrackImpl.java */
/* loaded from: classes2.dex */
public class Tgh implements qMt {
    private static int Qhi;
    private boolean CJ;
    private long ac;
    private long cJ = 0;
    private final String fl;

    public Tgh() {
        Qhi++;
        this.fl = "image_request_" + Qhi;
    }

    @Override // com.bytedance.sdk.component.fl.qMt
    public void Qhi(String str, WAv wAv) {
        if (!this.CJ) {
            wAv.Qhi();
            wAv.cJ();
            wAv.ac();
            this.CJ = true;
        }
        this.cJ = System.currentTimeMillis();
        ac(str, wAv);
    }

    @Override // com.bytedance.sdk.component.fl.qMt
    public void cJ(String str, WAv wAv) {
        this.ac += System.currentTimeMillis() - this.cJ;
        ac(str, wAv);
    }

    private String ac(String str, WAv wAv) {
        com.bytedance.sdk.component.fl.ac.Qhi kYc;
        if (str != null) {
            str.hashCode();
            char c2 = 65535;
            switch (str.hashCode()) {
                case -1867169789:
                    if (str.equals(FirebaseAnalytics.Param.SUCCESS)) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -1584526165:
                    if (str.equals("raw_cache")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case -1442758754:
                    if (str.equals("image_type")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case -1428113824:
                    if (str.equals("disk_cache")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case -1335717394:
                    if (str.equals("decode")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case -1281977283:
                    if (str.equals("failed")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case -1076854124:
                    if (str.equals("check_duplicate")) {
                        c2 = 6;
                        break;
                    }
                    break;
                case 1017400004:
                    if (str.equals("memory_cache")) {
                        c2 = 7;
                        break;
                    }
                    break;
                case 1478448621:
                    if (str.equals("net_request")) {
                        c2 = '\b';
                        break;
                    }
                    break;
                case 1718821013:
                    if (str.equals("generate_key")) {
                        c2 = '\t';
                        break;
                    }
                    break;
                case 2067979407:
                    if (str.equals("cache_policy")) {
                        c2 = '\n';
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    return FirebaseAnalytics.Param.SUCCESS;
                case 1:
                    return "raw cache";
                case 2:
                    return "image type：";
                case 3:
                    return "disk cache";
                case 4:
                    return "decode";
                case 5:
                    if ((wAv instanceof com.bytedance.sdk.component.fl.ac.ac) && (kYc = ((com.bytedance.sdk.component.fl.ac.ac) wAv).kYc()) != null) {
                        Throwable ac = kYc.ac();
                        return "fail：code:" + kYc.Qhi() + ", msg:" + kYc.cJ() + ", exception:" + (ac != null ? ac.getMessage() : "null \r\n");
                    }
                    return "fail";
                case 6:
                    return "duplicate request";
                case 7:
                    return "memory cache";
                case '\b':
                    return "net request";
                case '\t':
                    return "generate key:" + wAv.fl();
                case '\n':
                    return "cache policy";
            }
        }
        return str;
    }
}
