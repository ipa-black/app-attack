package com.bytedance.sdk.openadsdk.apiImpl.feed;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.CJ.kYc;
import com.bytedance.sdk.component.fl.zc;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGImageItem;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGMediaView;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoAdListener;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoMediaView;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.cJ.ac;
import com.bytedance.sdk.openadsdk.core.model.hpZ;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.utils.zn;
import java.lang.ref.WeakReference;
import java.util.List;
/* compiled from: PAGExtraFuncationHelper.java */
/* loaded from: classes2.dex */
public class Qhi {
    private boolean ABk = false;
    private boolean CJ;
    private com.bytedance.sdk.openadsdk.core.cJ.Qhi Gm;
    protected final tP Qhi;
    private com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress.cJ ROR;
    private PAGMediaView Sf;
    private cJ Tgh;
    private PAGMediaView WAv;
    private final String ac;
    private final Context cJ;
    private WeakReference<NativeVideoTsView> fl;
    private NativeExpressView hm;
    private WeakReference<com.bytedance.sdk.openadsdk.core.ROR.ROR> iMK;
    private com.bytedance.sdk.openadsdk.core.cJ.cJ zc;

    public Qhi(Context context, tP tPVar, String str) {
        this.cJ = context;
        this.Qhi = tPVar;
        this.ac = str;
    }

    public void Qhi(cJ cJVar) {
        this.Tgh = cJVar;
    }

    public void Qhi(com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress.cJ cJVar) {
        this.ROR = cJVar;
    }

    public void Qhi(NativeVideoTsView nativeVideoTsView) {
        this.fl = new WeakReference<>(nativeVideoTsView);
    }

    public void Qhi(boolean z) {
        this.CJ = z;
    }

    public PAGMediaView Qhi() {
        return this.Sf;
    }

    public NativeExpressView cJ() {
        return this.hm;
    }

    public void Qhi(com.bytedance.sdk.openadsdk.core.cJ.Qhi qhi) {
        this.Gm = qhi;
    }

    public PAGImageItem ac() {
        tP tPVar = this.Qhi;
        if (tPVar == null || tPVar.dIT() == null) {
            return null;
        }
        return new PAGImageItem(this.Qhi.dIT().ac(), this.Qhi.dIT().cJ(), this.Qhi.dIT().Qhi(), (float) this.Qhi.dIT().CJ());
    }

    public String CJ() {
        tP tPVar = this.Qhi;
        if (tPVar != null) {
            return tPVar.dVA();
        }
        return null;
    }

    public String fl() {
        tP tPVar = this.Qhi;
        if (tPVar != null) {
            return tPVar.zjb();
        }
        return null;
    }

    public String Tgh() {
        tP tPVar = this.Qhi;
        if (tPVar != null) {
            return tPVar.ots();
        }
        return null;
    }

    public void Qhi(com.bytedance.sdk.openadsdk.core.cJ.cJ cJVar) {
        this.zc = cJVar;
    }

    public PAGMediaView ROR() {
        PAGMediaView hm;
        com.bytedance.sdk.openadsdk.utils.cJ.Qhi(this.Qhi);
        if (this.Qhi.EBS() == 2) {
            hm = pA();
            Qhi(hm);
        } else {
            hm = hm();
        }
        if (hm != null) {
            hm.setMrcTrackerKey(com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh.cJ(this.Qhi));
        } else {
            hm = new PAGMediaView(this.cJ) { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.Qhi.1
                @Override // android.view.ViewGroup, android.view.View
                protected void onAttachedToWindow() {
                    super.onAttachedToWindow();
                    com.bytedance.sdk.openadsdk.utils.ac.Qhi(this, Qhi.this.Qhi);
                }
            };
        }
        if (hm instanceof PAGVideoMediaView) {
            ((PAGVideoMediaView) hm).setMaterialMeta(this.Qhi);
        }
        this.WAv = hm;
        return hm;
    }

    public PAGMediaView Sf() {
        return this.WAv;
    }

