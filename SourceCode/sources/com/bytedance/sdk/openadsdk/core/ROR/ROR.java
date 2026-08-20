package com.bytedance.sdk.openadsdk.core.ROR;

import android.os.Handler;
import android.util.Pair;
import android.view.View;
import android.webkit.WebView;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
/* compiled from: ViewabilitySessionManager.java */
/* loaded from: classes2.dex */
public class ROR {
    final Set<Pair<View, FriendlyObstructionPurpose>> Qhi = new HashSet();
    private Sf cJ;

    private ROR() {
        Tgh.Qhi(HzH.Qhi());
    }

    private Handler fl() {
        return com.bytedance.sdk.component.utils.Sf.cJ();
    }

    public static ROR Qhi() {
        return new ROR();
    }

    public void Qhi(final WebView webView) {
        if (webView == null || this.cJ != null) {
            return;
        }
        if (com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.cJ()) {
            cJ(webView);
        } else {
            fl().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ROR.ROR.1
                @Override // java.lang.Runnable
                public void run() {
                    ROR.this.cJ(webView);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ(WebView webView) {
        try {
            if (this.cJ == null) {
                this.cJ = hm.Qhi(webView);
            }
        } catch (Throwable th) {
            ABk.cJ("createWebViewSession failed : ".concat(String.valueOf(th)));
            HashMap hashMap = new HashMap();
            hashMap.put("scene", "createWebViewSession");
            hashMap.put("message", th.getMessage());
            Tgh.Qhi(hashMap);
        }
    }

    public void Qhi(final View view, final Set<Gm> set) {
        if (this.cJ != null || view == null || set == null) {
            return;
        }
        if (com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.cJ()) {
            cJ(view, set);
        } else {
            fl().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ROR.ROR.4
                @Override // java.lang.Runnable
                public void run() {
                    ROR.this.cJ(view, set);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ(View view, Set<Gm> set) {
        try {
            if (this.cJ == null) {
                this.cJ = hm.Qhi(view, set);
            }
        } catch (Throwable th) {
            ABk.cJ("createVideoSession failed : ".concat(String.valueOf(th)));
            HashMap hashMap = new HashMap();
            hashMap.put("scene", "createVideoSession");
            hashMap.put("message", th.getMessage());
            Tgh.Qhi(hashMap);
        }
    }

    public void cJ() {
        if (com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.cJ()) {
            Tgh();
        } else {
            fl().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ROR.ROR.5
                @Override // java.lang.Runnable
                public void run() {
                    ROR.this.Tgh();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Tgh() {
        if (this.cJ != null) {
            try {
                Qhi((View) null, (FriendlyObstructionPurpose) null);
                this.cJ.cJ();
            } catch (Throwable unused) {
            }
        }
    }

    public void Qhi(final boolean z, final float f2) {
        if (com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.cJ()) {
            cJ(z, f2);
        } else {
            fl().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ROR.ROR.6
                @Override // java.lang.Runnable
                public void run() {
                    ROR.this.cJ(z, f2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ(boolean z, float f2) {
        if (this.cJ != null) {
            try {
                Qhi((View) null, (FriendlyObstructionPurpose) null);
                this.cJ.Qhi(z, f2);
            } catch (Throwable unused) {
            }
        }
    }

    public void ac() {
        if (com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.cJ()) {
            ROR();
        } else {
            fl().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ROR.ROR.7
                @Override // java.lang.Runnable
                public void run() {
                    ROR.this.ROR();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ROR() {
        Sf sf = this.cJ;
        if (sf != null) {
            try {
                sf.CJ();
            } catch (Throwable unused) {
            }
        }
    }

    public void CJ() {
        if (com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.cJ()) {
            Sf();
        } else {
            fl().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ROR.ROR.8
                @Override // java.lang.Runnable
                public void run() {
                    ROR.this.Sf();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sf() {
        Sf sf = this.cJ;
        if (sf != null) {
            try {
                sf.ac();
            } catch (Throwable unused) {
            }
        }
    }

    public void Qhi(final View view, final FriendlyObstructionPurpose friendlyObstructionPurpose) {
        if (com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.cJ()) {
            cJ(view, friendlyObstructionPurpose);
        } else {
            fl().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ROR.ROR.9
                @Override // java.lang.Runnable
                public void run() {
                    ROR.this.cJ(view, friendlyObstructionPurpose);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ(View view, FriendlyObstructionPurpose friendlyObstructionPurpose) {
        Sf sf = this.cJ;
        try {
            if (sf == null) {
                if (view == null || friendlyObstructionPurpose == null) {
                    return;
                }
                this.Qhi.add(new Pair<>(view, friendlyObstructionPurpose));
                return;
            }
            if (view != null && friendlyObstructionPurpose != null) {
                sf.Qhi(view, friendlyObstructionPurpose);
            }
            if (this.Qhi.size() > 0) {
                sf.Qhi(this.Qhi);
                this.Qhi.clear();
            }
        } catch (Throwable unused) {
        }
    }

    public void Qhi(final long j, final boolean z) {
        if (com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.cJ()) {
            cJ(j, z);
        } else {
            fl().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ROR.ROR.10
                @Override // java.lang.Runnable
                public void run() {
                    ROR.this.cJ(j, z);
                }
            });
        }
    }

    public void cJ(long j, boolean z) {
        Sf sf = this.cJ;
        if (sf != null) {
            try {
                sf.Qhi(((float) j) / 1000.0f, z);
            } catch (Throwable unused) {
            }
        }
    }

    public void Qhi(final boolean z) {
        if (com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.cJ()) {
            cJ(z);
        } else {
            fl().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ROR.ROR.2
                @Override // java.lang.Runnable
                public void run() {
                    ROR.this.cJ(z);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ(boolean z) {
        Sf sf = this.cJ;
        if (sf != null) {
            try {
                sf.Qhi(z);
            } catch (Throwable unused) {
            }
        }
    }

    public void Qhi(final int i) {
        if (com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.cJ()) {
            cJ(i);
        } else {
            fl().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ROR.ROR.3
                @Override // java.lang.Runnable
                public void run() {
                    ROR.this.cJ(i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ(int i) {
        Sf sf = this.cJ;
        if (sf != null) {
            try {
                sf.cJ(i);
            } catch (Throwable unused) {
            }
        }
    }
}
