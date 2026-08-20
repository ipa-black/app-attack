package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.dynamic.ac.hm;
import com.bytedance.sdk.component.adexpress.widget.AnimationText;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.component.utils.MQ;
import java.text.DecimalFormat;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes2.dex */
public class DynamicTextView extends DynamicBaseWidgetImp {
    public DynamicTextView(Context context, DynamicRootView dynamicRootView, hm hmVar) {
        super(context, dynamicRootView, hmVar);
        this.Sf += 6;
        if (this.zc.yN()) {
            this.pA = new AnimationText(context, this.zc.ROR(), this.zc.fl(), 1, this.zc.Sf());
            ((AnimationText) this.pA).setMaxLines(1);
        } else {
            this.pA = new TextView(context);
            ((TextView) this.pA).setIncludeFontPadding(false);
        }
        this.pA.setTag(Integer.valueOf(getClickArea()));
        addView(this.pA, getWidgetLayoutParams());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.fl
    public boolean hm() {
        int i;
        double d2;
        super.hm();
        if (TextUtils.isEmpty(getText())) {
            this.pA.setVisibility(4);
            return true;
        } else if (this.zc.yN()) {
            Gm();
            return true;
        } else {
            ((TextView) this.pA).setText(this.zc.Tgh());
            ((TextView) this.pA).setTextDirection(5);
            this.pA.setTextAlignment(this.zc.Sf());
            ((TextView) this.pA).setTextColor(this.zc.ROR());
            ((TextView) this.pA).setTextSize(this.zc.fl());
            if (!this.zc.EBS()) {
                ((TextView) this.pA).setMaxLines(1);
                ((TextView) this.pA).setGravity(17);
                ((TextView) this.pA).setEllipsize(TextUtils.TruncateAt.END);
            } else {
                int bxS = this.zc.bxS();
                if (bxS > 0) {
                    ((TextView) this.pA).setLines(bxS);
                    ((TextView) this.pA).setEllipsize(TextUtils.TruncateAt.END);
                }
            }
            if (this.ABk != null && this.ABk.WAv() != null) {
                if (com.bytedance.sdk.component.adexpress.fl.cJ() && Qhi() && (TextUtils.equals(this.ABk.WAv().cJ(), "text_star") || TextUtils.equals(this.ABk.WAv().cJ(), "score-count") || TextUtils.equals(this.ABk.WAv().cJ(), "score-count-type-1") || TextUtils.equals(this.ABk.WAv().cJ(), "score-count-type-2"))) {
                    setVisibility(8);
                    return true;
                }
                if (TextUtils.equals(this.ABk.WAv().cJ(), "score-count") || TextUtils.equals(this.ABk.WAv().cJ(), "score-count-type-2")) {
                    try {
                        try {
                            i = Integer.parseInt(getText());
                        } catch (NumberFormatException unused) {
                            i = -1;
                        }
                        if (i < 0) {
                            if (com.bytedance.sdk.component.adexpress.fl.cJ()) {
                                setVisibility(8);
                                return true;
                            }
                            this.pA.setVisibility(0);
                        }
                        if (TextUtils.equals(this.ABk.WAv().cJ(), "score-count-type-2")) {
                            ((TextView) this.pA).setText(String.format(new DecimalFormat("(###,###,###)").format(i), Integer.valueOf(i)));
                            ((TextView) this.pA).setGravity(17);
                            return true;
                        }
                        Qhi((TextView) this.pA, i, getContext(), "tt_comment_num");
                    } catch (Exception unused2) {
                    }
                } else if (TextUtils.equals(this.ABk.WAv().cJ(), "text_star")) {
                    try {
                        d2 = Double.parseDouble(getText());
                    } catch (Exception e2) {
                        ABk.Qhi("DynamicStarView applyNativeStyle", e2.toString());
                        d2 = -1.0d;
                    }
                    if (d2 < 0.0d || d2 > 5.0d) {
                        if (com.bytedance.sdk.component.adexpress.fl.cJ()) {
                            setVisibility(8);
                            return true;
                        }
                        this.pA.setVisibility(0);
                    }
                    ((TextView) this.pA).setIncludeFontPadding(false);
                    ((TextView) this.pA).setText(String.format("%.1f", Double.valueOf(d2)));
                } else if (TextUtils.equals("privacy-detail", this.ABk.WAv().cJ())) {
                    ((TextView) this.pA).setText("Permission list | Privacy policy");
                } else if (TextUtils.equals(this.ABk.WAv().cJ(), "development-name")) {
                    ((TextView) this.pA).setText(MQ.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), "tt_text_privacy_development") + getText());
                } else if (TextUtils.equals(this.ABk.WAv().cJ(), "app-version")) {
                    ((TextView) this.pA).setText(MQ.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), "tt_text_privacy_app_version") + getText());
                } else {
                    ((TextView) this.pA).setText(getText());
                }
                this.pA.setTextAlignment(this.zc.Sf());
                ((TextView) this.pA).setGravity(this.zc.hm());
                if (com.bytedance.sdk.component.adexpress.fl.cJ()) {
                    WAv();
                }
            }
            return true;
        }
    }

    private boolean Qhi() {
        return (this.iMK == null || this.iMK.getRenderRequest() == null || this.iMK.getRenderRequest().WAv() == 4) ? false : true;
    }

    private void WAv() {
        int Qhi;
        if (TextUtils.equals(this.ABk.WAv().cJ(), "source") || TextUtils.equals(this.ABk.WAv().cJ(), "title") || TextUtils.equals(this.ABk.WAv().cJ(), "text_star")) {
            int[] cJ = com.bytedance.sdk.component.adexpress.dynamic.CJ.ABk.cJ(this.zc.Tgh(), this.zc.fl(), true);
            int Qhi2 = (int) CQU.Qhi(getContext(), this.zc.cJ());
            int Qhi3 = (int) CQU.Qhi(getContext(), this.zc.ac());
            int Qhi4 = (int) CQU.Qhi(getContext(), this.zc.CJ());
            int Qhi5 = (int) CQU.Qhi(getContext(), this.zc.Qhi());
            int min = Math.min(Qhi2, Qhi5);
            if (TextUtils.equals(this.ABk.WAv().cJ(), "source") && (Qhi = ((this.Sf - ((int) CQU.Qhi(getContext(), this.zc.fl()))) - Qhi2) - Qhi5) > 1 && Qhi <= min * 2) {
                int i = Qhi / 2;
                this.pA.setPadding(Qhi3, Qhi2 - i, Qhi4, Qhi5 - (Qhi - i));
                return;
            }
            int i2 = (((cJ[1] + Qhi2) + Qhi5) - this.Sf) - 2;
            if (i2 <= 1) {
                return;
            }
            if (i2 <= min * 2) {
                int i3 = i2 / 2;
                this.pA.setPadding(Qhi3, Qhi2 - i3, Qhi4, Qhi5 - (i2 - i3));
            } else if (i2 > Qhi2 + Qhi5) {
                final int i4 = (i2 - Qhi2) - Qhi5;
                this.pA.setPadding(Qhi3, 0, Qhi4, 0);
                if (i4 <= ((int) CQU.Qhi(getContext(), 1.0f)) + 1) {
                    ((TextView) this.pA).setTextSize(this.zc.fl() - 1.0f);
                } else if (i4 <= (((int) CQU.Qhi(getContext(), 1.0f)) + 1) * 2) {
                    ((TextView) this.pA).setTextSize(this.zc.fl() - 2.0f);
                } else {
                    post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicTextView.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                ViewGroup.LayoutParams layoutParams = DynamicTextView.this.pA.getLayoutParams();
                                layoutParams.height = DynamicTextView.this.Sf + i4;
                                DynamicTextView.this.pA.setLayoutParams(layoutParams);
                                DynamicTextView.this.pA.setTranslationY(-i4);
                                ViewGroup viewGroup = (ViewGroup) DynamicTextView.this.pA.getParent();
                                ViewGroup viewGroup2 = viewGroup;
                                viewGroup.setClipChildren(false);
                                ViewGroup viewGroup3 = (ViewGroup) DynamicTextView.this.pA.getParent().getParent();
                                ViewGroup viewGroup4 = viewGroup3;
                                viewGroup3.setClipChildren(false);
                            } catch (Throwable unused) {
                            }
                        }
                    });
                }
            } else if (Qhi2 > Qhi5) {
                this.pA.setPadding(Qhi3, Qhi2 - (i2 - min), Qhi4, Qhi5 - min);
            } else {
                this.pA.setPadding(Qhi3, Qhi2 - min, Qhi4, Qhi5 - (i2 - min));
            }
        }
        if (TextUtils.equals(this.ABk.WAv().cJ(), "fillButton")) {
            this.pA.setTextAlignment(2);
            ((TextView) this.pA).setGravity(17);
        }
    }

    public String getText() {
        String Tgh = this.zc.Tgh();
        if (TextUtils.isEmpty(Tgh)) {
            if (!com.bytedance.sdk.component.adexpress.fl.cJ() && TextUtils.equals(this.ABk.WAv().cJ(), "text_star")) {
                Tgh = "5";
            }
            if (!com.bytedance.sdk.component.adexpress.fl.cJ() && TextUtils.equals(this.ABk.WAv().cJ(), "score-count")) {
                Tgh = "6870";
            }
        }
        return (TextUtils.equals(this.ABk.WAv().cJ(), "title") || TextUtils.equals(this.ABk.WAv().cJ(), "subtitle")) ? Tgh.replace("\n", "") : Tgh;
    }

    public void Qhi(TextView textView, int i, Context context, String str) {
        textView.setText("(" + String.format(MQ.Qhi(context, str), Integer.valueOf(i)) + ")");
        if (i == -1) {
            textView.setVisibility(8);
        }
    }

    private void Gm() {
        if (this.pA instanceof AnimationText) {
            String text = getText();
            ArrayList arrayList = new ArrayList();
            try {
                JSONArray jSONArray = new JSONArray(text);
                for (int i = 0; i < jSONArray.length(); i++) {
                    arrayList.add(jSONArray.optString(i));
                }
            } catch (JSONException unused) {
                arrayList.add(text);
            }
            ((AnimationText) this.pA).setMaxLines(1);
            ((AnimationText) this.pA).setTextColor(this.zc.ROR());
            ((AnimationText) this.pA).setTextSize(this.zc.fl());
            ((AnimationText) this.pA).setAnimationText(arrayList);
            ((AnimationText) this.pA).setAnimationType(this.zc.PAe());
            ((AnimationText) this.pA).setAnimationDuration(this.zc.FQ() * 1000);
            ((AnimationText) this.pA).Qhi();
        }
    }
}
