package com.bytedance.sdk.openadsdk.core.cJ;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.component.utils.hpZ;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.utils.iMK;
import com.bytedance.sdk.openadsdk.utils.js;
import java.lang.ref.WeakReference;
/* compiled from: ClickCreativeListener.java */
/* loaded from: classes2.dex */
public class Qhi extends cJ {
    private boolean Qhi;
    private boolean ac;
    private boolean cJ;
    private WeakReference<InterfaceC0224Qhi> js;
    private int zn;

    /* compiled from: ClickCreativeListener.java */
    /* renamed from: com.bytedance.sdk.openadsdk.core.cJ.Qhi$Qhi  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0224Qhi {
        long getVideoProgress();
    }

    public boolean ac() {
        return false;
    }

    public boolean cJ() {
        return false;
    }

    public Qhi(Context context, tP tPVar, String str, int i) {
        super(context, tPVar, str, i);
        this.Qhi = true;
        this.cJ = false;
        this.ac = false;
    }

    public void Qhi(boolean z) {
        this.Qhi = z;
    }

    public void cJ(boolean z) {
        this.cJ = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:184:0x03b9, code lost:
        if ((r4 instanceof com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView) == false) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x03cb, code lost:
        if (r2.booleanValue() != false) goto L180;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0419  */
    /* JADX WARN: Removed duplicated region for block: B:207:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x013e  */
    /* JADX WARN: Type inference failed for: r2v34, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r2v9, types: [android.content.Context] */
    @Override // com.bytedance.sdk.openadsdk.core.cJ.cJ, com.bytedance.sdk.openadsdk.core.cJ.ac
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void Qhi(android.view.View r31, float r32, float r33, float r34, float r35, android.util.SparseArray<com.bytedance.sdk.openadsdk.core.cJ.ac.Qhi> r36, boolean r37) {
        /*
            Method dump skipped, instructions count: 1055
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.cJ.Qhi.Qhi(android.view.View, float, float, float, float, android.util.SparseArray, boolean):void");
    }

    protected boolean Qhi() {
        if (this.Tgh == null) {
            return true;
        }
        int cJ = HzH.CJ().cJ(this.Tgh.Hy());
        int ac = hpZ.ac(HzH.Qhi());
        if (cJ != 1) {
            if (cJ == 2) {
                return js.fl(ac) || js.CJ(ac) || js.Tgh(ac);
            } else if (cJ != 3) {
                return cJ != 5 || js.CJ(ac) || js.Tgh(ac);
            } else {
                return false;
            }
        }
        return js.CJ(ac);
    }

    private boolean Sf() {
        return tP.fl(this.Tgh) && this.Tgh.Dww() == 1;
    }

    private boolean CJ(View view) {
        if (view == null) {
            return false;
        }
        if ((view instanceof NativeVideoTsView) || view.getId() == iMK.Px || view.getId() == iMK.PAe || view.getId() == iMK.ip || view.getId() == iMK.xyz || view.getId() == iMK.jPH || view.getId() == 520093726 || view.getId() == iMK.Ug) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        int i = 0;
        while (true) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (i >= viewGroup.getChildCount()) {
                return false;
            }
            if (CJ(viewGroup.getChildAt(i))) {
                return true;
            }
            i++;
        }
    }

    private boolean hm() {
        return this instanceof com.bytedance.sdk.openadsdk.core.nativeexpress.ROR;
    }

    private boolean WAv() {
        if (this.Tgh == null || hm()) {
            return false;
        }
        if (this.Tgh.gga() == 5 || this.Tgh.gga() == 15) {
            if (this.zn == 0) {
                this.zn = this.Tgh.sqa();
            }
            cJ();
            Qhi();
            ac();
            if (this.zn == 5 && Sf() && Qhi() && !cJ() && !ac()) {
                return false;
            }
            int i = this.zn;
            return i == 1 || i == 2 || i == 5;
        }
        return false;
    }

    private String cJ(String str) {
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1695837674:
                if (str.equals("banner_ad")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1263194568:
                if (str.equals("open_ad")) {
                    c2 = 1;
                    break;
                }
                break;
            case -712491894:
                if (str.equals("embeded_ad")) {
                    c2 = 2;
                    break;
                }
                break;
            case 1844104722:
                if (str.equals("interaction")) {
                    c2 = 3;
                    break;
                }
                break;
            case 2091589896:
                if (str.equals("slide_banner_ad")) {
                    c2 = 4;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return "banner_call";
            case 1:
                return "open_ad";
            case 2:
                return "feed_call";
            case 3:
                return "interaction_call";
            case 4:
                return "banner_call";
            default:
                return "";
        }
    }

    public void ac(boolean z) {
        this.ac = z;
    }

    public void Qhi(InterfaceC0224Qhi interfaceC0224Qhi) {
        this.js = new WeakReference<>(interfaceC0224Qhi);
    }
}
