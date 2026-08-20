package com.bytedance.sdk.openadsdk.core.video.nativevideo;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Message;
import android.text.TextUtils;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bykv.vk.openvk.component.video.api.renderview.SSRenderSurfaceView;
import com.bykv.vk.openvk.component.video.api.renderview.SSRenderTextureView;
import com.bytedance.sdk.component.fl.zc;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.component.utils.CQU;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.cJ.Qhi;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.core.widget.CornerIV;
import com.bytedance.sdk.openadsdk.core.widget.Tgh;
import com.bytedance.sdk.openadsdk.core.widget.fl;
import com.bytedance.sdk.openadsdk.utils.hm;
import com.bytedance.sdk.openadsdk.utils.iMK;
import com.bytedance.sdk.openadsdk.utils.js;
import com.bytedance.sdk.openadsdk.utils.zn;
import java.lang.ref.WeakReference;
import org.json.JSONObject;
/* compiled from: NativeVideoLayout.java */
/* loaded from: classes2.dex */
public class Tgh implements com.bykv.vk.openvk.component.video.api.CJ.ac<tP>, com.bykv.vk.openvk.component.video.api.renderview.Qhi, CQU.Qhi, Qhi.InterfaceC0224Qhi, Tgh.cJ, fl.Qhi {
    CornerIV ABk;
    com.bykv.vk.openvk.component.video.api.renderview.cJ CJ;
    tP CQU;
    int Dww;
    boolean EBS;
    com.bytedance.sdk.openadsdk.core.widget.Tgh Eh;
    ImageView Gm;
    int HzH;
    com.bytedance.sdk.openadsdk.core.cJ.Qhi Jma;
    int MQ;
    boolean NFd;
    protected final int Qhi;
    View ROR;
    ImageView Sf;
    View Tgh;
    View WAv;
    Qhi aP;
    ViewGroup ac;
    int bxS;
    protected final int cJ;
    private long es;
    ImageView fl;
    View hm;
    TextView hpZ;
    TextView iMK;
    boolean js;
    int kYc;
    com.bykv.vk.openvk.component.video.api.CJ.fl lB;
    com.bytedance.sdk.openadsdk.core.cJ.Qhi lG;
    TextView pA;
    Context pM;
    boolean qMt;
    com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.fl sDy;
    int tP;
    private final String yN;
    View zc;
    private NativeVideoTsView.Qhi zn;

    public void Qhi(int i) {
    }

    public void Qhi(long j) {
    }

    public void Qhi(long j, long j2) {
    }

    @Override // com.bytedance.sdk.component.utils.CQU.Qhi
    public void Qhi(Message message) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.fl.Qhi
    public void Qhi(View view, boolean z) {
    }

    public void Qhi(ViewGroup viewGroup) {
    }

    public void Qhi(String str) {
    }

    public void Tgh() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.Tgh.cJ
    public boolean WAv() {
        return false;
    }

    public void ac(boolean z) {
    }

    public void cJ(ViewGroup viewGroup) {
    }

    public void cJ(boolean z) {
    }

    public boolean cJ(int i) {
        return false;
    }

