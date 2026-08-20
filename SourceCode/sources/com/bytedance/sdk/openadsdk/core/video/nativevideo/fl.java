package com.bytedance.sdk.openadsdk.core.video.nativevideo;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.os.Message;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.component.utils.CQU;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.hm;
import com.bytedance.sdk.openadsdk.utils.iMK;
import com.bytedance.sdk.openadsdk.utils.zn;
import com.google.android.exoplayer2.ExoPlayer;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* compiled from: NativeVideoDetailLayout.java */
/* loaded from: classes2.dex */
public class fl extends Tgh {
    private float DaO;
    private TextView Dq;
    private ColorStateList EGK;
    private TextView FQ;
    private final com.bytedance.sdk.openadsdk.core.widget.fl Gy;
    private int HLI;
    private final Rect HUk;
    private ImageView Hf;
    private ImageView MND;
    private final CQU NBs;
    private ColorStateList Oy;
    private TextView PAe;
    private final int PER;
    private View Qe;
    private final Rect ReL;
    private int Ri;
    private float SL;
    private ColorStateList SO;
    private final Rect TKG;
    private final int Ura;
    private final Rect VnT;
    private float XH;
    private SeekBar YB;
    private TextView cjC;
    private boolean dI;
    private TextView dIT;
    private boolean dVA;
    private ImageView es;
    private final View.OnTouchListener et;
    private float gga;
    private TextView ip;
    private View jPH;
    private float mZ;
    private int oU;
    private int ots;
    private int pv;
    private final Rect rB;
    private ImageView xyz;
    private View yN;
    private int zjb;
    private TextView zn;

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh, com.bykv.vk.openvk.component.video.api.CJ.ac
    public /* bridge */ /* synthetic */ void Qhi(tP tPVar, WeakReference weakReference, boolean z) {
        Qhi(tPVar, (WeakReference<Context>) weakReference, z);
    }