    private String iMK() {
        hpZ hpz;
        List<hpZ> cjC = this.Qhi.cjC();
        if (cjC.isEmpty() || (hpz = cjC.get(0)) == null) {
            return null;
        }
        return hpz.Qhi();
    }

    private void Qhi(final PAGMediaView pAGMediaView) {
        if (pAGMediaView == null) {
            return;
        }
        try {
            String iMK = iMK();
            if (TextUtils.isEmpty(iMK)) {
                return;
            }
            com.bytedance.sdk.openadsdk.ROR.fl.Qhi(iMK).Qhi(200).cJ(200).fl(zn.CJ(HzH.Qhi())).CJ(zn.ac(HzH.Qhi())).ac(2).Qhi(new com.bytedance.sdk.component.fl.hm() { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.Qhi.3
                @Override // com.bytedance.sdk.component.fl.hm
                public Bitmap Qhi(Bitmap bitmap) {
                    return kYc.Qhi(HzH.Qhi(), bitmap, 25);
                }
            }).Qhi(new com.bytedance.sdk.openadsdk.ROR.cJ(this.Qhi, iMK, new com.bytedance.sdk.component.fl.HzH<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.Qhi.2
                @Override // com.bytedance.sdk.component.fl.HzH
                public void Qhi(int i, String str, Throwable th) {
                }

                @Override // com.bytedance.sdk.component.fl.HzH
                public void Qhi(zc<Bitmap> zcVar) {
                    if (zcVar == null || zcVar.cJ() == null || zcVar.ac() == null) {
                        return;
                    }
                    pAGMediaView.setBackground(new BitmapDrawable(zcVar.cJ()));
                }
            }));
        } catch (Exception unused) {
        }
    }

    private PAGMediaView pA() {
        if (tP.fl(this.Qhi)) {
            com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress.cJ cJVar = this.ROR;
            if (cJVar == null || !(cJVar instanceof com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress.Qhi)) {
                return null;
            }
            NativeExpressVideoView nativeExpressVideoView = (NativeExpressVideoView) cJVar.CJ();
            nativeExpressVideoView.setTag(520093762, Boolean.TRUE);
            if (!this.ABk) {
                this.ROR.fl();
            }
            this.ABk = true;
            return Qhi(nativeExpressVideoView);
        }
        com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress.cJ cJVar2 = this.ROR;
        if (cJVar2 != null) {
            NativeExpressView CJ = cJVar2.CJ();
            CJ.setTag(520093762, Boolean.TRUE);
            if (!this.ABk) {
                this.ROR.fl();
            }
            this.ABk = true;
            return Qhi(CJ);
        }
        return null;
    }

    public PAGMediaView hm() {
        if (tP.fl(this.Qhi)) {
            cJ cJVar = this.Tgh;
            if (cJVar != null) {
                View fl = cJVar.fl();
                if (fl != null) {
                    if (fl.getParent() instanceof ViewGroup) {
                        ((ViewGroup) fl.getParent()).removeView(fl);
                    }
                    PAGMediaView pAGMediaView = this.Sf;
                    if (pAGMediaView != null) {
                        pAGMediaView.setOnClickListener(null);
                        this.Sf.setOnTouchListener(null);
                    }
                    PAGVideoMediaView pAGVideoMediaView = new PAGVideoMediaView(this.cJ, fl, this);
                    pAGVideoMediaView.setTag(520093762, Boolean.TRUE);
                    if (this.Gm != null && com.bytedance.sdk.openadsdk.core.settings.HzH.YD().CJ(String.valueOf(this.Qhi.Hy()))) {
                        pAGVideoMediaView.setOnClickListener(this.Gm);
                        pAGVideoMediaView.setOnTouchListener(this.Gm);
                    } else {
                        com.bytedance.sdk.openadsdk.core.cJ.ac acVar = new com.bytedance.sdk.openadsdk.core.cJ.ac() { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.Qhi.4
                            /* JADX INFO: Access modifiers changed from: protected */
                            @Override // com.bytedance.sdk.openadsdk.core.cJ.ac
                            public void Qhi(View view, float f2, float f3, float f4, float f5, SparseArray<ac.Qhi> sparseArray, boolean z) {
                                try {
                                    ((PAGVideoMediaView) view).handleInterruptVideo();
                                } catch (Exception unused) {
                                }
                            }
                        };
                        pAGVideoMediaView.setOnClickListener(acVar);
                        pAGVideoMediaView.setOnTouchListener(acVar);
                    }
                    this.Sf = pAGVideoMediaView;
                    pAGVideoMediaView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                    return pAGVideoMediaView;
                }
                ApmHelper.reportCustomError("adVideoView null", "getMediaView return null", new RuntimeException());
                return null;
            }
            ApmHelper.reportCustomError("mPAGFeedVideoAdImpl null", "getMediaView return null", new RuntimeException());
            return null;
        }
        List<hpZ> cjC = this.Qhi.cjC();
        if (cjC != null && !cjC.isEmpty()) {
            ImageView imageView = new ImageView(this.cJ);
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            hpZ hpz = cjC.get(0);
            if (hpz != null) {
                com.bytedance.sdk.openadsdk.ROR.fl.Qhi(hpz).ac(2).Qhi(com.bytedance.sdk.openadsdk.ROR.ac.Qhi(this.Qhi, hpz.Qhi(), imageView));
            }
            PAGMediaView Qhi = Qhi(imageView);
            if (this.Gm != null && com.bytedance.sdk.openadsdk.core.settings.HzH.YD().CJ(String.valueOf(this.Qhi.Hy()))) {
                Qhi.setOnClickListener(this.Gm);
                Qhi.setOnTouchListener(this.Gm);
            } else {
                Qhi.setOnClickListener(null);
                Qhi.setOnTouchListener(null);
            }
            Qhi.setTag(520093762, Boolean.TRUE);
            PAGMediaView pAGMediaView2 = this.Sf;
            if (pAGMediaView2 != null) {
                pAGMediaView2.setOnClickListener(null);
                this.Sf.setOnTouchListener(null);
            }
            this.Sf = Qhi;
            return Qhi;
        }
        ApmHelper.reportCustomError("images empty", "getMediaView return null", new RuntimeException());
        return null;
    }

    private PAGMediaView Qhi(final View view) {
        int i;
        if (view == null) {
            return null;
        }
        if (view.getParent() instanceof ViewGroup) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        NativeExpressView nativeExpressView = this.hm;
        if (nativeExpressView != null) {
            nativeExpressView.setClickListener(null);
            this.hm.setClickCreativeListener(null);
        }
        com.bytedance.sdk.openadsdk.core.cJ.cJ cJVar = this.zc;
        if (cJVar != null && (cJVar instanceof com.bytedance.sdk.openadsdk.core.nativeexpress.Sf) && (view instanceof NativeExpressView)) {
            ((NativeExpressView) view).setClickListener((com.bytedance.sdk.openadsdk.core.nativeexpress.Sf) cJVar);
        }
        com.bytedance.sdk.openadsdk.core.cJ.Qhi qhi = this.Gm;
        if (qhi != null && (qhi instanceof com.bytedance.sdk.openadsdk.core.nativeexpress.ROR) && (view instanceof NativeExpressView)) {
            ((NativeExpressView) view).setClickCreativeListener((com.bytedance.sdk.openadsdk.core.nativeexpress.ROR) qhi);
        }
        PAGMediaView pAGMediaView = new PAGMediaView(this.cJ) { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.Qhi.5
            @Override // android.view.View
            public void onWindowFocusChanged(boolean z) {
                super.onWindowFocusChanged(z);
                if (view instanceof NativeExpressView) {
                    return;
                }
                Qhi(z);
            }

            private void Qhi(boolean z) {
                if (this.Qhi != null) {
                    com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh.Qhi(com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh.Qhi(this.Qhi), z ? 4 : 8);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGMediaView
            public void setVideoAdListener(PAGVideoAdListener pAGVideoAdListener) {
                super.setVideoAdListener(pAGVideoAdListener);
                Qhi.this.Qhi(pAGVideoAdListener);
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onAttachedToWindow() {
                super.onAttachedToWindow();
                com.bytedance.sdk.openadsdk.utils.ac.Qhi(this, Qhi.this.Qhi);
            }
        };
        int i2 = -1;
        pAGMediaView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null) {
            i2 = layoutParams.width;
            i = layoutParams.height;
        } else {
            i = -1;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i2, i);
        layoutParams2.gravity = 17;
        pAGMediaView.addView(view, layoutParams2);
        if (view instanceof NativeExpressView) {
            this.hm = (NativeExpressView) view;
        }
        return pAGMediaView;
    }

    public View WAv() {
        if (HzH.Qhi() == null) {
            ABk.Qhi("TTNativeAdImpl", "getAdLogoView mContext == null");
            return null;
        }
        ImageView imageView = new ImageView(HzH.Qhi());
        imageView.setImageResource(MQ.CJ(HzH.Qhi(), "tt_ad_logo_new"));
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.Qhi.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Qhi.this.zc();
            }
        });
        return imageView;
    }

    public View Gm() {
        tP tPVar;
        if (HzH.Qhi() == null || (tPVar = this.Qhi) == null) {
            ABk.Qhi("TTNativeAdImpl", "getAdChoicesView mContext == null");
            return null;
        } else if (tPVar.IC() && this.Qhi.Sf()) {
            ImageView imageView = new ImageView(HzH.Qhi());
            com.bytedance.sdk.openadsdk.iMK.ac.Qhi().Qhi((int) zn.Qhi(HzH.Qhi(), 14.0f, true), imageView, this.Qhi);
            return imageView;
        } else {
            return null;
        }
    }

    public void zc() {
        Context context = this.cJ;
        if (context != null) {
            TTWebsiteActivity.Qhi(context, this.Qhi, this.ac);
        }
    }

    public void Qhi(PAGVideoAdListener pAGVideoAdListener) {
        com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress.cJ cJVar;
        if (this.Qhi.EBS() == 2 && tP.fl(this.Qhi) && (cJVar = this.ROR) != null && (cJVar instanceof com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress.Qhi)) {
            NativeExpressVideoView nativeExpressVideoView = (NativeExpressVideoView) cJVar.CJ();
            if (nativeExpressVideoView != null) {
                nativeExpressVideoView.setVideoAdListener(cJ(pAGVideoAdListener));
                return;
            }
            return;
        }
        cJ cJVar2 = this.Tgh;
        if (cJVar2 != null) {
            cJVar2.Qhi(cJ(pAGVideoAdListener));
        }
    }

    private ac cJ(final PAGVideoAdListener pAGVideoAdListener) {
        return new ac() { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.Qhi.7
            @Override // com.bytedance.sdk.openadsdk.apiImpl.feed.ac
            public void Qhi(int i, int i2) {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoError();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.apiImpl.feed.ac
            public void Qhi(PAGNativeAd pAGNativeAd) {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoAdPlay();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.apiImpl.feed.ac
            public void cJ(PAGNativeAd pAGNativeAd) {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoAdPaused();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.apiImpl.feed.ac
            public void ac(PAGNativeAd pAGNativeAd) {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoAdComplete();
                }
            }
        };
    }

    public void ABk() {
        com.bytedance.sdk.openadsdk.core.ROR.ROR ror;
        WeakReference<com.bytedance.sdk.openadsdk.core.ROR.ROR> weakReference = this.iMK;
        if (weakReference == null || (ror = weakReference.get()) == null) {
            return;
        }
        ror.Qhi(13);
    }

    public void Qhi(com.bytedance.sdk.openadsdk.core.ROR.ROR ror) {
        this.iMK = new WeakReference<>(ror);
    }
}
