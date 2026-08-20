package com.bytedance.sdk.openadsdk.core.cJ;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import com.appodeal.ads.modules.common.internal.Constants;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.openadsdk.api.PangleAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.cJ.ac;
import com.bytedance.sdk.openadsdk.core.hm;
import com.bytedance.sdk.openadsdk.core.lB;
import com.bytedance.sdk.openadsdk.core.model.Gm;
import com.bytedance.sdk.openadsdk.core.model.bxS;
import com.bytedance.sdk.openadsdk.core.model.pA;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.iMK;
import com.bytedance.sdk.openadsdk.utils.js;
import com.bytedance.sdk.openadsdk.utils.zn;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: ClickListener.java */
/* loaded from: classes2.dex */
public class cJ extends ac {
    private static int js = Integer.MIN_VALUE;
    protected PAGNativeAd ABk;
    protected Context CJ;
    protected Gm Gm;
    protected Map<String, Object> HzH;
    protected int MQ;
    private String Qhi;
    protected final String ROR;
    protected final int Sf;
    protected final tP Tgh;
    protected WeakReference<View> WAv;
    private boolean ac;
    private WeakReference<Activity> cJ;
    public pA fl;
    protected WeakReference<View> hm;
    protected com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.fl hpZ;
    protected com.bykv.vk.openvk.component.video.api.CJ.fl iMK;
    protected PangleAd kYc;
    protected boolean pA;
    protected com.bytedance.sdk.openadsdk.core.nativeexpress.Qhi tP;
    protected Qhi zc;

    /* compiled from: ClickListener.java */
    /* loaded from: classes2.dex */
    public interface Qhi {
        void Qhi(View view, int i);
    }

    public boolean Qhi(Gm gm, Map<String, Object> map) {
        return false;
    }

    public void Qhi(com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.fl flVar) {
        this.hpZ = flVar;
    }

    public void Qhi(com.bytedance.sdk.openadsdk.core.nativeexpress.Qhi qhi) {
        this.tP = qhi;
    }

    public void Qhi(PAGNativeAd pAGNativeAd) {
        this.ABk = pAGNativeAd;
    }

    public void Qhi(PangleAd pangleAd) {
        this.kYc = pangleAd;
    }

    public void CJ(boolean z) {
        this.pA = z;
    }

    public void Qhi(com.bykv.vk.openvk.component.video.api.CJ.fl flVar) {
        this.iMK = flVar;
    }

    public cJ(Context context, tP tPVar, String str, int i) {
        this.pA = false;
        this.MQ = 0;
        this.ac = false;
        this.CJ = context;
        this.Tgh = tPVar;
        this.ROR = str;
        this.Sf = i;
    }

    public cJ(Context context, tP tPVar, String str, int i, boolean z) {
        this(context, tPVar, str, i);
        this.ac = z;
    }

    public void Qhi(Qhi qhi) {
        this.zc = qhi;
    }

    public void Qhi(Activity activity) {
        if (activity == null) {
            return;
        }
        this.cJ = new WeakReference<>(activity);
    }

    public void Qhi(View view) {
        if (view == null) {
            return;
        }
        this.hm = new WeakReference<>(view);
    }

    public void cJ(View view) {
        if (view == null) {
            return;
        }
        this.WAv = new WeakReference<>(view);
    }

    public View CJ() {
        WeakReference<Activity> weakReference = this.cJ;
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        return this.cJ.get().findViewById(16908290);
    }

    public View fl() {
        WeakReference<Activity> weakReference = this.cJ;
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        View findViewById = this.cJ.get().findViewById(520093713);
        return findViewById == null ? this.cJ.get().findViewById(520093713) : findViewById;
    }

    public void Qhi(Map<String, Object> map) {
        Map<String, Object> map2 = this.HzH;
        if (map2 != null) {
            map2.putAll(map);
            map.putAll(this.HzH);
        }
        this.HzH = map;
    }

    public void Qhi(int i) {
        this.NFd = i;
    }

    public void cJ(int i) {
        this.aP = i;
    }

    public void ac(int i) {
        this.Eh = i;
    }

