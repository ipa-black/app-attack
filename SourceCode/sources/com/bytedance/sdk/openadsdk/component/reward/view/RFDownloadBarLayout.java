package com.bytedance.sdk.openadsdk.component.reward.view;

import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.component.Sf.hm;
import com.bytedance.sdk.component.fl.HzH;
import com.bytedance.sdk.component.fl.zc;
import com.bytedance.sdk.openadsdk.core.cJ.Sf;
import com.bytedance.sdk.openadsdk.core.customview.PAGLinearLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.widget.TTRatingBar2;
import com.bytedance.sdk.openadsdk.core.widget.TTRoundRectImageView;
import com.bytedance.sdk.openadsdk.utils.iMK;
import com.bytedance.sdk.openadsdk.utils.js;
import com.bytedance.sdk.openadsdk.utils.zn;
import java.util.Locale;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class RFDownloadBarLayout extends PAGLinearLayout {
    private TextView CJ;
    private TTRatingBar2 Qhi;
    private com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi Tgh;
    private TTRoundRectImageView ac;
    private TextView cJ;
    private boolean fl;

    public RFDownloadBarLayout(Context context) {
        super(context);
        setOrientation(1);
        setVisibility(8);
        setBackgroundColor(-1);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i != 0 || this.fl) {
            return;
        }
        ac();
    }

    private void ac() {
        this.fl = true;
        if (this.Tgh.Dq == 1) {
            fl();
        } else {
            CJ();
        }
        if (this.cJ == null) {
            this.cJ = (TextView) this.Tgh.yN.findViewById(520093705);
        }
        final tP tPVar = this.Tgh.cJ;
        TextView textView = this.cJ;
        if (textView != null) {
            textView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.RFDownloadBarLayout.1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    int width = ((ViewGroup) RFDownloadBarLayout.this.cJ.getParent()).getWidth();
                    if (width > 0) {
                        RFDownloadBarLayout.this.cJ.setMaxWidth((int) (width * 0.45f));
                    }
                }
            });
            if (tPVar.IC()) {
                if (tPVar.cJP() != null && TextUtils.isEmpty(tPVar.cJP().Tgh())) {
                    zn.Qhi((View) this.cJ, 8);
                }
            } else {
                this.cJ.setText(tPVar.NFd() == 3 ? getButtonTextForNewStyleBar() : tPVar.ots());
            }
        }
        if (this.ac != null && tPVar.dIT() != null && !TextUtils.isEmpty(tPVar.dIT().Qhi())) {
            final String Qhi = tPVar.dIT().Qhi();
            if (tPVar.IC()) {
                com.bytedance.sdk.openadsdk.ROR.fl.Qhi(tPVar.dIT()).ac(2).Qhi(new com.bytedance.sdk.openadsdk.ROR.cJ(tPVar, tPVar.dIT().Qhi(), new HzH<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.RFDownloadBarLayout.2
                    @Override // com.bytedance.sdk.component.fl.HzH
                    public void Qhi(zc<Bitmap> zcVar) {
                        if (zcVar == null || zcVar.cJ() == null) {
                            return;
                        }
                        if (RFDownloadBarLayout.this.ac != null) {
                            RFDownloadBarLayout.this.ac.setImageBitmap(zcVar.cJ());
                        }
                        com.bytedance.sdk.openadsdk.cJ.ac.cJ(tPVar, RFDownloadBarLayout.this.Tgh.fl, "load_vast_icon_success", (JSONObject) null);
                    }

                    @Override // com.bytedance.sdk.component.fl.HzH
                    public void Qhi(int i, String str, Throwable th) {
                        RFDownloadBarLayout.this.Qhi(i, str, Qhi);
                    }
                }));
                if (tPVar.cJP() != null && tPVar.cJP().cJ() != null) {
                    tPVar.cJP().cJ().cJ(0L);
                }
            } else {
                com.bytedance.sdk.openadsdk.iMK.ac.Qhi().Qhi(tPVar.dIT(), this.ac, tPVar);
            }
        }
        TextView textView2 = this.CJ;
        if (textView2 != null) {
            textView2.setText(tPVar.dVA());
        }
        TTRatingBar2 tTRatingBar2 = this.Qhi;
        if (tTRatingBar2 != null) {
            zn.Qhi((TextView) null, tTRatingBar2, tPVar);
        }
        if (this.Tgh.Dq == 2 && tPVar.NFd() == 1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.cJ.getLayoutParams();
            layoutParams.height = zn.cJ(this.Tgh.ip, 55.0f);
            layoutParams.topMargin = zn.cJ(this.Tgh.ip, 20.0f);
            this.cJ.setLayoutParams(layoutParams);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) getLayoutParams();
            layoutParams2.bottomMargin = zn.cJ(this.Tgh.ip, 12.0f);
            setLayoutParams(layoutParams2);
        }
        cJ();
    }

    private void CJ() {
        setOrientation(0);
        setGravity(16);
        Context context = getContext();
        setPadding(zn.cJ(context, 16.0f), zn.cJ(context, 12.0f), zn.cJ(context, 16.0f), zn.cJ(context, 12.0f));
        TTRoundRectImageView tTRoundRectImageView = new TTRoundRectImageView(context);
        this.ac = tTRoundRectImageView;
        tTRoundRectImageView.setBackgroundColor(0);
        this.ac.setId(iMK.cJ);
        addView(this.ac, new LinearLayout.LayoutParams(zn.cJ(context, 48.0f), zn.cJ(context, 48.0f)));
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(context);
        pAGLinearLayout.setOrientation(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
        layoutParams.leftMargin = zn.cJ(context, 12.0f);
        layoutParams.weight = 1.0f;
        addView(pAGLinearLayout, layoutParams);
        PAGTextView pAGTextView = new PAGTextView(context);
        this.CJ = pAGTextView;
        pAGTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.CJ.setGravity(16);
        this.CJ.setSingleLine(true);
        this.CJ.setTextSize(2, 17.0f);
        this.CJ.setId(iMK.ac);
        this.CJ.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        pAGLinearLayout.addView(this.CJ, new LinearLayout.LayoutParams(-1, -2));
        TTRatingBar2 tTRatingBar2 = new TTRatingBar2(context);
        this.Qhi = tTRatingBar2;
        tTRatingBar2.setId(iMK.fl);
        pAGLinearLayout.addView(this.Qhi, new LinearLayout.LayoutParams(-2, zn.cJ(context, 14.0f)));
        PAGTextView pAGTextView2 = new PAGTextView(context);
        this.cJ = pAGTextView2;
        pAGTextView2.setGravity(17);
        this.cJ.setEllipsize(TextUtils.TruncateAt.END);
        this.cJ.setSingleLine(true);
        this.cJ.setTextColor(-1);
        this.cJ.setTextSize(2, 16.0f);
        this.cJ.setId(520093705);
        this.cJ.setBackground(Qhi(context));
        this.cJ.setText(this.Tgh.cJ.ots());
        addView(this.cJ, new LinearLayout.LayoutParams(zn.cJ(context, 164.0f), zn.cJ(context, 36.0f)));
    }

    public void Qhi() {
        Keyframe ofFloat = Keyframe.ofFloat(0.0f, 0.0f);
        Keyframe ofFloat2 = Keyframe.ofFloat(0.65f, 1.0f);
        Keyframe ofFloat3 = Keyframe.ofFloat(0.765f, 0.9f);
        Keyframe ofFloat4 = Keyframe.ofFloat(0.88f, 1.0f);
        Keyframe ofFloat5 = Keyframe.ofFloat(0.95f, 0.95f);
        Keyframe ofFloat6 = Keyframe.ofFloat(1.0f, 1.0f);
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofKeyframe("scaleX", ofFloat, ofFloat2, ofFloat3, ofFloat4, ofFloat5, ofFloat6), PropertyValuesHolder.ofKeyframe("scaleY", ofFloat, ofFloat2, ofFloat3, ofFloat4, ofFloat5, ofFloat6));
        ofPropertyValuesHolder.setDuration(1000L);
        ofPropertyValuesHolder.start();
    }

    public void Qhi(com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi) {
        this.Tgh = qhi;
        if (qhi.cJ.NFd() == 1) {
            ac();
        }
    }

    protected String getButtonTextForNewStyleBar() {
        boolean z;
        String ots;
        String ROR = js.ROR(this.Tgh.ip);
        if (ROR == null) {
            ROR = "";
        }
        try {
            z = ROR.equals(Locale.ENGLISH.getLanguage());
        } catch (Throwable unused) {
            z = false;
        }
        if (TextUtils.isEmpty(this.Tgh.cJ.ots())) {
            ots = this.Tgh.cJ.ip() != 4 ? "View" : "Install";
        } else {
            ots = this.Tgh.cJ.ots();
            if (ots == null || !js.Tgh(ots) || ots.length() <= 2) {
                if (ots != null && !js.Tgh(ots) && ots.length() > 7 && z) {
                    ots = getCnOrEnBtnText();
                }
            } else if (z) {
                ots = getCnOrEnBtnText();
            }
        }
        if (z && !js.Tgh(ots)) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.cJ.getLayoutParams();
            layoutParams.bottomMargin = zn.cJ(this.Tgh.ip, 4.0f);
            this.cJ.setLayoutParams(layoutParams);
        }
        return ots;
    }

    private String getCnOrEnBtnText() {
        if (this.Tgh.cJ.ip() != 4) {
            return "View";
        }
        return "Install";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(final int i, final String str, final String str2) {
        com.bytedance.sdk.openadsdk.cJ.ac.Qhi(new hm("load_vast_icon_fail") { // from class: com.bytedance.sdk.openadsdk.component.reward.view.RFDownloadBarLayout.3
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("error_code", i);
                    jSONObject.put("description", i + ":" + str);
                    jSONObject.put("url", str2);
                } catch (Throwable unused) {
                }
                com.bytedance.sdk.openadsdk.cJ.ac.cJ(RFDownloadBarLayout.this.Tgh.cJ, RFDownloadBarLayout.this.Tgh.fl, "load_vast_icon_fail", jSONObject);
            }
        });
    }

    public void cJ() {
        com.bytedance.sdk.openadsdk.core.cJ.Tgh fl = this.Tgh.aP.fl();
        final com.bytedance.sdk.openadsdk.core.cJ.cJ CJ = this.Tgh.aP.CJ();
        final tP tPVar = this.Tgh.cJ;
        if (tPVar.sDy() == null) {
            return;
        }
        if (tPVar.NFd() != 5 && this.cJ != null) {
            if (tPVar.sDy().fl) {
                this.cJ.setOnClickListener(fl);
                this.cJ.setOnTouchListener(fl);
            } else {
                this.cJ.setOnClickListener(CJ);
            }
        }
        if (tPVar.NFd() == 5) {
            if (tPVar.sDy().fl) {
                Sf sf = new Sf("VAST_ACTION_BUTTON", tPVar.cJP(), fl) { // from class: com.bytedance.sdk.openadsdk.component.reward.view.RFDownloadBarLayout.4
                };
                Sf sf2 = new Sf("VAST_ICON", tPVar.cJP(), fl) { // from class: com.bytedance.sdk.openadsdk.component.reward.view.RFDownloadBarLayout.5
                };
                TextView textView = this.cJ;
                if (textView != null) {
                    textView.setOnClickListener(sf);
                    this.cJ.setOnTouchListener(sf);
                }
                TTRoundRectImageView tTRoundRectImageView = this.ac;
                if (tTRoundRectImageView != null) {
                    tTRoundRectImageView.setOnClickListener(sf2);
                    this.ac.setOnTouchListener(sf2);
                }
                TextView textView2 = this.CJ;
                if (textView2 == null || TextUtils.isEmpty(textView2.getText())) {
                    return;
                }
                this.CJ.setOnClickListener(sf);
                this.CJ.setOnTouchListener(sf);
                return;
            }
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.RFDownloadBarLayout.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    View.OnClickListener onClickListener2 = CJ;
                    if (onClickListener2 != null) {
                        onClickListener2.onClick(view);
                    }
                    if (view != null && "VAST_ICON".equals(view.getTag(570425345))) {
                        if (tPVar.cJP() == null || tPVar.cJP().cJ() == null) {
                            return;
                        }
                        tPVar.cJP().cJ().Qhi(RFDownloadBarLayout.this.Tgh.bxS.ROR());
                    } else if (tPVar.cJP() != null) {
                        tPVar.cJP().Qhi().ROR(RFDownloadBarLayout.this.Tgh.bxS.ROR());
                    }
                }
            };
            TextView textView3 = this.cJ;
            if (textView3 != null) {
                textView3.setOnClickListener(onClickListener);
            }
            TextView textView4 = this.CJ;
            if (textView4 != null && !TextUtils.isEmpty(textView4.getText())) {
                this.CJ.setOnClickListener(onClickListener);
            }
            TTRoundRectImageView tTRoundRectImageView2 = this.ac;
            if (tTRoundRectImageView2 != null) {
                tTRoundRectImageView2.setTag(570425345, "VAST_ICON");
                this.ac.setOnClickListener(CJ);
                return;
            }
            return;
        }
        this.cJ.setOnClickListener(fl);
        this.CJ.setOnClickListener(fl);
        this.Qhi.setOnClickListener(fl);
        this.ac.setOnClickListener(fl);
    }

    private void fl() {
        Context context = getContext();
        setPadding(zn.cJ(context, 16.0f), zn.cJ(context, 16.0f), zn.cJ(context, 16.0f), zn.cJ(context, 24.0f));
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(context);
        pAGLinearLayout.setOrientation(0);
        pAGLinearLayout.setGravity(16);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.bottomMargin = zn.cJ(context, 12.0f);
        addView(pAGLinearLayout, layoutParams);
        TTRoundRectImageView tTRoundRectImageView = new TTRoundRectImageView(context);
        this.ac = tTRoundRectImageView;
        tTRoundRectImageView.setBackgroundColor(0);
        this.ac.setId(iMK.cJ);
        pAGLinearLayout.addView(this.ac, new LinearLayout.LayoutParams(zn.cJ(context, 48.0f), zn.cJ(context, 48.0f)));
        PAGLinearLayout pAGLinearLayout2 = new PAGLinearLayout(context);
        pAGLinearLayout2.setOrientation(1);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.leftMargin = zn.cJ(context, 12.0f);
        pAGLinearLayout.addView(pAGLinearLayout2, layoutParams2);
        PAGTextView pAGTextView = new PAGTextView(context);
        this.CJ = pAGTextView;
        pAGTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.CJ.setGravity(16);
        this.CJ.setSingleLine(true);
        this.CJ.setTextSize(2, 17.0f);
        this.CJ.setId(iMK.ac);
        this.CJ.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        pAGLinearLayout2.addView(this.CJ, new LinearLayout.LayoutParams(-1, -2));
        TTRatingBar2 tTRatingBar2 = new TTRatingBar2(context);
        this.Qhi = tTRatingBar2;
        tTRatingBar2.setId(iMK.fl);
        pAGLinearLayout2.addView(this.Qhi, new LinearLayout.LayoutParams(-2, zn.cJ(context, 14.0f)));
        PAGTextView pAGTextView2 = new PAGTextView(context);
        this.cJ = pAGTextView2;
        pAGTextView2.setGravity(17);
        this.cJ.setEllipsize(TextUtils.TruncateAt.END);
        this.cJ.setSingleLine(true);
        this.cJ.setTextColor(-1);
        this.cJ.setTextSize(2, 16.0f);
        this.cJ.setId(520093705);
        this.cJ.setBackground(Qhi(context));
        this.cJ.setText(this.Tgh.cJ.ots());
        addView(this.cJ, new LinearLayout.LayoutParams(-1, zn.cJ(context, 36.0f)));
    }

    private static Drawable Qhi(Context context) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#1A73E8"));
        gradientDrawable.setCornerRadius(zn.cJ(context, 18.0f));
        return gradientDrawable;
    }
}
