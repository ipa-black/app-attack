package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.cJ.Gm;
import com.bytedance.sdk.component.adexpress.cJ.iMK;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.activity.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.NFd;
import com.bytedance.sdk.openadsdk.core.bannerexpress.Qhi;
import com.bytedance.sdk.openadsdk.core.bannerexpress.VastBannerBackupView;
import com.bytedance.sdk.openadsdk.core.cJ.Qhi;
import com.bytedance.sdk.openadsdk.core.cJ.ac;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.lB;
import com.bytedance.sdk.openadsdk.core.model.bxS;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.sDy;
import com.bytedance.sdk.openadsdk.utils.js;
import com.bytedance.sdk.openadsdk.utils.qMt;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import io.bidmachine.utils.IabUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.ldap.server.jndi.JavaLdapSupport;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class NativeExpressView extends PAGFrameLayout implements com.bytedance.sdk.component.adexpress.cJ.hm, com.bytedance.sdk.component.adexpress.cJ.hpZ, com.bytedance.sdk.component.adexpress.dynamic.fl, Qhi.InterfaceC0224Qhi, ABk {
    public static int qMt = 500;
    protected boolean ABk;
    private TTDislikeDialogAbstract CJ;
    public com.bytedance.sdk.openadsdk.cJ.Sf CQU;
    private com.bytedance.sdk.component.adexpress.cJ.HzH Dq;
    boolean Dww;
    public boolean EBS;
    private float EGK;
    protected com.bytedance.sdk.component.adexpress.cJ.cJ Eh;
    private final AtomicBoolean FQ;
    protected tP Gm;
    private final SparseArray<ac.Qhi> HLI;
    private com.bytedance.sdk.component.adexpress.cJ.ROR Hf;
    boolean HzH;
    private String Jma;
    private final Runnable MND;
    protected HashSet<String> MQ;
    private com.bytedance.sdk.openadsdk.core.ugen.component.fl NBs;
    private String NFd;
    private cJ PAe;
    private kYc Qe;
    private boolean Qhi;
    private Sf ROR;
    private float ReL;
    protected final Context Sf;
    private ROR Tgh;
    private VastBannerBackupView VnT;
    protected AdSlot WAv;
    private Gm.Qhi YB;
    public com.bytedance.sdk.component.adexpress.cJ.fl<? extends View> aP;
    private com.bytedance.sdk.openadsdk.dislike.cJ ac;
    int bxS;
    private int cJ;
    private List<com.bytedance.sdk.component.adexpress.cJ.Gm> cjC;
    private com.bytedance.sdk.openadsdk.core.ugen.ac.ac dI;
    private ThemeStatusBroadcastReceiver dIT;
    private com.bytedance.sdk.component.adexpress.cJ.WAv dVA;
    private boolean es;
    private PAGExpressAdWrapperListener fl;
    private long gga;
    protected String hm;
    protected boolean hpZ;
    protected boolean iMK;
    private final ViewTreeObserver.OnScrollChangedListener ip;
    private final Runnable jPH;
    private String js;
    protected int kYc;
    private float lB;
    private com.bytedance.sdk.openadsdk.cJ.ac.Tgh lG;
    private float oU;
    private int ots;
    protected com.bytedance.sdk.component.adexpress.cJ.ac pA;
    long pM;
    private float pv;
    private float sDy;
    protected String tP;
    private final Runnable xyz;
    private hpZ yN;
    public FrameLayout zc;
    private com.bytedance.sdk.component.adexpress.cJ.iMK zjb;
    private Qhi.InterfaceC0223Qhi zn;

    public int CJ() {
        return 0;
    }

    public void Qhi() {
    }

    public void Qhi(int i) {
    }

    public void Qhi(int i, String str) {
    }

    protected void Qhi(iMK.Qhi qhi) {
    }

    protected void Qhi(JSONObject jSONObject) {
    }

    public void Qhi(boolean z) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean Qhi(com.bytedance.sdk.component.adexpress.cJ.pA pAVar) {
        return true;
    }

    public long ac() {
        return 0L;
    }

    public void cJ() {
    }

    public void cJ(int i) {
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.fl
    public void d_() {
    }

    public void fl() {
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.fl
    public void setTimeUpdate(int i) {
    }

    public void setJsbLandingPageOpenListener(com.bytedance.sdk.openadsdk.core.widget.ac acVar) {
        if (this.Qe != null && getJsObject() != null) {
            getJsObject().Qhi(acVar);
        }
        com.bytedance.sdk.openadsdk.core.ugen.ac.ac acVar2 = this.dI;
        if (acVar2 != null) {
            acVar2.Qhi(acVar);
        }
    }

    public com.bytedance.sdk.openadsdk.cJ.Sf getAdShowTime() {
        return this.CQU;
    }

    public void setClosedListenerKey(String str) {
        this.js = str;
        cJ cJVar = this.PAe;
        if (cJVar != null) {
            cJVar.Qhi(str);
        }
    }

    public cJ getBrandBannerController() {
        return this.PAe;
    }

    public String getClosedListenerKey() {
        return this.js;
    }

    public void setBannerClickClosedListener(Qhi.InterfaceC0223Qhi interfaceC0223Qhi) {
        this.zn = interfaceC0223Qhi;
    }

    public NativeExpressView(Context context, tP tPVar, AdSlot adSlot, String str) {
        super(context);
        this.Qhi = true;
        this.cJ = 0;
        this.hm = "embeded_ad";
        this.NFd = null;
        this.iMK = false;
        this.hpZ = false;
        this.HzH = true;
        this.kYc = -1;
        this.Jma = "";
        this.EBS = false;
        this.es = true;
        this.bxS = -1;
        this.CQU = new com.bytedance.sdk.openadsdk.cJ.Sf();
        this.pM = 0L;
        this.FQ = new AtomicBoolean(false);
        this.ip = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                if (NativeExpressView.this.HzH) {
                    NativeExpressView.this.qMt();
                    NativeExpressView nativeExpressView = NativeExpressView.this;
                    nativeExpressView.removeCallbacks(nativeExpressView.xyz);
                    NativeExpressView nativeExpressView2 = NativeExpressView.this;
                    nativeExpressView2.postDelayed(nativeExpressView2.xyz, 500L);
                }
            }
        };
        this.xyz = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.2
            @Override // java.lang.Runnable
            public void run() {
                if (sDy.Qhi(NativeExpressView.this, 0, 5)) {
                    NativeExpressView nativeExpressView = NativeExpressView.this;
                    nativeExpressView.fl(nativeExpressView.getVisibility());
                    return;
                }
                NativeExpressView.this.fl(8);
            }
        };
        this.jPH = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.3
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.fl(0);
            }
        };
        this.MND = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.4
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.fl(8);
            }
        };
        this.ots = 8;
        this.HLI = new SparseArray<>();
        this.oU = -1.0f;
        this.pv = -1.0f;
        this.ReL = -1.0f;
        this.EGK = -1.0f;
        this.gga = 0L;
        this.hm = str;
        this.Sf = context;
        this.Gm = tPVar;
        this.WAv = adSlot;
        this.EBS = false;
        Tgh();
    }

    public NativeExpressView(Context context, tP tPVar, AdSlot adSlot, String str, boolean z, boolean z2) {
        super(context);
        this.Qhi = true;
        this.cJ = 0;
        this.hm = "embeded_ad";
        this.NFd = null;
        this.iMK = false;
        this.hpZ = false;
        this.HzH = true;
        this.kYc = -1;
        this.Jma = "";
        this.EBS = false;
        this.es = true;
        this.bxS = -1;
        this.CQU = new com.bytedance.sdk.openadsdk.cJ.Sf();
        this.pM = 0L;
        this.FQ = new AtomicBoolean(false);
        this.ip = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                if (NativeExpressView.this.HzH) {
                    NativeExpressView.this.qMt();
                    NativeExpressView nativeExpressView = NativeExpressView.this;
                    nativeExpressView.removeCallbacks(nativeExpressView.xyz);
                    NativeExpressView nativeExpressView2 = NativeExpressView.this;
                    nativeExpressView2.postDelayed(nativeExpressView2.xyz, 500L);
                }
            }
        };
        this.xyz = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.2
            @Override // java.lang.Runnable
            public void run() {
                if (sDy.Qhi(NativeExpressView.this, 0, 5)) {
                    NativeExpressView nativeExpressView = NativeExpressView.this;
                    nativeExpressView.fl(nativeExpressView.getVisibility());
                    return;
                }
                NativeExpressView.this.fl(8);
            }
        };
        this.jPH = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.3
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.fl(0);
            }
        };
        this.MND = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.4
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.fl(8);
            }
        };
        this.ots = 8;
        this.HLI = new SparseArray<>();
        this.oU = -1.0f;
        this.pv = -1.0f;
        this.ReL = -1.0f;
        this.EGK = -1.0f;
        this.gga = 0L;
        this.hm = str;
        this.Sf = context;
        this.Gm = tPVar;
        this.WAv = adSlot;
        this.EBS = z;
        this.es = z2;
        Tgh();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Tgh() {
        this.MQ = new HashSet<>();
        this.dIT = new ThemeStatusBroadcastReceiver();
        AdSlot adSlot = this.WAv;
        if (adSlot != null) {
            this.sDy = adSlot.getExpressViewAcceptedWidth();
            this.lB = this.WAv.getExpressViewAcceptedHeight();
            ROR();
            this.NFd = this.WAv.getCodeId();
            if (TextUtils.equals(this.hm, "fullscreen_interstitial_ad")) {
                this.bxS = com.bytedance.sdk.openadsdk.core.HzH.CJ().tP(this.NFd);
            } else if (TextUtils.equals(this.hm, "rewarded_video")) {
                this.bxS = com.bytedance.sdk.openadsdk.core.HzH.CJ().WAv(this.NFd);
            } else if (TextUtils.equals(this.hm, "open_ad")) {
                int EBS = com.bytedance.sdk.openadsdk.core.HzH.CJ().EBS(this.NFd);
                this.bxS = EBS;
                if (EBS < 0) {
                    this.bxS = 5;
                }
            }
        }
        setBackgroundColor(0);
        if (this.Gm.gT()) {
            this.PAe = new cJ(this.Sf, this, this.Gm, this.hm);
            return;
        }
        hpZ();
        this.cjC = new ArrayList();
        HzH();
        com.bytedance.sdk.component.adexpress.cJ.HzH hzH = this.Dq;
        if (hzH != null) {
            this.Qe = (kYc) hzH.cJ();
        }
        NFd jsObject = getJsObject();
        if (jsObject != null) {
            jsObject.Tgh(this.hm);
        }
    }

    private void ROR() {
        tP.Qhi es = this.Gm.es();
        if (!TextUtils.equals(this.hm, "embeded_ad") || es == null) {
            return;
        }
        String Gm = es.Gm();
        if (TextUtils.isEmpty(Gm)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(Gm);
            int optInt = jSONObject.optInt(IabUtils.KEY_WIDTH);
            int optInt2 = jSONObject.optInt(IabUtils.KEY_HEIGHT);
            if (optInt == 0 || optInt2 == 0) {
                return;
            }
            this.lB = optInt2;
            this.sDy = optInt;
        } catch (Exception unused) {
        }
    }

    public SSWebView getWebView() {
        kYc kyc = this.Qe;
        if (kyc == null) {
            return null;
        }
        return kyc.Qhi();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0152  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void hpZ() {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.hpZ():void");
    }

    public String getUgenTemplateErrorReason() {
        return this.Jma;
    }

    protected int getRenderTimeout() {
        return com.bytedance.sdk.openadsdk.core.HzH.CJ().aP();
    }

    private void HzH() {
        if (this.Gm.sqa() == 1 && this.Gm.IC()) {
            com.bytedance.sdk.component.adexpress.cJ.ROR ror = new com.bytedance.sdk.component.adexpress.cJ.ROR(this.Sf, this.zjb, new pA(this, this.dIT, this.zjb));
            this.Hf = ror;
            this.cjC.add(ror);
            this.YB = new com.bytedance.sdk.component.adexpress.cJ.ABk(this.cjC, this.dVA);
        } else if (CQU()) {
            kYc();
        } else {
            try {
                tP();
                this.Qe = new kYc(this.Sf, this.zjb, this.dIT, this.lG, this.Gm);
                com.bytedance.sdk.component.adexpress.cJ.HzH hzH = new com.bytedance.sdk.component.adexpress.cJ.HzH(this.Sf, this.zjb, this.Qe, this);
                this.Dq = hzH;
                this.cjC.add(hzH);
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.ABk.Qhi("NativeExpressView", "NativeExpressView dynamicRender fail", e2);
            }
            com.bytedance.sdk.component.adexpress.cJ.ROR ror2 = new com.bytedance.sdk.component.adexpress.cJ.ROR(this.Sf, this.zjb, new pA(this, this.dIT, this.zjb));
            this.Hf = ror2;
            this.cjC.add(ror2);
            this.YB = new com.bytedance.sdk.component.adexpress.cJ.ABk(this.cjC, this.dVA);
        }
    }

    private void kYc() {
        this.cJ = this.Gm.CQU();
        try {
            tP();
            MQ();
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ABk.Qhi("NativeExpressView", "NativeExpressView dynamicRender fail", e2);
        }
        boolean z = this.Gm.pM() == 1;
        this.Qhi = z;
        if (z) {
            com.bytedance.sdk.component.adexpress.cJ.ROR ror = new com.bytedance.sdk.component.adexpress.cJ.ROR(this.Sf, this.zjb, new pA(this, this.dIT, this.zjb));
            this.Hf = ror;
            this.cjC.add(ror);
        }
        new StringBuilder("initRender: mRenderSequenceType is ").append(this.cJ).append(", mInterceptors is ").append(this.cjC);
        this.YB = new com.bytedance.sdk.component.adexpress.cJ.ABk(this.cjC, this.dVA);
    }

    private void tP() {
        if (com.bytedance.sdk.openadsdk.core.iMK.fl()) {
            return;
        }
        Gm.Qhi();
    }

    private void MQ() {
        com.bytedance.sdk.openadsdk.core.ac.Qhi.Qhi qhi = new com.bytedance.sdk.openadsdk.core.ac.Qhi.Qhi();
        int i = this.cJ;
        if (i == 3) {
            com.bytedance.sdk.component.adexpress.dynamic.CJ.hm hmVar = new com.bytedance.sdk.component.adexpress.dynamic.CJ.hm();
            com.bytedance.sdk.component.adexpress.cJ.cJ cJVar = new com.bytedance.sdk.component.adexpress.cJ.cJ(this.Sf.getApplicationContext(), this.zjb, this.dIT, this.EBS, hmVar, this, qhi, new fl(this.Sf, this.dIT, this.EBS, hmVar, this.zjb, qhi));
            this.Eh = cJVar;
            this.cjC.add(cJVar);
        } else if (i == 7) {
            this.dI = new com.bytedance.sdk.openadsdk.core.ugen.ac.ac(this.Sf, this.Gm, this.EBS, (com.bytedance.sdk.openadsdk.core.ugen.ac.Qhi) this.zjb, this);
            com.bytedance.sdk.openadsdk.core.ugen.component.fl flVar = new com.bytedance.sdk.openadsdk.core.ugen.component.fl(this.Sf, this.dI, this, this.zjb);
            this.NBs = flVar;
            this.cjC.add(flVar);
        } else {
            this.Qe = new kYc(this.Sf, this.zjb, this.dIT, this.lG, this.Gm);
            com.bytedance.sdk.component.adexpress.cJ.HzH hzH = new com.bytedance.sdk.component.adexpress.cJ.HzH(this.Sf, this.zjb, this.Qe, this);
            this.Dq = hzH;
            this.cjC.add(hzH);
        }
    }

    public void setOuterDislike(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        BackupView backupView;
        com.bytedance.sdk.component.adexpress.cJ.fl<? extends View> flVar = this.aP;
        if (flVar != null && (flVar instanceof pA) && (backupView = (BackupView) flVar.fl()) != null) {
            backupView.setDislikeOuter(tTDislikeDialogAbstract);
        }
        cJ cJVar = this.PAe;
        if (cJVar != null) {
            cJVar.Qhi(tTDislikeDialogAbstract);
        }
        this.CJ = tTDislikeDialogAbstract;
    }

    public void setDislike(com.bytedance.sdk.openadsdk.dislike.cJ cJVar) {
        BackupView backupView;
        com.bytedance.sdk.component.adexpress.cJ.fl<? extends View> flVar = this.aP;
        if (flVar != null && (flVar instanceof pA) && (backupView = (BackupView) flVar.fl()) != null) {
            backupView.setDislikeInner(cJVar);
        }
        cJ cJVar2 = this.PAe;
        if (cJVar2 != null) {
            cJVar2.Qhi(cJVar);
        }
        this.ac = cJVar;
    }

    public void setExpressInteractionListener(PAGExpressAdWrapperListener pAGExpressAdWrapperListener) {
        this.fl = pAGExpressAdWrapperListener;
        cJ cJVar = this.PAe;
        if (cJVar != null) {
            cJVar.Qhi(pAGExpressAdWrapperListener);
        }
    }

    public void setClickCreativeListener(ROR ror) {
        this.Tgh = ror;
        if (ror != null) {
            ror.Qhi((Qhi.InterfaceC0224Qhi) this);
        }
    }

    public ROR getClickCreativeListener() {
        return this.Tgh;
    }

    public Sf getClickListener() {
        return this.ROR;
    }

    public void setClickListener(Sf sf) {
        this.ROR = sf;
    }

    public void setBackupListener(com.bytedance.sdk.component.adexpress.cJ.ac acVar) {
        this.pA = acVar;
        com.bytedance.sdk.component.adexpress.cJ.ROR ror = this.Hf;
        if (ror != null) {
            ror.Qhi(acVar);
        }
    }

    public void Sf() {
        com.bytedance.sdk.component.adexpress.cJ.fl<? extends View> flVar = this.aP;
        if (flVar instanceof kYc) {
            if (flVar == null) {
                return;
            }
            ((kYc) flVar).Sf();
        }
        tP tPVar = this.Gm;
        if (tPVar == null || tPVar.cJP() == null || this.Gm.cJP().Qhi() == null) {
            return;
        }
        this.Gm.cJP().Qhi().Qhi(0L);
    }

    public void fl(int i) {
        com.bytedance.sdk.component.adexpress.cJ.fl<? extends View> flVar = this.aP;
        if (flVar == null || !(flVar instanceof kYc)) {
            return;
        }
        ((kYc) flVar).cJ(i);
        this.ots = i;
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        Qhi(i, true);
    }

    public void Qhi(int i, boolean z) {
        this.HzH = z;
        removeCallbacks(this.MND);
        removeCallbacks(this.jPH);
        if (i == 0) {
            postDelayed(this.jPH, 50L);
        } else {
            postDelayed(this.MND, 50L);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (Build.VERSION.SDK_INT < 28) {
            onWindowVisibilityChanged(z ? getVisibility() : 8);
        }
        qMt();
        if (z) {
            com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh.Qhi(this.Gm, 4);
        } else {
            com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh.Qhi(this.Gm, 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void qMt() {
        if (this.FQ.get()) {
            this.CQU.Qhi(System.currentTimeMillis(), sDy.Qhi(this));
        }
    }

    public void hm() {
        if (this.Gm == null) {
            return;
        }
        this.pM = SystemClock.elapsedRealtime();
        if (this.Gm.gT()) {
            cJ cJVar = this.PAe;
            if (cJVar == null) {
                a_(106);
                return;
            }
            cJVar.Qhi((com.bytedance.sdk.component.adexpress.cJ.hpZ) this);
            this.PAe.Qhi();
            return;
        }
        this.lG.Qhi();
        Gm.Qhi qhi = this.YB;
        if (qhi != null) {
            qhi.Qhi(this);
        }
        try {
            this.YB.Qhi();
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00b1  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchTouchEvent(android.view.MotionEvent r13) {
        /*
            r12 = this;
            com.bytedance.sdk.openadsdk.core.nativeexpress.ROR r0 = r12.Tgh
            r1 = 0
            if (r0 == 0) goto L1e
            int r2 = r13.getDeviceId()
            r0.cJ(r2)
            com.bytedance.sdk.openadsdk.core.nativeexpress.ROR r0 = r12.Tgh
            int r2 = r13.getSource()
            r0.Qhi(r2)
            com.bytedance.sdk.openadsdk.core.nativeexpress.ROR r0 = r12.Tgh
            int r2 = r13.getToolType(r1)
            r0.ac(r2)
        L1e:
            com.bytedance.sdk.openadsdk.core.nativeexpress.Sf r0 = r12.ROR
            if (r0 == 0) goto L3b
            int r2 = r13.getDeviceId()
            r0.cJ(r2)
            com.bytedance.sdk.openadsdk.core.nativeexpress.Sf r0 = r12.ROR
            int r2 = r13.getSource()
            r0.Qhi(r2)
            com.bytedance.sdk.openadsdk.core.nativeexpress.Sf r0 = r12.ROR
            int r2 = r13.getToolType(r1)
            r0.ac(r2)
        L3b:
            int r0 = r13.getActionMasked()
            if (r0 == 0) goto L9a
            r1 = 3
            r2 = 1
            if (r0 == r2) goto L4b
            r3 = 2
            if (r0 == r3) goto L4f
            if (r0 == r1) goto L4d
            r1 = -1
        L4b:
            r5 = r1
            goto Lad
        L4d:
            r1 = 4
            goto L4b
        L4f:
            float r0 = r12.ReL
            float r1 = r13.getX()
            float r4 = r12.oU
            float r1 = r1 - r4
            float r1 = java.lang.Math.abs(r1)
            float r0 = r0 + r1
            r12.ReL = r0
            float r0 = r12.EGK
            float r1 = r13.getY()
            float r4 = r12.pv
            float r1 = r1 - r4
            float r1 = java.lang.Math.abs(r1)
            float r0 = r0 + r1
            r12.EGK = r0
            float r0 = r13.getX()
            r12.oU = r0
            float r0 = r13.getY()
            r12.pv = r0
            long r0 = java.lang.System.currentTimeMillis()
            long r4 = r12.gga
            long r0 = r0 - r4
            r4 = 200(0xc8, double:9.9E-322)
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 <= 0) goto L98
            float r0 = r12.ReL
            r1 = 1090519040(0x41000000, float:8.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L96
            float r0 = r12.EGK
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L98
        L96:
            r5 = r2
            goto Lad
        L98:
            r5 = r3
            goto Lad
        L9a:
            float r0 = r13.getRawX()
            r12.oU = r0
            float r0 = r13.getRawY()
            r12.pv = r0
            long r2 = java.lang.System.currentTimeMillis()
            r12.gga = r2
            goto L4b
        Lad:
            android.util.SparseArray<com.bytedance.sdk.openadsdk.core.cJ.ac$Qhi> r0 = r12.HLI
            if (r0 == 0) goto Lcc
            int r1 = r13.getActionMasked()
            com.bytedance.sdk.openadsdk.core.cJ.ac$Qhi r2 = new com.bytedance.sdk.openadsdk.core.cJ.ac$Qhi
            float r3 = r13.getSize()
            double r6 = (double) r3
            float r3 = r13.getPressure()
            double r8 = (double) r3
            long r10 = java.lang.System.currentTimeMillis()
            r4 = r2
            r4.<init>(r5, r6, r8, r10)
            r0.put(r1, r2)
        Lcc:
            boolean r13 = super.dispatchTouchEvent(r13)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    public void Qhi(View view, int i, com.bytedance.sdk.component.adexpress.ac acVar) {
        View view2;
        qMt.Qhi("ClickCreativeListener", "trigger Class2 method1", Integer.valueOf(i));
        if (i == -1 || acVar == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        if (bxS.Gm(this.Gm)) {
            hashMap.put("click_scence", 3);
        } else {
            hashMap.put("click_scence", 1);
        }
        com.bytedance.sdk.openadsdk.core.model.pA pAVar = (com.bytedance.sdk.openadsdk.core.model.pA) acVar;
        ROR ror = this.Tgh;
        if (ror != null) {
            ror.CJ(getDynamicShowType());
            this.Tgh.Qhi(hashMap);
        }
        Sf sf = this.ROR;
        if (sf != null) {
            sf.CJ(getDynamicShowType());
            this.ROR.Qhi(hashMap);
        }
        float f2 = pAVar.Qhi;
        float f3 = pAVar.cJ;
        float f4 = pAVar.ac;
        float f5 = pAVar.CJ;
        boolean z = pAVar.pA;
        SparseArray<ac.Qhi> sparseArray = pAVar.iMK;
        if (sparseArray == null || sparseArray.size() == 0) {
            sparseArray = this.HLI;
        }
        SparseArray<ac.Qhi> sparseArray2 = sparseArray;
        String str = pAVar.Gm;
        if (view == null) {
            view2 = this;
        } else {
            r5 = view != this ? Qhi(view) : null;
            view2 = view;
        }
        if (pAVar != null) {
            pAVar.zc = i;
            if (r5 != null && pAVar.ABk == null) {
                pAVar.ABk = r5;
            }
        }
        switch (i) {
            case 1:
                FrameLayout frameLayout = this.zc;
                if (frameLayout != null) {
                    frameLayout.dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 0, 0.0f, 0.0f, 0));
                }
                tP tPVar = this.Gm;
                if (tPVar == null || tPVar.kYc() != 1 || z) {
                    Sf sf2 = this.ROR;
                    if (sf2 != null) {
                        sf2.Qhi(pAVar);
                        this.ROR.Qhi(str);
                        this.ROR.Qhi(view2, f2, f3, f4, f5, sparseArray2, z);
                    }
                    if (this.fl == null || pAVar.kYc) {
                        return;
                    }
                    this.fl.onAdClicked();
                    return;
                }
                return;
            case 2:
                if (pAVar.hpZ > 0) {
                    lB.Qhi(true);
                }
                ROR ror2 = this.Tgh;
                if (ror2 != null) {
                    ror2.Qhi(pAVar);
                    this.Tgh.Qhi(str);
                    this.Tgh.Qhi(view2, f2, f3, f4, f5, sparseArray2, z);
                }
                if (this.fl != null && !pAVar.kYc) {
                    this.fl.onAdClicked();
                }
                lB.Qhi(false);
                com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh.Qhi(this.Gm, 9);
                return;
            case 3:
                TTDislikeDialogAbstract tTDislikeDialogAbstract = this.CJ;
                if (tTDislikeDialogAbstract != null) {
                    tTDislikeDialogAbstract.show();
                    return;
                }
                com.bytedance.sdk.openadsdk.dislike.cJ cJVar = this.ac;
                if (cJVar != null) {
                    cJVar.Qhi();
                    return;
                } else {
                    TTDelegateActivity.Qhi(this.Gm, this.js);
                    return;
                }
            case 4:
                FrameLayout frameLayout2 = this.zc;
                if (frameLayout2 != null) {
                    frameLayout2.dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 0, 0.0f, 0.0f, 0));
                }
                tP tPVar2 = this.Gm;
                if (tPVar2 == null || tPVar2.kYc() != 1 || z) {
                    js.cJ(this.Gm);
                    if ("embeded_ad".equals(this.hm) && EBS() && !this.ABk && js.cJ(this.Gm)) {
                        ROR ror3 = this.Tgh;
                        if (ror3 != null) {
                            ror3.Qhi(pAVar);
                            this.Tgh.Qhi(str);
                            this.Tgh.Qhi(view2, f2, f3, f4, f5, sparseArray2, z);
                        }
                    } else {
                        Sf sf3 = this.ROR;
                        if (sf3 != null) {
                            sf3.Qhi(pAVar);
                            this.ROR.Qhi(str);
                            this.ROR.Qhi(view2, f2, f3, f4, f5, sparseArray2, z);
                        }
                    }
                    if (this.fl == null || pAVar.kYc) {
                        return;
                    }
                    this.fl.onAdClicked();
                    return;
                }
                return;
            case 5:
                Qhi(!this.EBS);
                return;
            case 6:
                Qhi();
                return;
            case 7:
                TTWebsiteActivity.Qhi(this.Sf, this.Gm, this.hm);
                return;
            default:
                return;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.cJ.Qhi.InterfaceC0224Qhi
    public long getVideoProgress() {
        VastBannerBackupView vastBannerBackupView = this.VnT;
        if (vastBannerBackupView != null) {
            return vastBannerBackupView.getVideoProgress();
        }
        return 0L;
    }

    public static JSONObject Qhi(View view) {
        try {
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(IabUtils.KEY_WIDTH, view.getWidth());
            jSONObject.put(IabUtils.KEY_HEIGHT, view.getHeight());
            jSONObject.put(TtmlNode.LEFT, iArr[0]);
            jSONObject.put(JavaLdapSupport.TOP_ATTR, iArr[1]);
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    private boolean EBS() {
        return tP.fl(this.Gm);
    }

    private int getAdSlotType() {
        String str = this.hm;
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1695837674:
                if (str.equals("banner_ad")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1364000502:
                if (str.equals("rewarded_video")) {
                    c2 = 1;
                    break;
                }
                break;
            case -1263194568:
                if (str.equals("open_ad")) {
                    c2 = 2;
                    break;
                }
                break;
            case -764631662:
                if (str.equals("fullscreen_interstitial_ad")) {
                    c2 = 3;
                    break;
                }
                break;
            case 1844104722:
                if (str.equals("interaction")) {
                    c2 = 4;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return 1;
            case 1:
                return 7;
            case 2:
                return 3;
            case 3:
                return 8;
            case 4:
                return 2;
            default:
                return 5;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        qMt();
        bxS();
        com.bytedance.sdk.component.utils.ABk.Qhi("webviewpool", "onAttachedToWindow+++");
        getViewTreeObserver().addOnScrollChangedListener(this.ip);
        com.bytedance.sdk.openadsdk.core.hm.cJ().Qhi(this.js, this.zn);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        qMt();
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        com.bytedance.sdk.component.utils.ABk.Qhi("webviewpool", "onFinishTemporaryDetach+++");
    }

    private void bxS() {
        List<com.bytedance.sdk.component.adexpress.cJ.Gm> list = this.cjC;
        if (list == null) {
            return;
        }
        Iterator<com.bytedance.sdk.component.adexpress.cJ.Gm> it = list.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    private void Dww() {
        List<com.bytedance.sdk.component.adexpress.cJ.Gm> list = this.cjC;
        if (list == null) {
            return;
        }
        Iterator<com.bytedance.sdk.component.adexpress.cJ.Gm> it = list.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    public void WAv() {
        kYc kyc = this.Qe;
        if (kyc == null || kyc.fl() == null) {
            return;
        }
        this.Qe.Tgh();
    }

    public void Gm() {
        try {
            cJ cJVar = this.PAe;
            if (cJVar != null) {
                cJVar.cJ();
            }
            iMK();
            removeAllViews();
            if (getParent() != null) {
                ((ViewGroup) getParent()).removeView(this);
            }
            List<com.bytedance.sdk.component.adexpress.cJ.Gm> list = this.cjC;
            if (list != null) {
                for (com.bytedance.sdk.component.adexpress.cJ.Gm gm : list) {
                    gm.Qhi();
                }
            }
            com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh.Qhi(this.Gm);
            this.ac = null;
            this.CJ = null;
            this.WAv = null;
            this.Gm = null;
            this.fl = null;
            this.Tgh = null;
            this.pA = null;
            this.ROR = null;
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("NativeExpressView", "detach error", th);
        }
    }

    public void zc() {
        try {
            FrameLayout frameLayout = this.zc;
            if (frameLayout == null || frameLayout.getParent() == null) {
                return;
            }
            removeView(this.zc);
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnScrollChangedListener(this.ip);
        com.bytedance.sdk.openadsdk.core.hm.cJ().Tgh(this.js);
        Dww();
        com.bytedance.sdk.component.utils.ABk.Qhi("webviewpool", "onDetachedFromWindow===");
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        com.bytedance.sdk.component.utils.ABk.Qhi("webviewpool", "onStartTemporaryDetach===");
    }

    public void Qhi(com.bytedance.sdk.component.adexpress.cJ.fl<? extends View> flVar, com.bytedance.sdk.component.adexpress.cJ.pA pAVar) {
        tP tPVar;
        this.FQ.set(true);
        this.aP = flVar;
        if (this.ots != getWindowVisibility()) {
            fl(getWindowVisibility());
        }
        new Object[]{"render type is  ", Integer.valueOf(flVar.ac())};
        if (flVar.ac() == 3 && (tPVar = this.Gm) != null && tPVar.hpZ() == 1) {
            this.Gm.cJ(0);
        }
        if (flVar.ac() == 2 || flVar.ac() == 0 || flVar.ac() == 3 || flVar.ac() == 7) {
            View fl = flVar.fl();
            if (fl.getParent() != null) {
                ((ViewGroup) fl.getParent()).removeView(fl);
            }
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < getChildCount(); i++) {
                arrayList.add(getChildAt(i));
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                if (arrayList.get(i2) instanceof SSWebView) {
                    removeView((View) arrayList.get(i2));
                }
            }
            addView(flVar.fl());
        }
        tP tPVar2 = this.Gm;
        if (tPVar2 != null) {
            com.bytedance.sdk.openadsdk.Gm.ac.Qhi(tPVar2.cJ(), this.pM, this.hm, flVar.ac());
        }
        com.bytedance.sdk.component.adexpress.cJ.WAv wAv = this.dVA;
        if (wAv != null) {
            ((zc) wAv).Gm();
        }
        PAGExpressAdWrapperListener pAGExpressAdWrapperListener = this.fl;
        if (pAGExpressAdWrapperListener != null) {
            pAGExpressAdWrapperListener.onRenderSuccess(this, (float) pAVar.CJ(), (float) pAVar.fl());
        }
        if (Qhi(pAVar)) {
            com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh.Qhi(this, this.Gm, ac(getDynamicShowType()));
        }
        hpZ hpz = this.yN;
        if (hpz != null) {
            hpz.Qhi(this.Gm, this.hm);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Tgh.Qhi ac(int i) {
        return new Tgh.Qhi(i);
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.hpZ
    public void a_(int i) {
        com.bytedance.sdk.component.adexpress.cJ.WAv wAv = this.dVA;
        if (wAv != null) {
            if (!this.Qhi) {
                wAv.Sf();
            }
            this.dVA.hm();
            ((zc) this.dVA).Gm();
        }
        PAGExpressAdWrapperListener pAGExpressAdWrapperListener = this.fl;
        if (pAGExpressAdWrapperListener != null) {
            pAGExpressAdWrapperListener.onRenderFail(this, com.bytedance.sdk.openadsdk.core.Sf.Qhi(i), i);
        }
        hpZ hpz = this.yN;
        if (hpz != null) {
            hpz.Qhi(this.Gm, this.hm);
        }
    }

    public boolean ABk() {
        com.bytedance.sdk.component.adexpress.cJ.fl<? extends View> flVar = this.aP;
        return flVar != null && flVar.ac() == 1;
    }

    public int getDynamicShowType() {
        com.bytedance.sdk.component.adexpress.cJ.fl<? extends View> flVar = this.aP;
        if (flVar != null) {
            return flVar.ac();
        }
        return 0;
    }

    public JSONObject Qhi(JSONObject jSONObject, tP tPVar) {
        if (this.aP instanceof kYc) {
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            try {
                int renderEngineCacheType = getRenderEngineCacheType();
                if (tPVar == null || tPVar.es() == null || !tPVar.es().ABk()) {
                    jSONObject.put("engine_version", "v1");
                } else {
                    jSONObject.put("engine_version", tPVar.es().zc());
                }
                jSONObject.put("engine_type", renderEngineCacheType);
            } catch (Exception e2) {
                e2.getMessage();
            }
            return jSONObject;
        }
        return null;
    }

    public int getRenderEngineCacheType() {
        hm pA;
        com.bytedance.sdk.component.adexpress.cJ.fl<? extends View> flVar = this.aP;
        if (!(flVar instanceof kYc) || (pA = ((kYc) flVar).pA()) == null) {
            return 0;
        }
        return pA.Qhi();
    }

    public int getExpectExpressWidth() {
        return Float.valueOf(this.sDy).intValue();
    }

    public int getExpectExpressHeight() {
        return Float.valueOf(this.lB).intValue();
    }

    public NFd getJsObject() {
        kYc kyc = this.Qe;
        if (kyc != null) {
            return kyc.hpZ();
        }
        return null;
    }

    private boolean CQU() {
        return TextUtils.equals(this.hm, "fullscreen_interstitial_ad") || TextUtils.equals(this.hm, "rewarded_video") || TextUtils.equals("open_ad", this.hm) || kYc.cJ(this.hm) || TextUtils.equals(this.hm, "embeded_ad");
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.fl
    public void Qhi(CharSequence charSequence, int i, int i2, boolean z) {
        cJ(Integer.parseInt(String.valueOf(charSequence)), i);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.fl
    public void setSoundMute(boolean z) {
        this.EBS = z;
        com.bytedance.sdk.component.adexpress.cJ.cJ cJVar = this.Eh;
        if (cJVar != null && cJVar.cJ() != null) {
            this.Eh.cJ().setSoundMute(z);
        }
        com.bytedance.sdk.component.adexpress.cJ.fl<? extends View> flVar = this.aP;
        if ((flVar instanceof com.bytedance.sdk.openadsdk.core.ugen.ac.ac) && flVar.ac() == 7) {
            ((com.bytedance.sdk.openadsdk.core.ugen.ac.ac) this.aP).setSoundMute(z);
        }
    }

    protected void cJ(int i, int i2) {
        int i3;
        if (TextUtils.equals(this.hm, "banner_ad")) {
            return;
        }
        int i4 = this.bxS;
        int i5 = ((i2 < i4 || i4 < 0 || !(this.Dww || TextUtils.equals(this.hm, "open_ad"))) && CJ() != 5) ? 0 : 1;
        if (i2 <= this.bxS) {
            tP tPVar = this.Gm;
            if (tPVar != null && tPVar.FQ() != null) {
                i3 = (int) (Math.min(this.bxS, this.Gm.FQ().Tgh() * this.Gm.FQ().EBS()) - i2);
            } else {
                i3 = this.bxS - i2;
            }
        } else {
            i3 = 0;
        }
        com.bytedance.sdk.component.adexpress.cJ.cJ cJVar = this.Eh;
        if (cJVar != null && cJVar.cJ() != null) {
            this.Eh.cJ().Qhi(String.valueOf(i), i5, i3, false);
        }
        com.bytedance.sdk.component.adexpress.cJ.fl<? extends View> flVar = this.aP;
        if (flVar instanceof com.bytedance.sdk.openadsdk.core.ugen.ac.ac) {
            ((com.bytedance.sdk.openadsdk.core.ugen.ac.ac) flVar).Qhi((CharSequence) String.valueOf(i), i5, i3, false);
        }
    }

    public void iMK() {
        tP tPVar = this.Gm;
        if (tPVar == null || tPVar.cJP() == null || this.Gm.cJP().Qhi() == null) {
            return;
        }
        this.Gm.cJP().Qhi().fl(getVideoProgress());
    }

    public void setVastVideoHelper(VastBannerBackupView vastBannerBackupView) {
        this.VnT = vastBannerBackupView;
    }

    public boolean pA() {
        return this.FQ.get();
    }

    public void cJ(int i, String str) {
        NFd hpZ;
        com.bytedance.sdk.component.adexpress.cJ.fl<? extends View> flVar = this.aP;
        if (flVar == null || !(flVar instanceof kYc) || (hpZ = ((kYc) flVar).hpZ()) == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("time", i);
            jSONObject.put("flag", str);
            hpZ.Qhi("onVideoPaused", jSONObject);
        } catch (JSONException unused) {
        }
    }
}
