package com.bytedance.sdk.openadsdk.core.bannerexpress;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.bykv.vk.openvk.component.video.api.CJ.fl;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.openadsdk.activity.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.model.pA;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.iMK;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.core.widget.PAGCloseButton;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.RatioFrameLayout;
import com.bytedance.sdk.openadsdk.utils.zn;
import com.google.android.material.badge.BadgeDrawable;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class VastBannerBackupView extends BackupView implements fl.ac, fl.InterfaceC0165fl {
    private NativeExpressView ABk;
    private String HzH;
    public boolean Qhi;
    private ImageView hpZ;
    private com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.fl iMK;
    private long kYc;
    private NativeVideoTsView pA;
    private PAGBannerAdWrapperListener tP;

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.ac
    public void e_() {
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.ac
    public void h_() {
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.ac
    public void i_() {
    }

    public VastBannerBackupView(Context context) {
        super(context);
        this.Qhi = true;
        this.cJ = context;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView
    protected void Qhi(View view, int i, pA pAVar) {
        NativeExpressView nativeExpressView = this.ABk;
        if (nativeExpressView != null) {
            nativeExpressView.Qhi(view, i, pAVar);
            NativeVideoTsView nativeVideoTsView = this.pA;
            if (nativeVideoTsView == null || !(nativeVideoTsView.getNativeVideoController() instanceof com.bytedance.sdk.openadsdk.core.video.nativevideo.ac)) {
                return;
            }
            ((com.bytedance.sdk.openadsdk.core.video.nativevideo.ac) this.pA.getNativeVideoController()).Jma();
        }
    }

    public void setClosedListenerKey(String str) {
        this.HzH = str;
    }

    public void Qhi(tP tPVar, NativeExpressView nativeExpressView, com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.fl flVar) {
        setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.ac = tPVar;
        this.ABk = nativeExpressView;
        this.iMK = flVar;
        this.Tgh = "banner_ad";
        this.ABk.addView(this, new ViewGroup.LayoutParams(-2, -2));
        fl();
    }

    private void fl() {
        iMK Qhi2 = BannerExpressBackupView.Qhi(this.ABk.getExpectExpressWidth(), this.ABk.getExpectExpressHeight());
        if (this.ABk.getExpectExpressWidth() > 0 && this.ABk.getExpectExpressHeight() > 0) {
            this.ROR = zn.cJ(this.cJ, this.ABk.getExpectExpressWidth());
            this.Sf = zn.cJ(this.cJ, this.ABk.getExpectExpressHeight());
        } else {
            this.ROR = zn.ac(this.cJ);
            this.Sf = Float.valueOf(this.ROR / Qhi2.cJ).intValue();
        }
        if (this.ROR > 0 && this.ROR > zn.ac(this.cJ)) {
            float ac = zn.ac(this.cJ) / this.ROR;
            this.ROR = zn.ac(this.cJ);
            this.Sf = Float.valueOf(this.Sf * ac).intValue();
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(this.ROR, this.Sf);
        }
        layoutParams.width = this.ROR;
        layoutParams.height = this.Sf;
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams).gravity = 17;
        }
        setLayoutParams(layoutParams);
        Qhi(Qhi2);
    }

    private void Qhi(iMK imk) {
        if (this.ac != null) {
            int gga = this.ac.gga();
            Qhi cJ = cJ(imk);
            if (cJ == null || cJ.Qhi == null) {
                return;
            }
            addView(cJ.Qhi);
            PAGImageView pAGImageView = cJ.CJ;
            PAGLogoView pAGLogoView = cJ.fl;
            PAGImageView pAGImageView2 = cJ.Tgh;
            if (pAGImageView2 != null && this.ac.Sf()) {
                zn.Qhi((View) pAGImageView2, 0);
                com.bytedance.sdk.openadsdk.iMK.ac.Qhi().Qhi((int) zn.Qhi(HzH.Qhi(), 11.0f, true), pAGImageView2, this.ac);
            }
            this.hpZ = cJ.ac;
            NativeVideoTsView videoView = getVideoView();
            if (videoView instanceof NativeVideoTsView) {
                this.pA = videoView;
                videoView.setVideoAdLoadListener(this);
                this.pA.setVideoAdInteractionListener(this);
                ArrayList arrayList = new ArrayList();
                arrayList.add(new Pair(pAGImageView, FriendlyObstructionPurpose.CLOSE_AD));
                arrayList.add(new Pair(pAGLogoView, FriendlyObstructionPurpose.OTHER));
                arrayList.add(new Pair(pAGImageView2, FriendlyObstructionPurpose.OTHER));
                arrayList.add(new Pair(this.hpZ, FriendlyObstructionPurpose.VIDEO_CONTROLS));
                this.pA.Qhi(arrayList);
                this.pA.setAdCreativeClickListener(new NativeVideoTsView.Qhi() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.VastBannerBackupView.1
                    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.Qhi
                    public void Qhi(View view, int i) {
                        if (VastBannerBackupView.this.tP != null) {
                            VastBannerBackupView.this.tP.onAdClicked();
                        }
                    }
                });
            }
            if (pAGLogoView != null) {
                pAGLogoView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.VastBannerBackupView.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        TTWebsiteActivity.Qhi(VastBannerBackupView.this.cJ, VastBannerBackupView.this.ac, VastBannerBackupView.this.Tgh);
                    }
                });
            }
            if (pAGImageView != null) {
                pAGImageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.VastBannerBackupView.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        VastBannerBackupView.this.Qhi();
                    }
                });
                NativeExpressView nativeExpressView = this.ABk;
                if (nativeExpressView != null) {
                    if (nativeExpressView.getClickListener() != null) {
                        this.ABk.getClickListener().cJ(pAGImageView);
                    }
                    if (this.ABk.getClickCreativeListener() != null) {
                        this.ABk.getClickCreativeListener().cJ(pAGImageView);
                    }
                }
            }
            ImageView imageView = this.hpZ;
            if (imageView != null) {
                imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.VastBannerBackupView.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (VastBannerBackupView.this.pA != null) {
                            boolean z = !VastBannerBackupView.this.pA.hm();
                            VastBannerBackupView vastBannerBackupView = VastBannerBackupView.this;
                            Drawable ac = z ? MQ.ac(vastBannerBackupView.getContext(), "tt_reward_full_mute") : MQ.ac(vastBannerBackupView.getContext(), "tt_reward_full_unmute");
                            VastBannerBackupView.this.pA.setIsQuiet(z);
                            VastBannerBackupView.this.hpZ.setImageDrawable(ac);
                            if (VastBannerBackupView.this.ac == null || VastBannerBackupView.this.ac.cJP() == null || VastBannerBackupView.this.ac.cJP().Qhi() == null) {
                                return;
                            }
                            if (z) {
                                VastBannerBackupView.this.ac.cJP().Qhi().Sf(VastBannerBackupView.this.kYc);
                            } else {
                                VastBannerBackupView.this.ac.cJP().Qhi().hm(VastBannerBackupView.this.kYc);
                            }
                        }
                    }
                });
            }
            RatioFrameLayout ratioFrameLayout = cJ.cJ;
            if (this.ac != null && this.ac.cJP() != null && ratioFrameLayout != null) {
                int zc = this.ac.cJP().zc();
                float ABk = this.ac.cJP().ABk();
                if (zc > 0 && ABk > 0.0f) {
                    ratioFrameLayout.setRatio(zc / ABk);
                } else if (gga == 15) {
                    ratioFrameLayout.setRatio(0.5625f);
                } else if (gga == 5) {
                    ratioFrameLayout.setRatio(1.7777778f);
                } else {
                    ratioFrameLayout.setRatio(1.0f);
                }
            }
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            if (videoView != null && ratioFrameLayout != null) {
                ratioFrameLayout.addView(videoView, layoutParams);
                videoView.setTag(520093762, Boolean.TRUE);
            }
            Qhi((View) videoView, true);
            Qhi((View) this, true);
            Qhi(ratioFrameLayout);
        }
    }

    private Qhi cJ(iMK imk) {
        Qhi qhi = new Qhi();
        qhi.Qhi = new FrameLayout(this.cJ);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -2);
        layoutParams.width = -1;
        layoutParams.height = -1;
        qhi.Qhi.setLayoutParams(layoutParams);
        qhi.cJ = new RatioFrameLayout(this.cJ);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -1);
        layoutParams2.gravity = 17;
        qhi.cJ.setLayoutParams(layoutParams2);
        qhi.Qhi.addView(qhi.cJ);
        int cJ = zn.cJ(this.cJ, 28.0f);
        int cJ2 = zn.cJ(this.cJ, 12.0f);
        int cJ3 = zn.cJ(this.cJ, 2.25f);
        int cJ4 = zn.cJ(this.cJ, 5.0f);
        if (imk != null && imk.Qhi == 1) {
            cJ = cJ2;
        }
        if (imk == null || imk.Qhi != 1) {
            cJ3 = cJ4;
        }
        qhi.ac = new PAGImageView(getContext());
        qhi.ac.setPadding(cJ3, cJ3, cJ3, cJ3);
        qhi.ac.setBackground(com.bytedance.sdk.openadsdk.core.widget.cJ.Qhi());
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(cJ, cJ);
        layoutParams3.setMargins(cJ4, cJ4, cJ4, cJ4);
        qhi.ac.setScaleType(ImageView.ScaleType.FIT_CENTER);
        qhi.ac.setImageDrawable(MQ.ac(getContext(), "tt_reward_full_mute"));
        qhi.ac.setLayoutParams(layoutParams3);
        qhi.Qhi.addView(qhi.ac);
        if (imk != null && imk.Qhi == 1) {
            qhi.CJ = PAGCloseButton.Qhi(getContext());
        } else {
            qhi.CJ = PAGCloseButton.cJ(getContext());
        }
        qhi.CJ.setId(520093697);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = GravityCompat.END;
        layoutParams4.setMargins(cJ4, cJ4, cJ4, cJ4);
        qhi.CJ.setLayoutParams(layoutParams4);
        qhi.Qhi.addView(qhi.CJ);
        qhi.fl = new PAGLogoView(this.cJ);
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams5.gravity = BadgeDrawable.BOTTOM_START;
        layoutParams5.setMargins(cJ4, cJ4, cJ4, cJ4);
        qhi.fl.setLayoutParams(layoutParams5);
        qhi.Qhi.addView(qhi.fl);
        qhi.Tgh = new PAGImageView(this.cJ);
        int cJ5 = zn.cJ(this.cJ, 11.0f);
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(cJ5, cJ5);
        layoutParams6.gravity = BadgeDrawable.BOTTOM_END;
        layoutParams6.rightMargin = cJ4;
        layoutParams6.bottomMargin = cJ4;
        qhi.Tgh.setVisibility(8);
        qhi.Tgh.setScaleType(ImageView.ScaleType.FIT_CENTER);
        qhi.Tgh.setLayoutParams(layoutParams6);
        qhi.Qhi.addView(qhi.Tgh);
        return qhi;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView
    public void Qhi() {
        if (this.fl != null) {
            this.fl.show();
        } else if (this.CJ != null) {
            this.CJ.Qhi();
        } else {
            TTDelegateActivity.Qhi(this.ac, this.HzH);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.InterfaceC0165fl
    public void Qhi(int i, int i2) {
        ImageView imageView = this.hpZ;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.ac
    public void Qhi(long j, long j2) {
        this.kYc = j;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.ac
    public void j_() {
        ImageView imageView = this.hpZ;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
    }

    public long getVideoProgress() {
        return this.kYc;
    }

    public void setAdInteractionListener(PAGBannerAdWrapperListener pAGBannerAdWrapperListener) {
        this.tP = pAGBannerAdWrapperListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class Qhi {
        public PAGImageView CJ;
        public FrameLayout Qhi;
        public PAGImageView Tgh;
        public PAGImageView ac;
        public RatioFrameLayout cJ;
        public PAGLogoView fl;

        private Qhi() {
        }
    }
}