    public fl(Context context, ViewGroup viewGroup, boolean z, int i, tP tPVar, com.bykv.vk.openvk.component.video.api.CJ.fl flVar, boolean z2) {
        super(context, viewGroup, z, i, tPVar, flVar, z2);
        this.NBs = new CQU(this);
        this.dI = false;
        this.dVA = false;
        this.zjb = 0;
        this.ots = 0;
        this.HLI = 0;
        this.oU = 0;
        this.pv = 0;
        this.ReL = new Rect();
        this.VnT = new Rect();
        this.Ri = 0;
        this.et = new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.fl.7
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 2) {
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                } else if (actionMasked == 3) {
                    view.getParent().requestDisallowInterceptTouchEvent(false);
                }
                return false;
            }
        };
        this.rB = new Rect();
        this.HUk = new Rect();
        this.TKG = new Rect();
        this.pM = HzH.Qhi().getApplicationContext();
        CJ(z2);
        this.ac = viewGroup;
        this.qMt = z;
        com.bytedance.sdk.openadsdk.core.widget.fl flVar2 = new com.bytedance.sdk.openadsdk.core.widget.fl(this);
        this.Gy = flVar2;
        flVar2.Qhi(this.qMt);
        DisplayMetrics displayMetrics = this.pM.getResources().getDisplayMetrics();
        this.Ura = displayMetrics.widthPixels;
        this.PER = displayMetrics.heightPixels;
        this.Dww = i;
        this.lB = flVar;
        this.CQU = tPVar;
        CJ(8);
        Qhi(context, this.ac);
        CJ();
        zc();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh
    public void Qhi(Context context, View view) {
        super.Qhi(context, view);
        this.zn = (TextView) view.findViewById(iMK.ejU);
        this.es = (ImageView) view.findViewById(iMK.Ohm);
        this.yN = view.findViewById(iMK.yy);
        this.xyz = (ImageView) view.findViewById(iMK.mz);
        this.FQ = (TextView) view.findViewById(iMK.Ki);
        this.PAe = (TextView) view.findViewById(iMK.Ls);
        this.ip = (TextView) view.findViewById(iMK.sqa);
        this.jPH = view.findViewById(iMK.ne);
        this.MND = (ImageView) view.findViewById(iMK.zTC);
        TextView textView = (TextView) view.findViewById(iMK.LcF);
        this.dIT = textView;
        textView.setText(MQ.Qhi(context, "tt_video_retry_des_txt"));
        this.YB = (SeekBar) view.findViewById(iMK.rP);
        this.cjC = (TextView) view.findViewById(iMK.LpL);
        this.Dq = (TextView) view.findViewById(iMK.sRC);
        this.Qe = view.findViewById(iMK.eN);
        this.Hf = (ImageView) view.findViewById(iMK.iWr);
        this.hm = view.findViewById(iMK.VV);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh
    public void CJ() {
        super.CJ();
        this.Gy.Qhi(this.ac);
        int i = 8;
        zn.Qhi((View) this.es, (this.qMt || (this.Dww & 1) == 1) ? 8 : 0);
        this.es.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.fl.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (fl.this.hpZ()) {
                    fl.this.aP.ac(fl.this, view);
                }
            }
        });
        TextView textView = this.zn;
        if (!this.qMt || (this.Dww & 2) == 2) {
            i = 0;
        }
        zn.Qhi((View) textView, i);
        this.zn.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.fl.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (fl.this.hpZ()) {
                    fl.this.aP.CJ(fl.this, view);
                }
            }
        });
        this.xyz.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.fl.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (fl.this.hpZ()) {
                    fl.this.aP.fl(fl.this, view);
                }
            }
        });
        this.MND.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.fl.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                fl.this.cJ(false, true);
                fl.this.Sf();
                fl.this.ROR();
                fl.this.hpZ();
            }
        });
        this.Hf.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.fl.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (fl.this.hpZ()) {
                    fl.this.aP.cJ(fl.this, view);
                }
            }
        });
        this.YB.setThumbOffset(0);
        this.YB.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.fl.6
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                if (!fl.this.dI && fl.this.pM != null) {
                    seekBar.setThumb(hm.Qhi(HzH.Qhi(), "tt_seek_thumb_normal"));
                }
                if (fl.this.hpZ()) {
                    seekBar.setThumbOffset(0);
                    fl.this.aP.Qhi(fl.this, seekBar.getProgress());
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                if (!fl.this.dI && fl.this.pM != null) {
                    seekBar.setThumb(hm.Qhi(HzH.Qhi(), "tt_seek_thumb_press"));
                }
                if (fl.this.hpZ()) {
                    seekBar.setThumbOffset(0);
                    fl.this.aP.cJ(fl.this, seekBar.getProgress());
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i2, boolean z) {
                if (fl.this.hpZ()) {
                    fl.this.aP.Qhi(fl.this, i2, z);
                }
            }
        });
        this.YB.setOnTouchListener(this.et);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh
    public void fl() {
        this.NBs.removeMessages(1);
        this.NBs.sendMessageDelayed(this.NBs.obtainMessage(1), ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh
    public void Tgh() {
        this.NBs.removeMessages(1);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh
    public void cJ(boolean z) {
        int i = WAv() ? this.PER : this.HzH;
        int i2 = WAv() ? this.Ura : this.kYc;
        if (this.MQ <= 0 || this.tP <= 0 || i <= 0) {
            return;
        }
        if (!qMt() && !WAv() && (this.Dww & 8) != 8) {
            i2 = zn.cJ(this.pM, 228.0f);
        }
        int i3 = (int) (this.MQ * ((i * 1.0f) / this.tP));
        if (i3 > i2) {
            i = (int) (this.tP * ((i2 * 1.0f) / this.MQ));
        } else {
            i2 = i3;
        }
        if (!z && !WAv()) {
            i = this.HzH;
            i2 = this.kYc;
        }
        this.CJ.Qhi(i, i2);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh
    public void Qhi(String str) {
        TextView textView = this.FQ;
        if (textView != null) {
            textView.setText(str);
        }
        TextView textView2 = this.PAe;
        if (textView2 != null) {
            textView2.setText(str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh
    public void Qhi(int i) {
        View view = this.Qe;
        if (view == null || view.getVisibility() != 0) {
            this.YB.setProgress(i);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh
    public void Qhi(long j, long j2) {
        this.cjC.setText(com.bykv.vk.openvk.component.video.Qhi.fl.Qhi.Qhi(j2));
        this.Dq.setText(com.bykv.vk.openvk.component.video.Qhi.fl.Qhi.Qhi(j));
        this.YB.setProgress(com.bykv.vk.openvk.component.video.Qhi.fl.Qhi.Qhi(j, j2));
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh
    public void ROR() {
        zn.Tgh(this.Tgh);
        zn.Tgh(this.ROR);
        zn.fl(this.jPH);
        if (this.Sf != null && this.CQU != null && this.CQU.FQ() != null && this.CQU.FQ().WAv() != null) {
            zn.Tgh(this.Sf);
            com.bytedance.sdk.openadsdk.iMK.ac.Qhi().Qhi(this.CQU.FQ().WAv(), this.CQU.FQ().ac(), this.CQU.FQ().cJ(), this.Sf, this.CQU);
        }
        if (this.fl.getVisibility() == 0) {
            zn.Qhi((View) this.fl, 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh, com.bykv.vk.openvk.component.video.api.CJ.ac
    public void Qhi() {
        Qhi(false, this.qMt);
        tP();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh
    public void Qhi(long j) {
        this.Dq.setText(com.bykv.vk.openvk.component.video.Qhi.fl.Qhi.Qhi(j));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh
    public void Qhi(tP tPVar, WeakReference<Context> weakReference, boolean z) {
        String str;
        String Qhi;
        if (tPVar == null) {
            return;
        }
        Qhi(this.ac, HzH.Qhi());
        Qhi(false, this.qMt);
        zn.Qhi(this.WAv, 0);
        zn.Qhi((View) this.Gm, 0);
        zn.Qhi(this.zc, 0);
        if (this.Gm != null && this.CQU != null && this.CQU.FQ() != null && this.CQU.FQ().WAv() != null) {
            com.bytedance.sdk.openadsdk.iMK.ac.Qhi().Qhi(this.CQU.FQ().WAv(), this.CQU.FQ().ac(), this.CQU.FQ().cJ(), this.Gm, this.CQU);
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
        if (this.CQU != null && this.CQU.dIT() != null && this.CQU.dIT().Qhi() != null) {
            zn.Qhi((View) this.ABk, 0);
            zn.Qhi((View) this.iMK, 4);
            if (this.ABk != null) {
                com.bytedance.sdk.openadsdk.iMK.ac.Qhi().Qhi(this.CQU.dIT(), this.ABk, tPVar);
                this.ABk.setOnClickListener(this.lG);
                this.ABk.setOnTouchListener(this.lG);
            }
        } else if (!TextUtils.isEmpty(str)) {
            zn.Qhi((View) this.ABk, 4);
            zn.Qhi((View) this.iMK, 0);
            if (this.iMK != null) {
                this.iMK.setText(str.substring(0, 1));
                this.iMK.setOnClickListener(this.lG);
                this.iMK.setOnTouchListener(this.lG);
            }
        }
        if (this.pA != null && !TextUtils.isEmpty(str)) {
            this.pA.setText(str);
        }
        zn.Qhi((View) this.pA, 0);
        zn.Qhi((View) this.hpZ, 0);
        int ip = tPVar.ip();
        if (ip == 4) {
            Qhi = MQ.Qhi(this.pM, "tt_video_download_apk");
        } else if (ip == 5) {
            Qhi = MQ.Qhi(this.pM, "tt_video_dial_phone");
        } else {
            Qhi = MQ.Qhi(this.pM, "tt_video_mobile_go_detail");
        }
        if (this.hpZ != null) {
            this.hpZ.setText(Qhi);
            this.hpZ.setOnClickListener(this.lG);
            this.hpZ.setOnTouchListener(this.lG);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh
    public void Sf() {
        zn.fl(this.Tgh);
        zn.fl(this.jPH);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh
    public void hm() {
        this.YB.setProgress(0);
        this.YB.setSecondaryProgress(0);
        this.cjC.setText(MQ.cJ(this.pM, "tt_00_00"));
        this.Dq.setText(MQ.cJ(this.pM, "tt_00_00"));
        CJ(8);
        if (Dww()) {
            this.CJ.setVisibility(8);
        }
        if (this.Sf != null) {
            this.Sf.setImageDrawable(null);
        }
        CJ(8);
        zn.Qhi(this.Qe, 8);
        zn.Qhi(this.WAv, 8);
        zn.Qhi((View) this.Gm, 8);
        zn.Qhi(this.zc, 8);
        zn.Qhi((View) this.ABk, 8);
        zn.Qhi((View) this.iMK, 8);
        zn.Qhi((View) this.pA, 8);
        if (this.Eh != null) {
            this.Eh.Qhi(true);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh, com.bytedance.sdk.openadsdk.core.widget.Tgh.cJ
    public boolean WAv() {
        return this.dI;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh
    public void Qhi(ViewGroup viewGroup) {
        if (viewGroup != null && (this.ac.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            this.dI = true;
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.ac.getLayoutParams();
            this.ots = marginLayoutParams.leftMargin;
            this.zjb = marginLayoutParams.topMargin;
            this.HLI = marginLayoutParams.width;
            this.oU = marginLayoutParams.height;
            marginLayoutParams.width = -1;
            marginLayoutParams.height = -1;
            marginLayoutParams.topMargin = 0;
            marginLayoutParams.leftMargin = 0;
            this.ac.setLayoutParams(marginLayoutParams);
            ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
            if (layoutParams instanceof RelativeLayout.LayoutParams) {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
                int[] rules = layoutParams2.getRules();
                this.pv = rules.length > 0 ? rules[3] : 0;
                layoutParams2.addRule(3, 0);
                viewGroup.setLayoutParams(layoutParams2);
            }
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams;
                this.ReL.set(marginLayoutParams2.leftMargin, marginLayoutParams2.topMargin, marginLayoutParams2.rightMargin, marginLayoutParams2.bottomMargin);
                zn.Qhi(viewGroup, 0, 0, 0, 0);
            }
            cJ(true);
            this.Hf.setImageDrawable(MQ.ac(this.pM, "tt_shrink_video"));
            this.YB.setThumb(hm.Qhi(this.pM, "tt_seek_thumb_fullscreen_selector"));
            this.YB.setThumbOffset(0);
            com.bykv.vk.openvk.component.video.Qhi.fl.Qhi.Qhi((View) this.ac, false);
            fl(this.dI);
            zn.Qhi(this.yN, 8);
            if (!this.qMt) {
                zn.Qhi((View) this.es, 8);
                zn.Qhi((View) this.zn, 8);
            } else if ((this.Dww & 1) == 1) {
                zn.Qhi((View) this.es, 8);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh
    public void cJ(ViewGroup viewGroup) {
        ABk.Qhi("FullScreen", "Detail exitFullScreen.....");
        if (viewGroup == null || this.ac == null || !(this.ac.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            return;
        }
        this.dI = false;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.ac.getLayoutParams();
        marginLayoutParams.width = this.HLI;
        marginLayoutParams.height = this.oU;
        marginLayoutParams.leftMargin = this.ots;
        marginLayoutParams.topMargin = this.zjb;
        this.ac.setLayoutParams(marginLayoutParams);
        ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
            layoutParams2.addRule(3, this.pv);
            viewGroup.setLayoutParams(layoutParams2);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            zn.Qhi(viewGroup, this.ReL.left, this.ReL.top, this.ReL.right, this.ReL.bottom);
        }
        cJ(true);
        this.Hf.setImageDrawable(MQ.ac(this.pM, "tt_enlarge_video"));
        this.YB.setThumb(hm.Qhi(this.pM, "tt_seek_thumb_normal"));
        this.YB.setThumbOffset(0);
        com.bykv.vk.openvk.component.video.Qhi.fl.Qhi.Qhi((View) this.ac, true);
        fl(this.dI);
        zn.Qhi(this.yN, 8);
        if ((this.Dww & 2) == 2) {
            zn.Qhi((View) this.zn, 0);
        }
    }

    private void fl(boolean z) {
        if (z) {
            CQU();
        } else {
            pM();
        }
    }

    private void CQU() {
        DisplayMetrics displayMetrics = this.pM.getResources().getDisplayMetrics();
        TextView textView = this.Dq;
        if (textView != null) {
            this.SL = textView.getTextSize();
            this.Dq.setTextSize(2, 14.0f);
            ColorStateList textColors = this.Dq.getTextColors();
            this.Oy = textColors;
            if (textColors != null) {
                this.Dq.setTextColor(-1);
            }
            this.DaO = this.Dq.getAlpha();
            this.Dq.setAlpha(0.85f);
            this.Dq.setShadowLayer(0.0f, zn.cJ(this.pM, 0.5f), zn.cJ(this.pM, 0.5f), MQ.ROR(this.pM, "tt_b2000000"));
            ViewGroup.LayoutParams layoutParams = this.Dq.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                this.rB.set(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
                zn.Qhi(this.Dq, (int) TypedValue.applyDimension(1, 16.0f, displayMetrics), this.rB.top, (int) TypedValue.applyDimension(1, 14.0f, displayMetrics), this.rB.bottom);
            }
        }
        TextView textView2 = this.cjC;
        if (textView2 != null) {
            this.mZ = textView2.getTextSize();
            this.cjC.setTextSize(2, 14.0f);
            ColorStateList textColors2 = this.cjC.getTextColors();
            this.SO = textColors2;
            if (textColors2 != null) {
                this.cjC.setTextColor(-1);
            }
            this.XH = this.cjC.getAlpha();
            this.cjC.setAlpha(0.85f);
            this.cjC.setShadowLayer(0.0f, zn.cJ(this.pM, 0.5f), zn.cJ(this.pM, 0.5f), MQ.ROR(this.pM, "tt_b2000000"));
            ViewGroup.LayoutParams layoutParams2 = this.cjC.getLayoutParams();
            if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
                this.HUk.set(marginLayoutParams2.leftMargin, marginLayoutParams2.topMargin, marginLayoutParams2.rightMargin, marginLayoutParams2.bottomMargin);
                zn.Qhi(this.cjC, (int) TypedValue.applyDimension(1, 14.0f, displayMetrics), this.HUk.top, this.HUk.right, this.HUk.bottom);
            }
        }
        ImageView imageView = this.Hf;
        if (imageView != null) {
            ViewGroup.LayoutParams layoutParams3 = imageView.getLayoutParams();
            if (layoutParams3 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) layoutParams3;
                this.TKG.set(marginLayoutParams3.leftMargin, marginLayoutParams3.topMargin, marginLayoutParams3.rightMargin, marginLayoutParams3.bottomMargin);
                zn.Qhi(this.Hf, this.TKG.left, this.TKG.top, (int) TypedValue.applyDimension(1, 16.0f, displayMetrics), this.TKG.bottom);
            }
        }
        ImageView imageView2 = this.Hf;
        if (imageView2 != null) {
            imageView2.setImageDrawable(MQ.ac(this.pM, "tt_shrink_fullscreen"));
        }
        TextView textView3 = this.PAe;
        if (textView3 != null) {
            ColorStateList textColors3 = textView3.getTextColors();
            this.EGK = textColors3;
            if (textColors3 != null) {
                this.PAe.setTextColor(-1);
            }
            this.gga = this.PAe.getAlpha();
            this.PAe.setAlpha(0.85f);
            ViewGroup.LayoutParams layoutParams4 = this.PAe.getLayoutParams();
            if (layoutParams4 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams4 = (ViewGroup.MarginLayoutParams) layoutParams4;
                this.VnT.set(marginLayoutParams4.leftMargin, marginLayoutParams4.topMargin, marginLayoutParams4.rightMargin, marginLayoutParams4.bottomMargin);
                zn.Qhi(this.PAe, (int) TypedValue.applyDimension(1, 1.0f, displayMetrics), this.HUk.top, this.HUk.right, this.HUk.bottom);
            }
        }
        View view = this.yN;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams5 = view.getLayoutParams();
            this.Ri = layoutParams5.height;
            layoutParams5.height = (int) TypedValue.applyDimension(1, 49.0f, displayMetrics);
            this.yN.setLayoutParams(layoutParams5);
            this.yN.setBackgroundResource(MQ.CJ(this.pM, "tt_shadow_fullscreen_top"));
        }
        cJ(false, true);
    }

    private void pM() {
        TextView textView = this.Dq;
        if (textView != null) {
            textView.setTextSize(0, this.SL);
            ColorStateList colorStateList = this.Oy;
            if (colorStateList != null) {
                this.Dq.setTextColor(colorStateList);
            }
            this.Dq.setAlpha(this.DaO);
            this.Dq.setShadowLayer(zn.cJ(this.pM, 1.0f), 0.0f, 0.0f, MQ.ROR(this.pM, "tt_72000000"));
            zn.Qhi(this.Dq, this.rB.left, this.rB.top, this.rB.right, this.rB.bottom);
        }
        TextView textView2 = this.cjC;
        if (textView2 != null) {
            textView2.setTextSize(0, this.mZ);
            ColorStateList colorStateList2 = this.SO;
            if (colorStateList2 != null) {
                this.cjC.setTextColor(colorStateList2);
            }
            this.cjC.setAlpha(this.XH);
            this.cjC.setShadowLayer(zn.cJ(this.pM, 1.0f), 0.0f, 0.0f, MQ.ROR(this.pM, "tt_72000000"));
            zn.Qhi(this.cjC, this.HUk.left, this.HUk.top, this.HUk.right, this.HUk.bottom);
        }
        ImageView imageView = this.Hf;
        if (imageView != null) {
            zn.Qhi(imageView, this.TKG.left, this.TKG.top, this.TKG.right, this.TKG.bottom);
        }
        ImageView imageView2 = this.Hf;
        if (imageView2 != null) {
            imageView2.setImageDrawable(MQ.ac(this.pM, "tt_enlarge_video"));
        }
        TextView textView3 = this.PAe;
        if (textView3 != null) {
            ColorStateList colorStateList3 = this.EGK;
            if (colorStateList3 != null) {
                textView3.setTextColor(colorStateList3);
            }
            this.PAe.setAlpha(this.gga);
            zn.Qhi(this.PAe, this.HUk.left, this.HUk.top, this.HUk.right, this.HUk.bottom);
        }
        View view = this.yN;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = this.Ri;
            this.yN.setLayoutParams(layoutParams);
            this.yN.setBackground(hm.Qhi(this.pM, "tt_video_black_desc_gradient"));
        }
        cJ(false, true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh, com.bytedance.sdk.component.utils.CQU.Qhi
    public void Qhi(Message message) {
        if (message.what != 1) {
            return;
        }
        Gm();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh
    public void Qhi(boolean z, boolean z2, boolean z3) {
        zn.Qhi(this.Qe, 0);
        if (this.dI) {
            zn.Qhi(this.yN, 0);
            zn.Qhi((View) this.PAe, 0);
        } else if (z3) {
            zn.Qhi(this.yN, 8);
        }
        zn.Qhi((View) this.fl, (!z || this.Tgh.getVisibility() == 0) ? 8 : 0);
        if (!this.qMt && !this.dI) {
            if ((this.Dww & 1) != 1 && !z3) {
                zn.Qhi((View) this.es, 0);
            }
            zn.Qhi((View) this.zn, z3 ? 8 : 0);
        }
        zn.Qhi((View) this.cjC, 0);
        zn.Qhi((View) this.Dq, 0);
        zn.Qhi((View) this.YB, 0);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh
    public void Qhi(boolean z, boolean z2) {
        zn.Qhi(this.Qe, 8);
        zn.Qhi(this.yN, 8);
        zn.Qhi((View) this.fl, 8);
        if (!this.qMt && !this.dI) {
            zn.Qhi((View) this.es, 8);
            if ((this.Dww & 2) != 2) {
                zn.Qhi((View) this.zn, 8);
            }
        } else if ((this.Dww & 1) == 1) {
            zn.Qhi((View) this.es, 8);
        }
        if (z2) {
            zn.Qhi((View) this.es, 8);
            zn.Qhi((View) this.zn, 8);
        }
        ac(false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh, com.bytedance.sdk.openadsdk.core.widget.Tgh.cJ
    public void Gm() {
        Qhi(true, false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh
    public boolean cJ(int i) {
        SeekBar seekBar = this.YB;
        return seekBar != null && i > seekBar.getSecondaryProgress();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh
    public void ac(boolean z) {
        TextView textView;
        TextView textView2;
        int i;
        if (this.FQ != null) {
            if (this.qMt) {
                textView2 = this.FQ;
            } else {
                textView = this.FQ;
                if (z) {
                    i = 0;
                    zn.Qhi((View) textView, i);
                }
                textView2 = textView;
            }
            textView = textView2;
            i = 8;
            zn.Qhi((View) textView, i);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh, com.bytedance.sdk.openadsdk.core.widget.fl.Qhi
    public void Qhi(View view, boolean z) {
        if (WAv()) {
            String format = new SimpleDateFormat("HH:mm", Locale.getDefault()).format(new Date());
            if (this.CQU != null && !TextUtils.isEmpty(this.CQU.dVA())) {
                Qhi(this.CQU.dVA());
            }
            this.ip.setText(format);
        } else {
            Qhi("");
            this.ip.setText("");
        }
        if (this.NFd) {
            return;
        }
        ac(this.qMt && !this.dI);
        if (hpZ()) {
            this.aP.Qhi(this, view, true, this.Tgh.getVisibility() != 0);
        }
    }
}
