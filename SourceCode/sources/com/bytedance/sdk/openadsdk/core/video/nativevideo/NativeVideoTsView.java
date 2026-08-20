package com.bytedance.sdk.openadsdk.core.video.nativevideo;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.bykv.vk.openvk.component.video.api.CJ.fl;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.component.utils.CQU;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.component.utils.hpZ;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.cJ.CJ.cJ.hpZ;
import com.bytedance.sdk.openadsdk.cJ.Sf;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.ROR.ROR;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.customview.PAGRelativeLayout;
import com.bytedance.sdk.openadsdk.core.hm;
import com.bytedance.sdk.openadsdk.core.iMK;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.nativeexpress.kYc;
import com.bytedance.sdk.openadsdk.core.sDy;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.ac;
import com.bytedance.sdk.openadsdk.utils.js;
import com.bytedance.sdk.openadsdk.utils.lG;
import com.bytedance.sdk.openadsdk.utils.zn;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public class NativeVideoTsView extends PAGFrameLayout implements fl.Qhi, CQU.Qhi, ac.Qhi {
    protected int ABk;
    protected boolean CJ;
    private boolean CQU;
    private boolean Dww;
    private boolean Eh;
    private final AtomicBoolean FQ;
    protected boolean Gm;
    private ViewGroup HzH;
    private boolean Jma;
    private String MQ;
    private final boolean NFd;
    private final Runnable PAe;
    protected final tP Qhi;
    protected RelativeLayout ROR;
    protected ImageView Sf;
    public Sf Tgh;
    protected ImageView WAv;
    private long aP;
    protected FrameLayout ac;
    private String bxS;
    protected com.bykv.vk.openvk.component.video.api.CJ.fl cJ;
    private fl.ac es;
    public boolean fl;
    protected ImageView hm;
    private final Context hpZ;
    boolean iMK;
    private boolean ip;
    private final ViewTreeObserver.OnScrollChangedListener jPH;
    private final String js;
    private boolean kYc;
    private boolean lB;
    private long lG;
    public cJ pA;
    private boolean pM;
    private final Handler sDy;
    private boolean tP;
    private final AtomicBoolean xyz;
    private ViewTreeObserver.OnGlobalLayoutListener yN;
    protected String zc;
    private View zn;
    private static final Integer qMt = 0;
    private static final Integer EBS = 1;

    /* loaded from: classes2.dex */
    public interface Qhi {
        void Qhi(View view, int i);
    }

    /* loaded from: classes2.dex */
    public interface cJ {
        void Qhi(boolean z, long j, long j2, long j3, boolean z2);
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
    public void cJ(long j, int i) {
    }

    public void setAdCreativeClickListener(Qhi qhi) {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.cJ;
        if (flVar != null) {
            ((ac) flVar).Qhi(qhi);
        }
    }

    public void setVideoPlayCallback(com.bytedance.sdk.openadsdk.core.video.nativevideo.cJ cJVar) {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.cJ;
        if (flVar != null) {
            ((ac) flVar).Qhi(cJVar);
        }
    }

    public void setControllerStatusCallBack(cJ cJVar) {
        this.pA = cJVar;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
    public void Qhi(long j, int i) {
        fl.ac acVar = this.es;
        if (acVar != null) {
            acVar.j_();
        }
    }

    private void CJ() {
        Qhi(0L, 0);
        this.es = null;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
    public void Qhi() {
        new Object[]{"embeded_ad", "onTimeOut、、、、、、、、"};
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
    public void Qhi(long j, long j2) {
        fl.ac acVar = this.es;
        if (acVar != null) {
            acVar.Qhi(j, j2);
        }
    }

    public NativeVideoTsView(Context context, tP tPVar, boolean z, Sf sf) {
        this(context, tPVar, z, "embeded_ad", false, false, sf);
    }

    public NativeVideoTsView(Context context, tP tPVar, String str, boolean z, boolean z2, Sf sf) {
        this(context, tPVar, false, str, z, z2, sf);
    }

    public NativeVideoTsView(Context context, tP tPVar, Sf sf) {
        this(context, tPVar, false, sf);
    }

    public NativeVideoTsView(Context context, tP tPVar, boolean z, String str, boolean z2, boolean z3, Sf sf) {
        super(context);
        this.kYc = true;
        this.CJ = true;
        this.tP = false;
        this.fl = false;
        this.Dww = true;
        this.CQU = false;
        this.pM = true;
        this.Gm = true;
        this.zc = "embeded_ad";
        this.ABk = 50;
        this.Eh = true;
        this.NFd = false;
        this.sDy = new CQU(iMK.cJ().getLooper(), this);
        this.Jma = false;
        this.js = Build.MODEL;
        this.iMK = false;
        this.FQ = new AtomicBoolean(false);
        this.PAe = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.4
            @Override // java.lang.Runnable
            public void run() {
                NativeVideoTsView nativeVideoTsView = NativeVideoTsView.this;
                nativeVideoTsView.Qhi(nativeVideoTsView.lB, NativeVideoTsView.qMt.intValue());
            }
        };
        this.ip = true;
        this.xyz = new AtomicBoolean(false);
        this.jPH = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.6
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                NativeVideoTsView.this.HzH();
            }
        };
        try {
            if (tPVar.rP()) {
                this.bxS = CacheDirFactory.getICacheDir(0).cJ();
            }
        } catch (Throwable unused) {
        }
        if (sf != null) {
            this.Tgh = sf;
        }
        this.zc = str;
        this.hpZ = context;
        this.Qhi = tPVar;
        this.tP = z;
        setContentDescription("NativeVideoTsView");
        this.CQU = z2;
        this.pM = z3;
        cJ();
        fl();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void cJ() {
        tP tPVar = this.Qhi;
        if (tPVar == null) {
            return;
        }
        int Hy = tPVar.Hy();
        int cJ2 = HzH.CJ().cJ(Hy);
        int ac = hpZ.ac(HzH.Qhi());
        if (cJ2 == 1) {
            this.kYc = js.CJ(ac);
        } else if (cJ2 == 2) {
            this.kYc = js.fl(ac) || js.CJ(ac) || js.Tgh(ac);
        } else if (cJ2 == 3) {
            this.kYc = false;
        } else if (cJ2 == 4) {
            this.iMK = true;
        } else if (cJ2 == 5) {
            this.kYc = js.CJ(ac) || js.Tgh(ac);
        }
        if (!this.tP) {
            if (!this.fl || !kYc.cJ(this.zc)) {
                this.CJ = HzH.CJ().ac(String.valueOf(Hy));
            }
        } else {
            this.CJ = false;
        }
        if ("open_ad".equals(this.zc)) {
            this.kYc = true;
            this.CJ = true;
        }
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.cJ;
        if (flVar != null) {
            flVar.CJ(this.kYc);
        }
        this.fl = true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        cJ cJVar;
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar;
        if (!this.tP && (cJVar = this.pA) != null && (flVar = this.cJ) != null) {
            cJVar.Qhi(flVar.pA(), this.cJ.Sf(), this.cJ.hm(), this.cJ.fl(), this.kYc);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    private View Qhi(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        new FrameLayout.LayoutParams(-1, -1).gravity = 17;
        frameLayout.setVisibility(8);
        this.HzH = frameLayout;
        FrameLayout frameLayout2 = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        frameLayout2.setLayoutParams(layoutParams);
        frameLayout.addView(frameLayout2);
        this.ac = frameLayout2;
        View view = new View(context);
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        frameLayout.addView(view);
        this.zn = view;
        return frameLayout;
    }

    private RelativeLayout cJ(Context context) {
        PAGRelativeLayout pAGRelativeLayout = new PAGRelativeLayout(context);
        pAGRelativeLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        pAGRelativeLayout.setVisibility(8);
        PAGImageView pAGImageView = new PAGImageView(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        pAGImageView.setLayoutParams(layoutParams);
        pAGImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.Sf = pAGImageView;
        PAGImageView pAGImageView2 = new PAGImageView(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        pAGImageView2.setLayoutParams(layoutParams2);
        pAGImageView2.setVisibility(8);
        pAGImageView2.setBackground(MQ.ac(context, "tt_new_play_video"));
        this.WAv = pAGImageView2;
        pAGRelativeLayout.addView(pAGImageView);
        pAGRelativeLayout.addView(pAGImageView2);
        return pAGRelativeLayout;
    }

    private void fl() {
        addView(Qhi(this.hpZ));
        kYc();
        addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                NativeVideoTsView.this.HzH();
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                NativeVideoTsView.this.HzH();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void HzH() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Handler handler = this.sDy;
        if (handler == null || elapsedRealtime - this.lG <= 500) {
            return;
        }
        this.lG = elapsedRealtime;
        handler.sendEmptyMessageDelayed(1, 500L);
    }

    public void setVideoAdClickListenerTTNativeAd(PAGNativeAd pAGNativeAd) {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.cJ;
        if (flVar != null) {
            ((ac) flVar).Qhi(pAGNativeAd);
        }
    }

    public void ROR() {
        View view;
        if (this.hpZ == null || (view = this.zn) == null || view.getParent() == null || this.Qhi == null || this.ROR != null) {
            return;
        }
        ViewParent parent = this.zn.getParent();
        RelativeLayout cJ2 = cJ(this.hpZ);
        if (parent != null && (parent instanceof ViewGroup)) {
            Qhi(cJ2, (ViewGroup) parent, this.zn);
        }
        this.ROR = cJ2;
        if (this.Gm) {
            zn.Qhi((View) this.WAv, 0);
        }
        if (this.Qhi.FQ() != null && this.Qhi.FQ().WAv() != null) {
            com.bytedance.sdk.openadsdk.iMK.ac.Qhi().Qhi(this.Qhi.FQ().WAv(), this.Qhi.FQ().ac(), this.Qhi.FQ().cJ(), this.Sf, this.Qhi);
        }
        ImageView imageView = this.WAv;
        if (imageView != null) {
            imageView.setClickable(true);
            this.WAv.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    NativeVideoTsView.this.ac();
                }
            });
        }
    }

    private void Qhi(View view, ViewGroup viewGroup, View view2) {
        int indexOfChild = viewGroup.indexOfChild(view2);
        viewGroup.removeViewInLayout(view2);
        ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(view, indexOfChild, layoutParams);
        } else {
            viewGroup.addView(view, indexOfChild);
        }
    }

    private void kYc() {
        this.cJ = new ac(this.hpZ, this.ac, this.Qhi, this.zc, !lB(), this.CQU, this.pM, this.Tgh);
        tP();
        if (this.yN == null) {
            this.yN = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.3
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    if (NativeVideoTsView.this.HzH == null || NativeVideoTsView.this.HzH.getViewTreeObserver() == null || NativeVideoTsView.this.cJ == null) {
                        return;
                    }
                    ((ac) NativeVideoTsView.this.cJ).Qhi(NativeVideoTsView.this.HzH.getWidth(), NativeVideoTsView.this.HzH.getHeight());
                    NativeVideoTsView.this.HzH.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    NativeVideoTsView.this.yN = null;
                }
            };
            this.HzH.getViewTreeObserver().addOnGlobalLayoutListener(this.yN);
        }
    }

    public void setVideoAdLoadListener(fl.InterfaceC0165fl interfaceC0165fl) {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.cJ;
        if (flVar != null) {
            flVar.Qhi(interfaceC0165fl);
        }
    }

    public boolean Qhi(long j, boolean z, boolean z2) {
        boolean z3 = false;
        this.HzH.setVisibility(0);
        this.aP = j;
        if (lB()) {
            this.cJ.Qhi(false);
            tP tPVar = this.Qhi;
            if (tPVar != null && tPVar.FQ() != null) {
                com.bytedance.sdk.openadsdk.core.video.Qhi.cJ Qhi2 = tP.Qhi(CacheDirFactory.getICacheDir(this.Qhi.zTC()).ac(), this.Qhi);
                Qhi2.cJ(this.Qhi.HLI());
                Qhi2.Qhi(this.HzH.getWidth());
                Qhi2.cJ(this.HzH.getHeight());
                Qhi2.ac(this.Qhi.EGK());
                Qhi2.Qhi(j);
                Qhi2.Qhi(hm());
                Qhi(Qhi2);
                if (z2) {
                    this.cJ.cJ(Qhi2);
                    return true;
                }
                z3 = this.cJ.Qhi(Qhi2);
            }
            int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            if (((i > 0 && !z && !z2) || (i > 0 && z)) && this.cJ != null) {
                hpZ.Qhi qhi = new hpZ.Qhi();
                qhi.Qhi(this.cJ.fl());
                qhi.ac(this.cJ.Sf());
                qhi.cJ(this.cJ.Tgh());
                com.bytedance.sdk.openadsdk.cJ.CJ.Qhi.Qhi.cJ(this.cJ.ABk(), qhi);
            }
            return z3;
        }
        return true;
    }

    private void tP() {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.cJ;
        if (flVar == null) {
            return;
        }
        flVar.CJ(this.kYc);
        ((ac) this.cJ).Qhi((ac.Qhi) this);
        this.cJ.Qhi(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        MQ();
        getViewTreeObserver().addOnScrollChangedListener(this.jPH);
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        MQ();
    }

    private void MQ() {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.cJ;
        if (flVar == null) {
            kYc();
        } else if ((flVar instanceof ac) && !lB()) {
            ((ac) this.cJ).kYc();
        }
        if (this.cJ == null || !this.FQ.get()) {
            return;
        }
        this.FQ.set(false);
        cJ();
        if (Sf()) {
            zn.Qhi((View) this.ROR, 8);
            ImageView imageView = this.hm;
            if (imageView != null) {
                zn.Qhi((View) imageView, 8);
            }
            tP tPVar = this.Qhi;
            if (tPVar != null && tPVar.FQ() != null) {
                com.bytedance.sdk.openadsdk.core.video.Qhi.cJ Qhi2 = tP.Qhi(CacheDirFactory.getICacheDir(this.Qhi.zTC()).ac(), this.Qhi);
                Qhi2.cJ(this.Qhi.HLI());
                Qhi2.Qhi(this.HzH.getWidth());
                Qhi2.cJ(this.HzH.getHeight());
                Qhi2.ac(this.Qhi.EGK());
                Qhi2.Qhi(0L);
                Qhi2.Qhi(hm());
                Qhi(Qhi2);
                this.cJ.Qhi(Qhi2);
                this.cJ.ac(false);
                return;
            }
            ABk.Qhi("NativeVideoTsView", "attachTask materialMeta.getVideo() is null !!");
        } else if (this.cJ.pA()) {
            this.cJ.pA();
            cJ(true);
        } else {
            ROR();
            zn.Qhi((View) this.ROR, 0);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        qMt();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnScrollChangedListener(this.jPH);
        }
        ViewGroup viewGroup = this.HzH;
        if (viewGroup == null || this.yN == null) {
            return;
        }
        ViewTreeObserver viewTreeObserver2 = viewGroup.getViewTreeObserver();
        if (viewTreeObserver2.isAlive()) {
            viewTreeObserver2.removeOnGlobalLayoutListener(this.yN);
            this.yN = null;
        }
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        qMt();
    }

    private void qMt() {
        this.pA = null;
        if ((this.cJ instanceof ac) && !lB()) {
            ((ac) this.cJ).lG();
        }
        WAv();
        Qhi(false);
        EBS();
    }

    private void EBS() {
        if (!this.FQ.get()) {
            this.FQ.set(true);
            com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.cJ;
            if (flVar != null) {
                flVar.Qhi(true, 3);
            }
        }
        this.xyz.set(false);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i == 4 || i == 8) {
            EBS();
        }
    }

    @Override // com.bytedance.sdk.component.utils.CQU.Qhi
    public void Qhi(Message message) {
        if (message.what == 1) {
            bxS();
        }
    }

    private void bxS() {
        this.lB = Gm();
        lG.Qhi(this.PAe);
    }

    private boolean Dww() {
        tP tPVar = this.Qhi;
        if (tPVar == null) {
            return false;
        }
        return tPVar.smJ();
    }

    private boolean CQU() {
        if (lB() || !Dww()) {
            return false;
        }
        return com.bytedance.sdk.openadsdk.multipro.CJ.cJ.Qhi("sp_multi_native_video_data", "key_video_is_from_detail_page", false) || com.bytedance.sdk.openadsdk.multipro.CJ.cJ.Qhi("sp_multi_native_video_data", "key_video_isfromvideodetailpage", false);
    }

    private void pM() {
        if (lB() || !Dww()) {
            return;
        }
        com.bytedance.sdk.openadsdk.multipro.CJ.cJ.Qhi("sp_multi_native_video_data", "key_video_isfromvideodetailpage", Boolean.FALSE);
        com.bytedance.sdk.openadsdk.multipro.CJ.cJ.Qhi("sp_multi_native_video_data", "key_video_is_from_detail_page", Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(boolean z, int i) {
        if (this.Qhi == null || this.cJ == null) {
            return;
        }
        boolean CQU = CQU();
        pM();
        if (CQU && this.cJ.pA()) {
            this.cJ.pA();
            cJ(true);
            CJ();
        } else if (z && this.Dww && !this.cJ.pA() && !this.cJ.Gm()) {
            if (this.cJ.zc() != null && this.cJ.zc().ROR()) {
                if (this.kYc || i == 1) {
                    com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.cJ;
                    if (flVar != null) {
                        setIsQuiet(flVar.iMK());
                    }
                    if ("ALP-AL00".equals(this.js)) {
                        this.cJ.cJ();
                    } else {
                        if (!hm.cJ().pA()) {
                            CQU = true;
                        }
                        ((ac) this.cJ).Sf(CQU);
                    }
                    Qhi(false);
                    fl.ac acVar = this.es;
                    if (acVar != null) {
                        acVar.i_();
                    }
                }
            } else if (this.kYc && this.cJ.zc() == null) {
                if (!this.FQ.get()) {
                    this.FQ.set(true);
                }
                this.xyz.set(false);
                MQ();
            }
        } else if (this.cJ.zc() == null || !this.cJ.zc().Tgh()) {
        } else {
            this.cJ.Qhi();
            Qhi(true);
            fl.ac acVar2 = this.es;
            if (acVar2 != null) {
                acVar2.h_();
            }
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar;
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar2;
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar3;
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar4;
        if (!"open_ad".equals(this.zc)) {
            this.Dww = z;
            super.onWindowFocusChanged(z);
            aP();
            if (CQU() && (flVar4 = this.cJ) != null && flVar4.pA()) {
                pM();
                zn.Qhi((View) this.ROR, 8);
                cJ(true);
                CJ();
                return;
            }
            cJ();
            if (lB() || !Sf() || (flVar2 = this.cJ) == null || flVar2.Gm()) {
                if (Sf()) {
                    return;
                }
                if (!z && (flVar = this.cJ) != null && flVar.zc() != null && this.cJ.zc().Tgh()) {
                    Eh();
                    Qhi(false, qMt.intValue());
                    return;
                } else if (z) {
                    this.sDy.obtainMessage(1).sendToTarget();
                    return;
                } else {
                    return;
                }
            } else if (this.sDy != null) {
                if (z && (flVar3 = this.cJ) != null && !flVar3.pA()) {
                    this.sDy.obtainMessage(1).sendToTarget();
                    return;
                }
                Eh();
                Qhi(false, qMt.intValue());
                return;
            } else {
                return;
            }
        }
        Eh();
    }

    private void Eh() {
        this.sDy.removeMessages(1);
        iMK.ac().removeCallbacks(this.PAe);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar;
        tP tPVar;
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar2;
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar3;
        super.onWindowVisibilityChanged(i);
        aP();
        if (this.ip) {
            this.ip = i == 0;
        }
        if (CQU() && (flVar3 = this.cJ) != null && flVar3.pA()) {
            pM();
            zn.Qhi((View) this.ROR, 8);
            cJ(true);
            CJ();
            return;
        }
        cJ();
        if (lB() || !Sf() || (flVar = this.cJ) == null || flVar.Gm() || (tPVar = this.Qhi) == null) {
            return;
        }
        if (this.Eh && tPVar.FQ() != null) {
            this.Qhi.FQ();
            com.bytedance.sdk.openadsdk.core.video.Qhi.cJ Qhi2 = tP.Qhi(CacheDirFactory.getICacheDir(this.Qhi.zTC()).ac(), this.Qhi);
            Qhi2.cJ(this.Qhi.HLI());
            Qhi2.Qhi(this.HzH.getWidth());
            Qhi2.cJ(this.HzH.getHeight());
            Qhi2.ac(this.Qhi.EGK());
            Qhi2.Qhi(this.aP);
            Qhi2.Qhi(hm());
            Qhi(Qhi2);
            this.cJ.Qhi(Qhi2);
            this.Eh = false;
            zn.Qhi((View) this.ROR, 8);
        } else {
            ABk.Qhi("NativeVideoTsView", "attachTask materialMeta.getVideo() is null !!");
        }
        if (i != 0 || this.sDy == null || (flVar2 = this.cJ) == null || flVar2.pA()) {
            return;
        }
        this.sDy.obtainMessage(1).sendToTarget();
    }

    private void aP() {
        if (this.cJ == null || lB()) {
            return;
        }
        boolean z = false;
        if (!Dww() || com.bytedance.sdk.openadsdk.multipro.CJ.cJ.Qhi("sp_multi_native_video_data", "key_video_is_update_flag", false)) {
            long Sf = this.cJ.Sf() + this.cJ.Tgh();
            long Sf2 = this.cJ.Sf();
            long j = 0;
            if (Dww()) {
                z = com.bytedance.sdk.openadsdk.multipro.CJ.cJ.Qhi("sp_multi_native_video_data", "key_native_video_complete", false);
                j = com.bytedance.sdk.openadsdk.multipro.CJ.cJ.Qhi("sp_multi_native_video_data", "key_video_current_play_position", 0L);
                Sf = com.bytedance.sdk.openadsdk.multipro.CJ.cJ.Qhi("sp_multi_native_video_data", "key_video_total_play_duration", this.cJ.Sf() + this.cJ.Tgh());
                Sf2 = com.bytedance.sdk.openadsdk.multipro.CJ.cJ.Qhi("sp_multi_native_video_data", "key_video_duration", this.cJ.Sf());
                com.bytedance.sdk.openadsdk.multipro.CJ.cJ.Qhi("sp_multi_native_video_data", "key_video_is_update_flag", Boolean.FALSE);
                this.cJ.ac(z);
                this.cJ.Qhi(j);
                this.cJ.cJ(Sf);
                this.cJ.ac(Sf2);
            }
            ABk.Qhi("MultiProcess", "onResumeFeedNativeVideoControllerData-isComplete=" + z + ",position=" + j + ",totalPlayDuration=" + Sf + ",duration=" + Sf2);
        }
    }

    public com.bykv.vk.openvk.component.video.api.CJ.fl getNativeVideoController() {
        return this.cJ;
    }

    public boolean Sf() {
        return this.kYc;
    }

    public void setIsAutoPlay(boolean z) {
        if (this.Jma) {
            return;
        }
        int cJ2 = HzH.CJ().cJ(this.Qhi.Hy());
        if (z && cJ2 != 4 && (!com.bytedance.sdk.component.utils.hpZ.fl(this.hpZ) ? !(!com.bytedance.sdk.component.utils.hpZ.Tgh(this.hpZ) ? com.bytedance.sdk.component.utils.hpZ.CJ(this.hpZ) : NFd() || sDy()) : !NFd())) {
            z = false;
        }
        this.kYc = z;
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.cJ;
        if (flVar != null) {
            flVar.CJ(z);
        }
        if (!this.kYc) {
            ROR();
            RelativeLayout relativeLayout = this.ROR;
            if (relativeLayout != null) {
                zn.Qhi((View) relativeLayout, 0);
                tP tPVar = this.Qhi;
                if (tPVar != null && tPVar.FQ() != null) {
                    com.bytedance.sdk.openadsdk.iMK.ac.Qhi().Qhi(this.Qhi.FQ().WAv(), this.Qhi.FQ().ac(), this.Qhi.FQ().cJ(), this.Sf, this.Qhi);
                }
            }
        } else {
            zn.Qhi((View) this.ROR, 8);
        }
        this.Jma = true;
    }

    private boolean NFd() {
        return 2 == HzH.CJ().cJ(this.Qhi.Hy());
    }

    private boolean sDy() {
        return 5 == HzH.CJ().cJ(this.Qhi.Hy());
    }

    public boolean hm() {
        return this.CJ;
    }

    public void setIsQuiet(boolean z) {
        this.CJ = z;
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.cJ;
        if (flVar != null) {
            flVar.cJ(z);
        }
    }

    private boolean lB() {
        return this.tP;
    }

    public void setVideoAdInteractionListener(fl.ac acVar) {
        this.es = acVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.ac.Qhi
    public void Tgh() {
        fl.ac acVar = this.es;
        if (acVar != null) {
            acVar.e_();
        }
    }

    public void setNeedNativeVideoPlayBtnVisible(boolean z) {
        this.Gm = z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.ac.Qhi
    public void Qhi(int i) {
        cJ();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void ac() {
        if (zc()) {
            return;
        }
        iMK();
    }

    protected void Qhi(boolean z) {
        if (this.hm == null) {
            this.hm = new ImageView(getContext());
            if (hm.cJ().hpZ() != null) {
                this.hm.setImageBitmap(hm.cJ().hpZ());
            } else {
                this.hm.setImageResource(MQ.CJ(HzH.Qhi(), "tt_new_play_video"));
            }
            this.hm.setScaleType(ImageView.ScaleType.FIT_XY);
            int cJ2 = zn.cJ(getContext(), this.ABk);
            int cJ3 = zn.cJ(getContext(), 10.0f);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(cJ2, cJ2);
            layoutParams.gravity = 17;
            layoutParams.rightMargin = cJ3;
            layoutParams.bottomMargin = cJ3;
            this.HzH.addView(this.hm, layoutParams);
            this.hm.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    NativeVideoTsView.this.iMK();
                }
            });
        }
        if (z) {
            this.hm.setVisibility(0);
        } else {
            this.hm.setVisibility(8);
        }
    }

    public void cJ(boolean z) {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.cJ;
        if (flVar != null) {
            flVar.ac(z);
            com.bykv.vk.openvk.component.video.api.CJ.ac ABk = this.cJ.ABk();
            if (ABk != null) {
                ABk.cJ();
                View ac = ABk.ac();
                if (ac != null) {
                    if (ac.getParent() != null) {
                        ((ViewGroup) ac.getParent()).removeView(ac);
                    }
                    ac.setVisibility(0);
                    addView(ac);
                    ABk.Qhi(this.Qhi, new WeakReference<>(this.hpZ), false);
                }
            }
        }
    }

    public void WAv() {
        com.bykv.vk.openvk.component.video.api.CJ.ac ABk;
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.cJ;
        if (flVar == null || (ABk = flVar.ABk()) == null) {
            return;
        }
        ABk.Qhi();
        View ac = ABk.ac();
        if (ac != null) {
            ac.setVisibility(8);
            if (ac.getParent() != null) {
                ((ViewGroup) ac.getParent()).removeView(ac);
            }
        }
    }

    private void lG() {
        zn.fl(this.hm);
        zn.fl(this.ROR);
    }

    public void setVideoCacheUrl(String str) {
        this.MQ = str;
    }

    boolean Gm() {
        return sDy.Qhi(this, 50, kYc.cJ(this.zc) ? 1 : 5);
    }

    public boolean zc() {
        boolean z = false;
        if (com.bytedance.sdk.component.utils.hpZ.ac(HzH.Qhi()) == 0) {
            return false;
        }
        if (this.cJ.zc() != null && this.cJ.zc().Tgh()) {
            Qhi(false, qMt.intValue());
            Handler handler = this.sDy;
            z = true;
            if (handler != null) {
                handler.removeMessages(1);
            }
        }
        return z;
    }

    public void ABk() {
        if (getNativeVideoController() == null || !(getNativeVideoController() instanceof ac)) {
            return;
        }
        ac acVar = (ac) getNativeVideoController();
        acVar.Qhi(acVar.ABk(), this);
    }

    public void iMK() {
        if (com.bytedance.sdk.component.utils.hpZ.ac(HzH.Qhi()) != 0 && Gm()) {
            if (this.cJ.zc() != null && this.cJ.zc().ROR()) {
                Qhi(true, EBS.intValue());
                cJ();
                Handler handler = this.sDy;
                if (handler != null) {
                    handler.sendEmptyMessageDelayed(1, 500L);
                }
            } else if (Sf() || this.xyz.get()) {
            } else {
                this.xyz.set(true);
                lG();
                tP tPVar = this.Qhi;
                if (tPVar != null && tPVar.FQ() != null) {
                    lG();
                    this.Qhi.FQ();
                    com.bytedance.sdk.openadsdk.core.video.Qhi.cJ Qhi2 = tP.Qhi(CacheDirFactory.getICacheDir(this.Qhi.zTC()).ac(), this.Qhi);
                    Qhi2.cJ(this.Qhi.HLI());
                    Qhi2.Qhi(this.HzH.getWidth());
                    Qhi2.cJ(this.HzH.getHeight());
                    Qhi2.ac(this.Qhi.EGK());
                    Qhi2.Qhi(this.aP);
                    Qhi2.Qhi(hm());
                    Qhi2.Qhi(CacheDirFactory.getICacheDir(this.Qhi.zTC()).ac());
                    Qhi(Qhi2);
                    this.cJ.Qhi(Qhi2);
                }
                Handler handler2 = this.sDy;
                if (handler2 != null) {
                    handler2.sendEmptyMessageDelayed(1, 500L);
                }
                Qhi(false);
            }
        }
    }

    public double getCurrentPlayTime() {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.cJ;
        if (flVar != null) {
            return (flVar.fl() * 1.0d) / 1000.0d;
        }
        return 0.0d;
    }

    public void pA() {
        tP tPVar = this.Qhi;
        if (tPVar == null || tPVar.cJP() == null) {
            return;
        }
        this.Qhi.cJP().pA();
        this.Qhi.cJP().Qhi().fl(this.aP);
    }

    public ROR Qhi(List<Pair<View, FriendlyObstructionPurpose>> list) {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.cJ;
        if (flVar instanceof ac) {
            return ((ac) flVar).Qhi(this, list);
        }
        return null;
    }

    private void Qhi(com.bykv.vk.openvk.component.video.api.ac.ac acVar) {
        try {
            if (this.Qhi.rP()) {
                acVar.Qhi(this.bxS);
            }
        } catch (Throwable unused) {
        }
    }
}