    public void fl() {
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.ac
    public /* bridge */ /* synthetic */ void Qhi(tP tPVar, WeakReference weakReference, boolean z) {
        Qhi2(tPVar, (WeakReference<Context>) weakReference, z);
    }

    public Tgh(Context context, ViewGroup viewGroup, boolean z, int i, tP tPVar, com.bykv.vk.openvk.component.video.api.CJ.fl flVar, boolean z2) {
        this.Qhi = 228;
        this.cJ = 160;
        this.qMt = true;
        this.NFd = true;
        this.js = true;
        this.yN = Build.MODEL;
        if (this instanceof fl) {
            return;
        }
        this.pM = HzH.Qhi().getApplicationContext();
        CJ(z2);
        this.ac = viewGroup;
        this.qMt = z;
        this.Dww = i;
        this.lB = flVar;
        this.CQU = tPVar;
        CJ(8);
        Qhi(context, this.ac);
        CJ();
        zc();
    }

    public Tgh(Context context, ViewGroup viewGroup, boolean z, int i, tP tPVar, com.bykv.vk.openvk.component.video.api.CJ.fl flVar) {
        this(context, viewGroup, z, i, tPVar, flVar, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void zc() {
        /*
            r9 = this;
            boolean r0 = r9.NFd
            if (r0 == 0) goto L7
            java.lang.String r0 = "embeded_ad"
            goto L9
        L7:
            java.lang.String r0 = "embeded_ad_landingpage"
        L9:
            com.bytedance.sdk.openadsdk.core.model.tP r1 = r9.CQU
            boolean r1 = r1.LpL()
            r2 = 1
            if (r1 == 0) goto L18
            java.lang.String r0 = "rewarded_video"
            r1 = 7
        L15:
            r7 = r0
            r8 = r1
            goto L32
        L18:
            com.bytedance.sdk.openadsdk.core.model.tP r1 = r9.CQU
            boolean r1 = r1.iWr()
            if (r1 == 0) goto L24
            java.lang.String r0 = "fullscreen_interstitial_ad"
            r1 = 5
            goto L15
        L24:
            com.bytedance.sdk.openadsdk.core.model.tP r1 = r9.CQU
            boolean r1 = r1.ejU()
            if (r1 == 0) goto L30
            java.lang.String r0 = "banner_ad"
            r1 = 2
            goto L15
        L30:
            r7 = r0
            r8 = r2
        L32:
            com.bytedance.sdk.openadsdk.core.model.tP r0 = r9.CQU
            int r0 = r0.ip()
            r1 = 4
            if (r0 != r1) goto L45
            android.content.Context r0 = r9.pM
            com.bytedance.sdk.openadsdk.core.model.tP r1 = r9.CQU
            com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.fl r0 = com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.Tgh.Qhi(r0, r1, r7)
            r9.sDy = r0
        L45:
            com.bytedance.sdk.openadsdk.core.cJ.Qhi r0 = new com.bytedance.sdk.openadsdk.core.cJ.Qhi
            android.content.Context r1 = r9.pM
            com.bytedance.sdk.openadsdk.core.model.tP r3 = r9.CQU
            r0.<init>(r1, r3, r7, r8)
            r9.lG = r0
            r0.Qhi(r9)
            com.bytedance.sdk.openadsdk.core.cJ.Qhi r0 = r9.lG
            r0.cJ(r2)
            boolean r0 = r9.NFd
            if (r0 == 0) goto L62
            com.bytedance.sdk.openadsdk.core.cJ.Qhi r0 = r9.lG
            r0.Qhi(r2)
            goto L6d
        L62:
            com.bytedance.sdk.openadsdk.core.cJ.Qhi r0 = r9.lG
            r1 = 0
            r0.Qhi(r1)
            com.bytedance.sdk.openadsdk.core.cJ.Qhi r0 = r9.lG
            r0.ac(r2)
        L6d:
            com.bytedance.sdk.openadsdk.core.cJ.Qhi r0 = r9.lG
            com.bykv.vk.openvk.component.video.api.CJ.fl r1 = r9.lB
            r0.Qhi(r1)
            com.bytedance.sdk.openadsdk.core.cJ.Qhi r0 = r9.lG
            r0.CJ(r2)
            com.bytedance.sdk.openadsdk.core.cJ.Qhi r0 = r9.lG
            com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh$1 r1 = new com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh$1
            r1.<init>()
            r0.Qhi(r1)
            com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.fl r0 = r9.sDy
            if (r0 == 0) goto L8e
            com.bytedance.sdk.openadsdk.core.cJ.Qhi r1 = r9.lG
            if (r1 == 0) goto L8e
            r1.Qhi(r0)
        L8e:
            boolean r0 = r9.CQU()
            if (r0 == 0) goto Lcf
            com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh$2 r0 = new com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh$2
            android.content.Context r5 = r9.pM
            com.bytedance.sdk.openadsdk.core.model.tP r6 = r9.CQU
            r3 = r0
            r4 = r9
            r3.<init>(r5, r6, r7, r8)
            r9.Jma = r0
            com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh$3 r1 = new com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh$3
            r1.<init>()
            r0.Qhi(r1)
            com.bytedance.sdk.openadsdk.core.cJ.Qhi r0 = r9.Jma
            r0.cJ(r2)
            com.bytedance.sdk.openadsdk.core.cJ.Qhi r0 = r9.Jma
            boolean r1 = r9.NFd
            r0.Qhi(r1)
            com.bytedance.sdk.openadsdk.core.cJ.Qhi r0 = r9.Jma
            com.bykv.vk.openvk.component.video.api.CJ.fl r1 = r9.lB
            r0.Qhi(r1)
            com.bytedance.sdk.openadsdk.core.cJ.Qhi r0 = r9.Jma
            r0.CJ(r2)
            com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.fl r0 = r9.sDy
            if (r0 == 0) goto Lca
            com.bytedance.sdk.openadsdk.core.cJ.Qhi r1 = r9.Jma
            r1.Qhi(r0)
        Lca:
            com.bytedance.sdk.openadsdk.core.cJ.Qhi r0 = r9.Jma
            r0.Qhi(r9)
        Lcf:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh.zc():void");
    }

    private boolean CQU() {
        return tP.fl(this.CQU) && this.CQU.es() == null && this.CQU.Dww() == 1;
    }

    public void Qhi(NativeVideoTsView.Qhi qhi) {
        this.zn = qhi;
    }

    public void Qhi(PAGNativeAd pAGNativeAd) {
        com.bytedance.sdk.openadsdk.core.cJ.Qhi qhi = this.lG;
        if (qhi != null) {
            qhi.Qhi(pAGNativeAd);
        }
        com.bytedance.sdk.openadsdk.core.cJ.Qhi qhi2 = this.Jma;
        if (qhi2 != null) {
            qhi2.Qhi(pAGNativeAd);
        }
    }

    public com.bykv.vk.openvk.component.video.api.renderview.cJ ABk() {
        return this.CJ;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(Context context, View view) {
        View sSRenderSurfaceView;
        System.currentTimeMillis();
        tP tPVar = this.CQU;
        if ((tPVar == null || ((!tPVar.cfS() && !this.CQU.ejU()) || com.bytedance.sdk.openadsdk.core.settings.HzH.YD().Px())) && view != null) {
            view.setKeepScreenOn(true);
        }
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.lB;
        if (flVar != null && flVar.HzH()) {
            sSRenderSurfaceView = new SSRenderTextureView(this.pM);
        } else {
            sSRenderSurfaceView = new SSRenderSurfaceView(this.pM);
        }
        if (view instanceof RelativeLayout) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            ((RelativeLayout) view).addView(sSRenderSurfaceView, 0, layoutParams);
        }
        zn.Qhi(sSRenderSurfaceView, 8);
        this.CJ = (com.bykv.vk.openvk.component.video.api.renderview.cJ) sSRenderSurfaceView;
        this.fl = (ImageView) view.findViewById(iMK.Ug);
        this.Tgh = view.findViewById(iMK.SNp);
        this.ROR = view.findViewById(iMK.eG);
        this.Sf = (ImageView) view.findViewById(iMK.YD);
        this.hm = view.findViewById(iMK.VV);
        System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(View view, Context context) {
        View view2;
        if (view == null || context == null || (view2 = this.hm) == null || view2.getParent() == null || this.WAv != null) {
            return;
        }
        this.WAv = this.hm;
        this.Gm = (ImageView) view.findViewById(iMK.HWc);
        this.zc = view.findViewById(iMK.Px);
        this.ABk = (CornerIV) view.findViewById(iMK.PAe);
        this.iMK = (TextView) view.findViewById(iMK.ip);
        this.pA = (TextView) view.findViewById(iMK.xyz);
        this.hpZ = (TextView) view.findViewById(iMK.jPH);
    }

    void iMK() {
        if (this.aP == null || this.Eh != null) {
            return;
        }
        System.currentTimeMillis();
        com.bytedance.sdk.openadsdk.core.widget.Tgh tgh = new com.bytedance.sdk.openadsdk.core.widget.Tgh();
        this.Eh = tgh;
        tgh.Qhi(this.pM, this.ac);
        this.Eh.Qhi(this.aP, this);
        System.currentTimeMillis();
    }

    public boolean Qhi(int i, com.bykv.vk.openvk.component.video.api.ac.cJ cJVar, boolean z) {
        com.bytedance.sdk.openadsdk.core.widget.Tgh tgh = this.Eh;
        return tgh == null || tgh.Qhi(i, cJVar, z);
    }

    public void pA() {
        com.bytedance.sdk.openadsdk.core.widget.Tgh tgh = this.Eh;
        if (tgh != null) {
            tgh.Qhi(false);
        }
    }

    public void Qhi(com.bykv.vk.openvk.component.video.api.CJ.cJ cJVar) {
        if (cJVar instanceof Qhi) {
            this.aP = (Qhi) cJVar;
            iMK();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hpZ() {
        if (this.aP == null) {
            ABk.Qhi("NewLiveViewLayout", "callback is null");
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void CJ() {
        this.CJ.Qhi(this);
        this.fl.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (Tgh.this.hpZ()) {
                    if (Tgh.this.hpZ == null || Tgh.this.hpZ.getVisibility() != 0) {
                        Tgh.this.aP.Qhi(Tgh.this, view);
                    }
                }
            }
        });
    }

    public void ac(int i) {
        zn.Qhi((View) this.ac, 0);
        com.bykv.vk.openvk.component.video.api.renderview.cJ cJVar = this.CJ;
        if (cJVar != null) {
            cJVar.setVisibility(i);
        }
    }

    public void CJ(boolean z) {
        this.NFd = z;
        if (z) {
            com.bytedance.sdk.openadsdk.core.cJ.Qhi qhi = this.lG;
            if (qhi != null) {
                qhi.Qhi(true);
            }
            com.bytedance.sdk.openadsdk.core.cJ.Qhi qhi2 = this.Jma;
            if (qhi2 != null) {
                qhi2.Qhi(true);
                return;
            }
            return;
        }
        com.bytedance.sdk.openadsdk.core.cJ.Qhi qhi3 = this.lG;
        if (qhi3 != null) {
            qhi3.Qhi(false);
        }
        com.bytedance.sdk.openadsdk.core.cJ.Qhi qhi4 = this.Jma;
        if (qhi4 != null) {
            qhi4.Qhi(false);
        }
    }

    public void Qhi(int i, int i2) {
        if (i == -1) {
            i = zn.ac(this.pM);
        }
        if (i <= 0) {
            return;
        }
        this.HzH = i;
        if (qMt() || WAv() || (this.Dww & 8) == 8) {
            this.kYc = i2;
        } else {
            this.kYc = fl(i);
        }
        cJ(this.HzH, this.kYc);
    }

    public void cJ(boolean z, boolean z2) {
        ImageView imageView = this.fl;
        if (imageView != null) {
            if (z) {
                imageView.setImageDrawable(hm.Qhi(this.pM, "tt_play_movebar_textpage"));
            } else {
                imageView.setImageDrawable(hm.Qhi(this.pM, "tt_stop_movebar_textpage"));
            }
        }
    }

    public void cJ(int i, int i2) {
        ViewGroup.LayoutParams layoutParams = this.ac.getLayoutParams();
        if (i == -1 || i == -2 || i > 0) {
            layoutParams.width = i;
        }
        if (i2 == -1 || i2 == -2 || i2 > 0) {
            layoutParams.height = i2;
        }
        this.ac.setLayoutParams(layoutParams);
    }

    private int fl(int i) {
        if (this.tP <= 0 || this.MQ <= 0) {
            return 0;
        }
        int cJ = zn.cJ(this.pM, 228.0f);
        int cJ2 = zn.cJ(this.pM, 160.0f);
        int i2 = (int) (this.MQ * ((i * 1.0f) / this.tP));
        return i2 > cJ ? cJ : i2 < cJ2 ? cJ2 : i2;
    }

    public void ac(int i, int i2) {
        this.tP = i;
        this.MQ = i2;
    }

    public void ac(ViewGroup viewGroup) {
        if (viewGroup == null) {
            return;
        }
        if (this.ac.getParent() == null) {
            viewGroup.addView(this.ac);
        }
        CJ(0);
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.ac
    public View ac() {
        return this.ac;
    }

    public void ROR() {
        tP tPVar;
        zn.Tgh(this.Tgh);
        zn.Tgh(this.ROR);
        if (this.Sf != null && (tPVar = this.CQU) != null && tPVar.FQ() != null && this.CQU.FQ().WAv() != null) {
            zn.Tgh(this.Sf);
            com.bytedance.sdk.openadsdk.iMK.ac.Qhi().Qhi(this.CQU.FQ().WAv(), this.CQU.FQ().ac(), this.CQU.FQ().cJ(), this.Sf, this.CQU);
        }
        if (this.fl.getVisibility() == 0) {
            zn.Qhi((View) this.fl, 8);
        }
    }

    public void HzH() {
        zn.Tgh(this.Tgh);
        zn.Tgh(this.ROR);
        if (this.fl.getVisibility() == 0) {
            zn.Qhi((View) this.fl, 8);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.ac
    public void Qhi() {
        Qhi(false, this.qMt);
        tP();
    }

    public void kYc() {
        zn.Qhi((View) this.ac, 0);
        com.bykv.vk.openvk.component.video.api.renderview.cJ cJVar = this.CJ;
        if (cJVar != null) {
            zn.Qhi(cJVar.getView(), 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void tP() {
        try {
            zn.Qhi(this.WAv, 8);
            zn.Qhi((View) this.Gm, 8);
            zn.Qhi(this.zc, 8);
            zn.Qhi((View) this.ABk, 8);
            zn.Qhi((View) this.iMK, 8);
            zn.Qhi((View) this.pA, 8);
            zn.Qhi((View) this.hpZ, 8);
        } catch (Exception unused) {
        }
    }

    public void MQ() {
        ImageView imageView = this.Gm;
        if (imageView != null) {
            imageView.setImageBitmap(null);
        }
        CornerIV cornerIV = this.ABk;
        if (cornerIV != null) {
            cornerIV.setImageBitmap(null);
        }
    }

    private void Tgh(int i) {
        zn.Qhi(this.zc, i);
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.ac
    public void Qhi(boolean z) {
        this.js = z;
    }

    /* renamed from: Qhi  reason: avoid collision after fix types in other method */
    public void Qhi2(final tP tPVar, WeakReference<Context> weakReference, boolean z) {
        String str;
        tP tPVar2;
        tP tPVar3;
        if (tPVar == null) {
            return;
        }
        Qhi(false, this.qMt);
        Qhi(this.ac, HzH.Qhi());
        View view = this.WAv;
        if (view != null) {
            zn.Qhi(view, 0);
        }
        ImageView imageView = this.Gm;
        if (imageView != null) {
            zn.Qhi((View) imageView, 0);
        }
        zn.Qhi(this.zc, 0);
        if (this.Gm != null && (tPVar3 = this.CQU) != null && tPVar3.FQ() != null && this.CQU.FQ().WAv() != null) {
            com.bytedance.sdk.openadsdk.iMK.ac.Qhi().Qhi(this.CQU.FQ().WAv(), this.CQU.FQ().ac(), this.CQU.FQ().cJ(), this.Gm, tPVar);
        }
        if (!TextUtils.isEmpty(tPVar.PAe())) {
            str = tPVar.PAe();
        } else if (!TextUtils.isEmpty(tPVar.dVA())) {
            str = tPVar.dVA();
        } else if (TextUtils.isEmpty(tPVar.zjb())) {
            str = "";
        } else {
            str = tPVar.zjb();
        }
        if (this.ABk != null && (tPVar2 = this.CQU) != null && tPVar2.dIT() != null && this.CQU.dIT().Qhi() != null) {
            zn.Qhi((View) this.ABk, 0);
            zn.Qhi((View) this.iMK, 4);
            tP tPVar4 = this.CQU;
            if (tPVar4 != null && tPVar4.IC()) {
                com.bytedance.sdk.openadsdk.ROR.fl.Qhi(this.CQU.dIT()).ac(2).Qhi(new com.bytedance.sdk.openadsdk.ROR.cJ(tPVar, this.CQU.dIT().Qhi(), new com.bytedance.sdk.component.fl.HzH<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh.5
                    @Override // com.bytedance.sdk.component.fl.HzH
                    public void Qhi(zc<Bitmap> zcVar) {
                        if (zcVar == null || zcVar.cJ() == null) {
                            return;
                        }
                        if (Tgh.this.ABk != null) {
                            Tgh.this.ABk.setImageBitmap(zcVar.cJ());
                        }
                        com.bytedance.sdk.openadsdk.cJ.ac.cJ(Tgh.this.CQU, Tgh.this.CQU != null ? js.ac(tPVar.sqa()) : null, "load_vast_icon_success", (JSONObject) null);
                    }

                    @Override // com.bytedance.sdk.component.fl.HzH
                    public void Qhi(int i, String str2, Throwable th) {
                        Tgh.this.Qhi(i, str2, tPVar);
                    }
                }));
                if (this.CQU.cJP() != null && this.CQU.cJP().cJ() != null) {
                    this.CQU.cJP().cJ().cJ(0L);
                }
            } else {
                com.bytedance.sdk.openadsdk.iMK.ac.Qhi().Qhi(this.CQU.dIT(), this.ABk, tPVar);
            }
            tP tPVar5 = this.CQU;
            if (tPVar5 != null && tPVar5.IC()) {
                try {
                    this.ABk.setTag(570425345, "VAST_ICON");
                } catch (Throwable unused) {
                }
            }
            tP tPVar6 = this.CQU;
            if (tPVar6 != null && tPVar6.cJP() != null && this.CQU.cJP().cJ() != null) {
                final com.bytedance.sdk.openadsdk.core.ROR.cJ cJ = this.CQU.cJP().cJ();
                CornerIV cornerIV = this.ABk;
                if (cornerIV != null) {
                    cornerIV.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh.6
                        @Override // java.lang.Runnable
                        public void run() {
                            com.bytedance.sdk.openadsdk.core.ROR.cJ cJVar;
                            if (Tgh.this.ABk == null || !Tgh.this.ABk.isShown() || (cJVar = cJ) == null) {
                                return;
                            }
                            cJVar.cJ(Tgh.this.getVideoProgress());
                        }
                    });
                }
            }
            if (CQU()) {
                this.ABk.setOnClickListener(this.Jma);
                this.ABk.setOnTouchListener(this.Jma);
            } else {
                this.ABk.setOnClickListener(this.lG);
                this.ABk.setOnTouchListener(this.lG);
            }
        } else if (!TextUtils.isEmpty(str)) {
            zn.Qhi((View) this.ABk, 4);
            zn.Qhi((View) this.iMK, 0);
            TextView textView = this.iMK;
            if (textView != null) {
                textView.setText(str.substring(0, 1));
                if (CQU()) {
                    this.iMK.setOnClickListener(this.Jma);
                    this.iMK.setOnTouchListener(this.Jma);
                } else {
                    this.iMK.setOnClickListener(this.lG);
                    this.iMK.setOnTouchListener(this.lG);
                }
            }
        }
        if (this.pA != null && !TextUtils.isEmpty(str)) {
            this.pA.setText(str);
            this.pA.setTag(570425345, "VAST_TITLE");
        }
        zn.Qhi((View) this.pA, 0);
        zn.Qhi((View) this.hpZ, 0);
        String ots = tPVar.ots();
        if (TextUtils.isEmpty(ots)) {
            int ip = tPVar.ip();
            if (ip != 2 && ip != 3) {
                if (ip == 4) {
                    ots = MQ.Qhi(this.pM, "tt_video_download_apk");
                } else if (ip == 5) {
                    ots = MQ.Qhi(this.pM, "tt_video_dial_phone");
                } else if (ip != 8) {
                    ots = MQ.Qhi(this.pM, "tt_video_mobile_go_detail");
                }
            }
            ots = MQ.Qhi(this.pM, "tt_video_mobile_go_detail");
        }
        TextView textView2 = this.hpZ;
        if (textView2 != null) {
            textView2.setText(ots);
            this.hpZ.setOnClickListener(this.lG);
            this.hpZ.setOnTouchListener(this.lG);
        }
        if (this.js) {
            return;
        }
        Tgh(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(final int i, final String str, final tP tPVar) {
        com.bytedance.sdk.openadsdk.cJ.ac.Qhi(new com.bytedance.sdk.component.Sf.hm("load_vast_icon_fail") { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh.7
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("error_code", i);
                    jSONObject.put("description", i + ":" + str);
                    jSONObject.put("url", Tgh.this.CQU.dIT().Qhi());
                } catch (Throwable unused) {
                }
                com.bytedance.sdk.openadsdk.cJ.ac.cJ(Tgh.this.CQU, Tgh.this.CQU != null ? js.ac(tPVar.sqa()) : null, "load_vast_icon_fail", jSONObject);
            }
        });
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.ac
    public void cJ() {
        zn.fl(this.Tgh);
        zn.fl(this.ROR);
        ImageView imageView = this.Sf;
        if (imageView != null) {
            zn.fl(imageView);
        }
    }

    public void Sf() {
        zn.fl(this.Tgh);
    }

    @Override // com.bykv.vk.openvk.component.video.api.renderview.Qhi
    public void Qhi(SurfaceHolder surfaceHolder) {
        if (surfaceHolder != this.CJ.getHolder()) {
            return;
        }
        this.EBS = true;
        if (hpZ()) {
            this.aP.Qhi(this, surfaceHolder);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.renderview.Qhi
    public void Qhi(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        if (surfaceHolder != this.CJ.getHolder()) {
            return;
        }
        hpZ();
    }

    @Override // com.bykv.vk.openvk.component.video.api.renderview.Qhi
    public void cJ(SurfaceHolder surfaceHolder) {
        if (surfaceHolder != this.CJ.getHolder()) {
            return;
        }
        this.EBS = false;
        if (hpZ()) {
            this.aP.cJ(this, surfaceHolder);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.renderview.Qhi
    public void Qhi(SurfaceTexture surfaceTexture, int i, int i2) {
        this.EBS = true;
        if (hpZ()) {
            this.aP.Qhi(this, surfaceTexture);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.renderview.Qhi
    public boolean Qhi(SurfaceTexture surfaceTexture) {
        this.EBS = false;
        if (hpZ()) {
            this.aP.cJ(this, surfaceTexture);
            return true;
        }
        return true;
    }

    public void hm() {
        CJ(8);
        if (Dww()) {
            this.CJ.setVisibility(8);
        }
        ImageView imageView = this.Sf;
        if (imageView != null) {
            imageView.setImageDrawable(null);
        }
        CJ(8);
        zn.Qhi(this.WAv, 8);
        zn.Qhi((View) this.Gm, 8);
        zn.Qhi(this.zc, 8);
        zn.Qhi((View) this.ABk, 8);
        zn.Qhi((View) this.iMK, 8);
        zn.Qhi((View) this.pA, 8);
        com.bytedance.sdk.openadsdk.core.widget.Tgh tgh = this.Eh;
        if (tgh != null) {
            tgh.Qhi(true);
        }
    }

    public boolean qMt() {
        return this.qMt;
    }

    public void Qhi(boolean z, boolean z2, boolean z3) {
        zn.Qhi((View) this.fl, (!z || this.Tgh.getVisibility() == 0) ? 8 : 0);
    }

    public void Qhi(boolean z, boolean z2) {
        zn.Qhi((View) this.fl, 8);
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.Tgh.cJ
    public void Gm() {
        Qhi(true, false);
    }

    public boolean EBS() {
        return this.EBS;
    }

    public void CJ(int i) {
        this.bxS = i;
        zn.Qhi((View) this.ac, i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.fl.Qhi
    public boolean bxS() {
        com.bytedance.sdk.openadsdk.core.widget.Tgh tgh = this.Eh;
        return tgh != null && tgh.Qhi();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean Dww() {
        return (this.Dww & 4) != 4 || this.qMt;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.ac
    public void Qhi(Drawable drawable) {
        ViewGroup viewGroup = this.ac;
        if (viewGroup != null) {
            viewGroup.setBackgroundDrawable(drawable);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.cJ.Qhi.InterfaceC0224Qhi
    public long getVideoProgress() {
        if (this.es <= 0) {
            tP tPVar = this.CQU;
            if (tPVar != null && tPVar.FQ() != null) {
                this.es = (long) (this.CQU.FQ().Tgh() * 1000.0d);
            }
            com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.lB;
            if (flVar != null) {
                this.es = flVar.Sf();
            }
        }
        return this.es;
    }
}