    public void CJ(int i) {
        this.MQ = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v5, types: [android.content.Context] */
    @Override // com.bytedance.sdk.openadsdk.core.cJ.ac
    public void Qhi(View view, float f2, float f3, float f4, float f5, SparseArray<ac.Qhi> sparseArray, boolean z) {
        int i;
        boolean z2;
        JSONObject jSONObject;
        JSONObject jSONObject2;
        tP tPVar;
        if (this.CJ == null) {
            this.CJ = HzH.Qhi();
        }
        if ((this.ac || !Qhi(view, 1, f2, f3, f4, f5, sparseArray, z)) && this.CJ != null) {
            pA pAVar = this.fl;
            if (pAVar != null) {
                i = pAVar.zc;
                jSONObject = this.fl.ABk;
                jSONObject2 = this.fl.HzH;
                z2 = this.fl.kYc;
            } else {
                i = -1;
                z2 = false;
                jSONObject = null;
                jSONObject2 = null;
            }
            long j = this.CQU;
            long j2 = this.pM;
            WeakReference<View> weakReference = this.hm;
            View view2 = weakReference == null ? null : weakReference.get();
            WeakReference<View> weakReference2 = this.WAv;
            Gm Qhi2 = Qhi(f2, f3, f4, f5, sparseArray, j, j2, view2, weakReference2 == null ? null : weakReference2.get(), Tgh(), zn.fl(this.CJ), zn.ROR(this.CJ), zn.Tgh(this.CJ), i, jSONObject, jSONObject2);
            this.Gm = Qhi2;
            if (Qhi(Qhi2, this.HzH)) {
                return;
            }
            if (this.iMK != null) {
                if (this.HzH == null) {
                    this.HzH = new HashMap();
                }
                this.HzH.put("duration", Long.valueOf(this.iMK.fl()));
            }
            if (this.ac || z2) {
                com.bytedance.sdk.openadsdk.cJ.ac.Qhi(Constants.CLICK, this.Tgh, this.Gm, this.ROR, true, this.HzH, z ? 1 : 2);
                return;
            }
            Qhi qhi = this.zc;
            if (qhi != null) {
                qhi.Qhi(view, -1);
            }
            if (Qhi(view, z)) {
                boolean cJ = bxS.cJ(this.Tgh);
                String Qhi3 = cJ ? this.ROR : js.Qhi(this.Sf);
                if (view != null) {
                    try {
                        Boolean bool = (Boolean) view.getTag(520093762);
                        Boolean bool2 = bool;
                        if (bool.booleanValue()) {
                            lB.Qhi(true);
                        }
                    } catch (Exception unused) {
                    }
                }
                Activity Qhi4 = view != null ? com.bytedance.sdk.component.utils.cJ.Qhi(view) : null;
                boolean Qhi5 = lB.Qhi(Qhi4 == null ? this.CJ : Qhi4, this.Tgh, this.Sf, this.ABk, this.kYc, Qhi3, this.hpZ, cJ, 0);
                lB.Qhi(false);
                if (Qhi5 || (tPVar = this.Tgh) == null || tPVar.ReL() == null || this.Tgh.ReL().ac() != 2) {
                    tP tPVar2 = this.Tgh;
                    if (tPVar2 != null && !Qhi5 && TextUtils.isEmpty(tPVar2.YB()) && com.bytedance.sdk.openadsdk.cJ.cJ.Qhi(this.ROR)) {
                        com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.Tgh.Qhi(this.CJ, this.Tgh, this.ROR).CJ();
                    }
                    com.bytedance.sdk.openadsdk.cJ.ac.Qhi(Constants.CLICK, this.Tgh, this.Gm, this.ROR, Qhi5, this.HzH, z ? 1 : 2);
                }
            }
        }
    }

    public boolean Qhi(View view, boolean z) {
        return Qhi(view, this.Tgh, z);
    }

    public static boolean Qhi(View view, tP tPVar, boolean z) {
        if (view != null && tPVar != null) {
            try {
                String valueOf = String.valueOf(view.getTag(com.bytedance.sdk.component.adexpress.dynamic.Qhi.MQ));
                if (view.getTag(com.bytedance.sdk.component.adexpress.dynamic.Qhi.MQ) != null && !TextUtils.isEmpty(valueOf)) {
                    if (Constants.CLICK.equals(valueOf)) {
                        return z;
                    }
                    return true;
                }
            } catch (Exception unused) {
            }
            if (ac(view)) {
                return tPVar.tP() != 1 || z;
            } else if (tPVar.kYc() == 1 && !z) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Gm Qhi(float f2, float f3, float f4, float f5, SparseArray<ac.Qhi> sparseArray, long j, long j2, View view, View view2, String str, float f6, int i, float f7, int i2, JSONObject jSONObject, JSONObject jSONObject2) {
        return new Gm.Qhi().Tgh(f2).fl(f3).CJ(f4).ac(f5).cJ(j).Qhi(j2).cJ(zn.Qhi(view)).Qhi(zn.Qhi(view2)).ac(zn.ac(view)).CJ(zn.ac(view2)).CJ(this.Eh).fl(this.aP).Tgh(this.NFd).Qhi(sparseArray).cJ(hm.cJ().Qhi() ? 1 : 2).Qhi(str).Qhi(f6).ac(i).cJ(f7).Qhi(i2).Qhi(jSONObject).cJ(jSONObject2).Qhi();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean Qhi(View view, int i, float f2, float f3, float f4, float f5, SparseArray<ac.Qhi> sparseArray, boolean z) {
        if (this.tP != null) {
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            WeakReference<View> weakReference = this.WAv;
            if (weakReference != null) {
                iArr = zn.Qhi(weakReference.get());
                iArr2 = zn.ac(this.WAv.get());
            }
            this.tP.Qhi(view, i, new pA.Qhi().CJ(f2).ac(f3).cJ(f4).Qhi(f5).cJ(this.CQU).Qhi(this.pM).ac(iArr[0]).CJ(iArr[1]).fl(iArr2[0]).Tgh(iArr2[1]).Qhi(sparseArray).Qhi(z).Qhi());
            return true;
        }
        return false;
    }

    public static boolean ac(View view) {
        return 520093705 == view.getId() || 520093707 == view.getId() || 520093703 == view.getId() || Qhi(view.getContext()) == view.getId() || iMK.HUk == view.getId() || iMK.Ewb == view.getId();
    }

    private static int Qhi(Context context) {
        if (js == Integer.MIN_VALUE) {
            js = MQ.fl(context, "btn_native_creative");
        }
        return js;
    }

    public String Tgh() {
        return this.Qhi;
    }

    public void Qhi(String str) {
        this.Qhi = str;
    }
}
