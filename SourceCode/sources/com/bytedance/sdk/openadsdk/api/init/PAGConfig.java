package com.bytedance.sdk.openadsdk.api.init;

import android.text.TextUtils;
import com.bykv.vk.openvk.component.video.api.ac;
import com.bytedance.sdk.component.ROR.CJ.Sf;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.InitConfig;
import com.bytedance.sdk.openadsdk.core.Eh;
import com.bytedance.sdk.openadsdk.utils.js;
import com.bytedance.sdk.openadsdk.utils.qMt;
/* loaded from: classes2.dex */
public final class PAGConfig implements InitConfig {
    private static String Gm;
    private String Qhi;
    private boolean Sf;
    private String WAv;
    private int ac;
    private boolean cJ;
    private String hm;
    private int CJ = -1;
    private int fl = -1;
    private int Tgh = -1;
    private int ROR = 0;

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public boolean isUseTextureView() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public String getData() {
        return this.WAv;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(String str) {
        this.WAv = str;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public String getAppId() {
        return this.Qhi;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ(String str) {
        this.Qhi = str;
    }

    public boolean getDebugLog() {
        return this.cJ;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(boolean z) {
        this.cJ = z;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public int getAppIconId() {
        return this.ac;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(int i) {
        this.ac = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ(int i) {
        if (i < -1 || i > 1) {
            i = -1;
        }
        this.CJ = i;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public int getCoppa() {
        return this.CJ;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ac(int i) {
        if (i < -1 || i > 1) {
            i = -1;
        }
        this.fl = i;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public int getGdpr() {
        return this.fl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void CJ(int i) {
        if (i < -1 || i > 1) {
            i = -1;
        }
        this.Tgh = i;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public int getCcpa() {
        return this.Tgh;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public int getTitleBarTheme() {
        return this.ROR;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Deprecated
    public void fl(int i) {
        this.ROR = i;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public boolean isSupportMultiProcess() {
        return this.Sf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ(boolean z) {
        this.Sf = z;
        ac.Qhi(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ac(String str) {
        this.hm = str;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public String getPackageName() {
        if (TextUtils.isEmpty(this.hm)) {
            return Gm;
        }
        return this.hm;
    }

    public static void setChildDirected(int i) {
        if (js.hm("setCoppa")) {
            if (i < -1 || i > 1) {
                i = -1;
            }
            Eh.Qhi().cJ(i);
        }
    }

    public static int getChildDirected() {
        if (js.hm("getCoppa")) {
            return Eh.Qhi().cJ();
        }
        return -1;
    }

    public static void setGDPRConsent(int i) {
        js.hm("setGdpr");
        if (i < -1 || i > 1) {
            i = -1;
        }
        Eh.Qhi().ac(i);
    }

    public static int getGDPRConsent() {
        if (js.hm("getGdpr")) {
            int ac = Eh.Qhi().ac();
            if (ac == 1) {
                return 0;
            }
            if (ac == 0) {
                return 1;
            }
            return ac;
        }
        return -1;
    }

    public static void setDoNotSell(int i) {
        if (js.hm("setCCPA")) {
            if (i < -1 || i > 1) {
                i = -1;
            }
            Eh.Qhi().CJ(i);
        }
    }

    public static int getDoNotSell() {
        if (js.hm("getCCPA")) {
            return Eh.Qhi().Tgh();
        }
        return -1;
    }

    public static void debugLog(boolean z) {
        if (Eh.Qhi() != null) {
            if (z) {
                Eh.Qhi().fl(1);
                Eh.Qhi().Qhi();
                return;
            }
            Eh.Qhi().fl(0);
            Sf.Qhi(Sf.Qhi.OFF);
            ABk.ac();
            com.bykv.vk.openvk.component.video.api.Tgh.ac.cJ();
            qMt.cJ();
        }
    }

    public static void setAppIconId(int i) {
        if (Eh.Qhi() != null) {
            Eh.Qhi().Tgh(i);
        }
    }

    public static void setUserData(String str) {
        if (Eh.Qhi() != null) {
            Eh.Qhi().cJ(str);
        }
    }

    public static void setPackageName(String str) {
        Gm = str;
    }

    /* loaded from: classes2.dex */
    public static class Builder {
        private String Gm;
        private String Qhi;
        private String WAv;
        private int ac;
        private boolean cJ;
        private String[] hm;
        private int CJ = -1;
        private int fl = -1;
        private int Tgh = -1;
        private int ROR = 0;
        private boolean Sf = false;

        public Builder useTextureView(boolean z) {
            return this;
        }

        public Builder setUserData(String str) {
            this.Gm = str;
            return this;
        }

        public Builder appId(String str) {
            this.Qhi = str;
            return this;
        }

        public Builder debugLog(boolean z) {
            this.cJ = z;
            return this;
        }

        public Builder appIcon(int i) {
            this.ac = i;
            return this;
        }

        public Builder setChildDirected(int i) {
            this.CJ = i;
            return this;
        }

        public Builder setGDPRConsent(int i) {
            this.fl = i;
            return this;
        }

        public Builder setDoNotSell(int i) {
            this.Tgh = i;
            return this;
        }

        public Builder titleBarTheme(int i) {
            this.ROR = i;
            return this;
        }

        public Builder supportMultiProcess(boolean z) {
            this.Sf = z;
            return this;
        }

        public Builder needClearTaskReset(String... strArr) {
            this.hm = strArr;
            return this;
        }

        public Builder setPackageName(String str) {
            this.WAv = str;
            return this;
        }

        public PAGConfig build() {
            PAGConfig pAGConfig = new PAGConfig();
            pAGConfig.cJ(this.Qhi);
            pAGConfig.cJ(this.CJ);
            pAGConfig.Qhi(this.ac);
            pAGConfig.fl(this.ROR);
            pAGConfig.cJ(this.Sf);
            pAGConfig.ac(this.fl);
            pAGConfig.CJ(this.Tgh);
            pAGConfig.Qhi(this.cJ);
            pAGConfig.ac(this.WAv);
            pAGConfig.Qhi(this.Gm);
            return pAGConfig;
        }
    }
}
