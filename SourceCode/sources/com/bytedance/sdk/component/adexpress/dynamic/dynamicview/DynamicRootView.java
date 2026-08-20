package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.cJ.iMK;
import com.bytedance.sdk.component.adexpress.cJ.pA;
import com.bytedance.sdk.component.adexpress.cJ.zc;
import com.bytedance.sdk.component.adexpress.dynamic.ac.ROR;
import com.bytedance.sdk.component.adexpress.dynamic.ac.hm;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class DynamicRootView extends FrameLayout implements com.bytedance.sdk.component.adexpress.dynamic.fl, com.bytedance.sdk.component.adexpress.theme.Qhi {
    private int ABk;
    private zc CJ;
    private List<com.bytedance.sdk.component.adexpress.dynamic.ac> Gm;
    private String HzH;
    protected final pA Qhi;
    private ThemeStatusBroadcastReceiver ROR;
    private com.bytedance.sdk.component.adexpress.dynamic.cJ Sf;
    private com.bytedance.sdk.component.adexpress.dynamic.fl.Qhi Tgh;
    private int WAv;
    public View ac;
    boolean cJ;
    private DynamicBaseWidget fl;
    private ViewGroup hm;
    private Context hpZ;
    private int iMK;
    private Map<Integer, String> kYc;
    private iMK pA;
    private com.bytedance.sdk.component.adexpress.dynamic.Tgh zc;

    public DynamicRootView(Context context, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, boolean z, iMK imk, com.bytedance.sdk.component.adexpress.dynamic.fl.Qhi qhi) {
        super(context);
        this.hm = null;
        this.WAv = 0;
        this.Gm = new ArrayList();
        this.ABk = 0;
        this.iMK = 0;
        this.hpZ = context;
        pA pAVar = new pA();
        this.Qhi = pAVar;
        pAVar.Qhi(2);
        this.Tgh = qhi;
        qhi.Qhi(this);
        this.ROR = themeStatusBroadcastReceiver;
        themeStatusBroadcastReceiver.Qhi(this);
        this.cJ = z;
        this.pA = imk;
    }

    public String getBgColor() {
        return this.HzH;
    }

    public void setBgColor(String str) {
        this.HzH = str;
    }

    public void setRenderListener(zc zcVar) {
        this.CJ = zcVar;
        this.Tgh.Qhi(zcVar);
    }

    public void Qhi(hm hmVar, int i) {
        this.fl = Qhi(hmVar, this, i);
        this.Qhi.Qhi(true);
        this.Qhi.Qhi(this.fl.fl);
        this.Qhi.cJ(this.fl.Tgh);
        this.Qhi.Qhi(this.ac);
        this.CJ.Qhi(this.Qhi);
    }

    public DynamicBaseWidget Qhi(hm hmVar, ViewGroup viewGroup, int i) {
        if (hmVar == null) {
            return null;
        }
        List<hm> Gm = hmVar.Gm();
        DynamicBaseWidget Qhi = com.bytedance.sdk.component.adexpress.dynamic.Qhi.cJ.Qhi(this.hpZ, this, hmVar);
        if (Qhi instanceof DynamicUnKnowView) {
            Qhi(i == 3 ? 128 : 118, "unknow widget");
            return null;
        }
        Qhi(hmVar);
        Qhi.ac();
        if (viewGroup != null) {
            viewGroup.addView(Qhi);
            Qhi(viewGroup, hmVar);
        }
        if (Gm == null || Gm.size() <= 0) {
            return null;
        }
        for (hm hmVar2 : Gm) {
            Qhi(hmVar2, Qhi, i);
        }
        return Qhi;
    }

    private void Qhi(hm hmVar) {
        ROR fl;
        com.bytedance.sdk.component.adexpress.dynamic.ac.Tgh WAv = hmVar.WAv();
        if (WAv == null || (fl = WAv.fl()) == null) {
            return;
        }
        this.Qhi.cJ(fl.LcF());
    }

    public Map<Integer, String> getBgMaterialCenterCalcColor() {
        return this.kYc;
    }

    public void setBgMaterialCenterCalcColor(Map<Integer, String> map) {
        this.kYc = map;
    }

    private void Qhi(ViewGroup viewGroup, hm hmVar) {
        ViewGroup viewGroup2;
        if (viewGroup == null || (viewGroup2 = (ViewGroup) viewGroup.getParent()) == null || !hmVar.Dww()) {
            return;
        }
        viewGroup2.setClipChildren(false);
        viewGroup2.setClipToPadding(false);
        ViewGroup viewGroup3 = (ViewGroup) viewGroup2.getParent();
        if (viewGroup3 != null) {
            viewGroup3.setClipChildren(false);
            viewGroup3.setClipToPadding(false);
        }
    }

    public void Qhi(double d2, double d3, double d4, double d5, float f2) {
        this.Qhi.ac(d2);
        this.Qhi.CJ(d3);
        this.Qhi.fl(d4);
        this.Qhi.Tgh(d5);
        this.Qhi.Qhi(f2);
        this.Qhi.cJ(f2);
        this.Qhi.ac(f2);
        this.Qhi.CJ(f2);
    }

    public void Qhi(int i, String str) {
        this.Qhi.Qhi(false);
        this.Qhi.cJ(i);
        this.Qhi.Qhi(str);
        this.CJ.Qhi(this.Qhi);
    }

    public void setMuteListener(com.bytedance.sdk.component.adexpress.dynamic.cJ cJVar) {
        this.Sf = cJVar;
    }

    public void setDislikeView(View view) {
        this.Tgh.cJ(view);
    }

    public zc getRenderListener() {
        return this.CJ;
    }

    public com.bytedance.sdk.component.adexpress.dynamic.fl.Qhi getDynamicClickListener() {
        return this.Tgh;
    }

    @Override // com.bytedance.sdk.component.adexpress.theme.Qhi
    public void Qhi(int i) {
        DynamicBaseWidget dynamicBaseWidget = this.fl;
        if (dynamicBaseWidget == null) {
            return;
        }
        dynamicBaseWidget.Qhi(i);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.fl
    public void Qhi(CharSequence charSequence, int i, int i2, boolean z) {
        for (int i3 = 0; i3 < this.Gm.size(); i3++) {
            if (this.Gm.get(i3) != null) {
                this.Gm.get(i3).Qhi(charSequence, i == 1, i2, z);
            }
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.fl
    public void setSoundMute(boolean z) {
        com.bytedance.sdk.component.adexpress.dynamic.cJ cJVar = this.Sf;
        if (cJVar != null) {
            cJVar.setSoundMute(z);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.fl
    public void setTimeUpdate(int i) {
        this.zc.setTimeUpdate(i);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.fl
    public void d_() {
        try {
            this.zc.Qhi();
        } catch (Exception unused) {
        }
    }

    public ViewGroup getTimeOut() {
        return this.hm;
    }

    public void setTimeOut(ViewGroup viewGroup) {
        this.hm = viewGroup;
    }

    public int getTimedown() {
        return this.WAv;
    }

    public void setTimedown(int i) {
        this.WAv = i;
    }

    public List<com.bytedance.sdk.component.adexpress.dynamic.ac> getTimeOutListener() {
        return this.Gm;
    }

    public void setTimeOutListener(com.bytedance.sdk.component.adexpress.dynamic.ac acVar) {
        this.Gm.add(acVar);
    }

    public void setVideoListener(com.bytedance.sdk.component.adexpress.dynamic.Tgh tgh) {
        this.zc = tgh;
    }

    public int getScoreCountWithIcon() {
        return this.iMK;
    }

    public void setScoreCountWithIcon(int i) {
        this.iMK = i;
    }

    public int getLogoUnionHeight() {
        return this.ABk;
    }

    public void setLogoUnionHeight(int i) {
        this.ABk = i;
    }

    public iMK getRenderRequest() {
        return this.pA;
    }
}
