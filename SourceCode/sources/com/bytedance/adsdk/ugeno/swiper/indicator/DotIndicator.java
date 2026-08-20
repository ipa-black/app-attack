package com.bytedance.adsdk.ugeno.swiper.indicator;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.internal.view.SupportMenu;
import com.bytedance.adsdk.ugeno.cJ.hm;
import com.bytedance.adsdk.ugeno.swiper.cJ;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class DotIndicator extends LinearLayout {
    private Context CJ;
    private List<View> Qhi;
    private int ROR;
    private boolean Sf;
    private int Tgh;
    private int ac;
    private int cJ;
    private int fl;
    private int hm;

    public DotIndicator(Context context) {
        super(context);
        this.cJ = SupportMenu.CATEGORY_MASK;
        this.ac = -16776961;
        this.fl = 5;
        this.Tgh = 20;
        this.ROR = 20;
        this.CJ = context;
        this.Qhi = new ArrayList();
        Qhi();
    }

    public void Qhi(int i, int i2) {
        for (View view : this.Qhi) {
            view.setBackground(cJ(this.ac));
        }
        i = (i < 0 || i >= this.Qhi.size()) ? 0 : 0;
        if (this.Qhi.size() > 0) {
            this.Qhi.get(i).setBackground(cJ(this.cJ));
            this.hm = i2;
        }
    }

    public int getSize() {
        return this.Qhi.size();
    }

    public void Qhi() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 80;
        setGravity(17);
        setOrientation(0);
        layoutParams.bottomMargin = (int) hm.Qhi(this.CJ, 10.0f);
        setLayoutParams(layoutParams);
    }

    public void setSelectedColor(int i) {
        this.cJ = i;
    }

    public void setLoop(boolean z) {
        this.Sf = z;
    }

    public void setUnSelectedColor(int i) {
        this.ac = i;
    }

    public void Qhi(int i) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.Tgh, this.ROR);
        layoutParams.leftMargin = this.fl;
        layoutParams.rightMargin = this.fl;
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(this.Tgh, this.ROR);
        layoutParams2.leftMargin = this.fl;
        layoutParams2.rightMargin = this.fl;
        int Qhi = cJ.Qhi(this.Sf, this.hm, this.Qhi.size());
        int Qhi2 = cJ.Qhi(this.Sf, i, this.Qhi.size());
        if (this.Qhi.size() == 0) {
            Qhi2 = 0;
        }
        if (!this.Qhi.isEmpty() && cJ.Qhi(Qhi, this.Qhi) && cJ.Qhi(Qhi2, this.Qhi)) {
            this.Qhi.get(Qhi).setBackground(cJ(this.ac));
            this.Qhi.get(Qhi).setLayoutParams(layoutParams2);
            this.Qhi.get(Qhi2).setBackground(cJ(this.cJ));
            this.Qhi.get(Qhi2).setLayoutParams(layoutParams);
            this.hm = i;
        }
    }

    public void cJ() {
        View view = new View(getContext());
        view.setClickable(false);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.Tgh, this.ROR);
        layoutParams.leftMargin = this.fl;
        layoutParams.rightMargin = this.fl;
        addView(view, layoutParams);
        view.setBackground(cJ(this.ac));
        this.Qhi.add(view);
    }

    private GradientDrawable cJ(int i) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(i);
        return gradientDrawable;
    }
}
