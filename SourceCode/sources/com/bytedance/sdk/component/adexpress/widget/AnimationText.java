package com.bytedance.sdk.component.adexpress.widget;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.widget.TextSwitcher;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.bytedance.sdk.component.adexpress.dynamic.CJ.ABk;
import com.bytedance.sdk.component.utils.CQU;
import com.bytedance.sdk.component.utils.MQ;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class AnimationText extends TextSwitcher implements ViewSwitcher.ViewFactory, CQU.Qhi {
    private int ABk;
    private final int CJ;
    private int Gm;
    Animation.AnimationListener Qhi;
    private int ROR;
    private int Sf;
    private TextView Tgh;
    private int WAv;
    private int ac;
    private List<String> cJ;
    private Context fl;
    private float hm;
    private Handler iMK;
    private int zc;

    public AnimationText(Context context, int i, float f2, int i2, int i3) {
        super(context);
        this.cJ = new ArrayList();
        this.ac = 0;
        this.CJ = 1;
        this.iMK = new CQU(Looper.getMainLooper(), this);
        this.Qhi = new Animation.AnimationListener() { // from class: com.bytedance.sdk.component.adexpress.widget.AnimationText.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                if (AnimationText.this.Tgh != null) {
                    AnimationText.this.Tgh.setText("");
                }
            }
        };
        this.fl = context;
        this.Sf = i;
        this.hm = f2;
        this.WAv = i2;
        this.ABk = i3;
        ac();
    }

    private void ac() {
        setFactory(this);
    }

    public void setAnimationType(int i) {
        this.zc = i;
    }

    public void setAnimationDuration(int i) {
        this.ROR = i;
    }

    public void Qhi() {
        int i = this.zc;
        if (i == 1) {
            setInAnimation(getContext(), MQ.hm(this.fl, "tt_text_animation_y_in"));
            setOutAnimation(getContext(), MQ.hm(this.fl, "tt_text_animation_y_out"));
        } else if (i == 0) {
            setInAnimation(getContext(), MQ.hm(this.fl, "tt_text_animation_x_in"));
            setOutAnimation(getContext(), MQ.hm(this.fl, "tt_text_animation_x_in"));
            getInAnimation().setInterpolator(new LinearInterpolator());
            getOutAnimation().setInterpolator(new LinearInterpolator());
            getInAnimation().setAnimationListener(this.Qhi);
            getOutAnimation().setAnimationListener(this.Qhi);
        }
        this.iMK.sendEmptyMessage(1);
    }

    public void setAnimationText(List<String> list) {
        this.cJ = list;
    }

    public void cJ() {
        List<String> list = this.cJ;
        if (list == null || list.size() <= 0) {
            return;
        }
        int i = this.ac;
        this.ac = i + 1;
        this.Gm = i;
        setText(this.cJ.get(i));
        if (this.ac > this.cJ.size() - 1) {
            this.ac = 0;
        }
    }

    public void setTextColor(int i) {
        this.Sf = i;
    }

    public void setTextSize(float f2) {
        this.hm = f2;
    }

    public void setMaxLines(int i) {
        this.WAv = i;
    }

    @Override // android.widget.ViewSwitcher.ViewFactory
    public View makeView() {
        TextView textView = new TextView(getContext());
        this.Tgh = textView;
        textView.setTextColor(this.Sf);
        this.Tgh.setTextSize(this.hm);
        this.Tgh.setMaxLines(this.WAv);
        this.Tgh.setTextAlignment(this.ABk);
        return this.Tgh;
    }

    @Override // com.bytedance.sdk.component.utils.CQU.Qhi
    public void Qhi(Message message) {
        if (message.what != 1) {
            return;
        }
        cJ();
        this.iMK.sendEmptyMessageDelayed(1, this.ROR);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        try {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(ABk.cJ(this.cJ.get(this.Gm), this.hm, false)[0], 1073741824), i);
        } catch (Exception unused) {
            super.onMeasure(i, i2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.iMK.removeMessages(1);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.iMK.sendEmptyMessageDelayed(1, this.ROR);
    }
}
