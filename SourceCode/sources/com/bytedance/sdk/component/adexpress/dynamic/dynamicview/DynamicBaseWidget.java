package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.text.TextUtils;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.cJ.iMK;
import com.bytedance.sdk.component.adexpress.dynamic.ac.ROR;
import com.bytedance.sdk.component.adexpress.dynamic.ac.Sf;
import com.bytedance.sdk.component.adexpress.dynamic.ac.hm;
import com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation;
import com.bytedance.sdk.component.utils.qMt;
import io.bidmachine.utils.IabUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class DynamicBaseWidget extends FrameLayout implements IAnimation, Tgh, fl {
    private static final View.OnTouchListener EBS = new View.OnTouchListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget.1
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    };
    private static final View.OnClickListener bxS = new View.OnClickListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    };
    protected hm ABk;
    protected float CJ;
    protected Context Gm;
    protected com.bytedance.sdk.component.adexpress.dynamic.animation.Qhi.cJ HzH;
    private float MQ;
    private float Qhi;
    protected int ROR;
    protected int Sf;
    protected float Tgh;
    protected int WAv;
    protected float ac;
    private float cJ;
    protected float fl;
    protected int hm;
    protected boolean hpZ;
    protected DynamicRootView iMK;
    com.bytedance.sdk.component.adexpress.dynamic.animation.view.Qhi kYc;
    protected View pA;
    private qMt qMt;
    private float tP;
    protected Sf zc;

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public float getShineValue() {
        return this.cJ;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public void setShineValue(float f2) {
        this.cJ = f2;
        postInvalidate();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public float getRippleValue() {
        return this.Qhi;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public void setRippleValue(float f2) {
        this.Qhi = f2;
        postInvalidate();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public float getMarqueeValue() {
        return this.tP;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public void setMarqueeValue(float f2) {
        this.tP = f2;
        postInvalidate();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public float getStretchValue() {
        return this.MQ;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public void setStretchValue(float f2) {
        this.MQ = f2;
        this.kYc.Qhi(this, f2);
    }

    public DynamicBaseWidget(Context context, DynamicRootView dynamicRootView, hm hmVar) {
        super(context);
        this.Gm = context;
        this.iMK = dynamicRootView;
        this.ABk = hmVar;
        this.ac = hmVar.Tgh();
        this.CJ = hmVar.ROR();
        this.fl = hmVar.Sf();
        this.Tgh = hmVar.hm();
        this.hm = (int) CQU.Qhi(this.Gm, this.ac);
        this.WAv = (int) CQU.Qhi(this.Gm, this.CJ);
        this.ROR = (int) CQU.Qhi(this.Gm, this.fl);
        this.Sf = (int) CQU.Qhi(this.Gm, this.Tgh);
        Sf sf = new Sf(hmVar.WAv());
        this.zc = sf;
        if (sf.kYc() > 0) {
            this.ROR += this.zc.kYc() * 2;
            this.Sf += this.zc.kYc() * 2;
            this.hm -= this.zc.kYc();
            this.WAv -= this.zc.kYc();
            List<hm> Gm = hmVar.Gm();
            if (Gm != null) {
                for (hm hmVar2 : Gm) {
                    hmVar2.ac(hmVar2.Tgh() + CQU.cJ(this.Gm, this.zc.kYc()));
                    hmVar2.CJ(hmVar2.ROR() + CQU.cJ(this.Gm, this.zc.kYc()));
                    hmVar2.Qhi(CQU.cJ(this.Gm, this.zc.kYc()));
                    hmVar2.cJ(CQU.cJ(this.Gm, this.zc.kYc()));
                }
            }
        }
        this.hpZ = this.zc.iMK() > 0.0d;
        this.kYc = new com.bytedance.sdk.component.adexpress.dynamic.animation.view.Qhi();
    }

    public void setShouldInvisible(boolean z) {
        this.hpZ = z;
    }

    public boolean getBeginInvisibleAndShow() {
        return this.hpZ;
    }

    public boolean ac() {
        hm();
        Tgh();
        CJ();
        return true;
    }

    public void Qhi(int i) {
        Sf sf = this.zc;
        if (sf != null && sf.Qhi(i)) {
            hm();
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt != null && (getChildAt(i2) instanceof DynamicBaseWidget)) {
                    ((DynamicBaseWidget) childAt).Qhi(i);
                }
            }
        }
    }

    protected boolean CJ() {
        View.OnTouchListener onTouchListener;
        View.OnClickListener onClickListener;
        View view = this.pA;
        if (view == null) {
            view = this;
        }
        if (fl()) {
            onTouchListener = (View.OnTouchListener) getDynamicClickListener();
            onClickListener = (View.OnClickListener) getDynamicClickListener();
        } else {
            onTouchListener = EBS;
            onClickListener = bxS;
        }
        if (onTouchListener != null && onClickListener != null) {
            view.setOnTouchListener(onTouchListener);
            view.setOnClickListener(onClickListener);
            int Qhi = com.bytedance.sdk.component.adexpress.dynamic.cJ.Qhi.Qhi(this.zc);
            if (Qhi == 2 || Qhi == 3) {
                view.setOnClickListener(bxS);
            } else {
                view.setOnClickListener(onClickListener);
            }
        }
        Qhi(view);
        cJ(view);
        return true;
    }

    protected void Qhi(View view) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(IabUtils.KEY_WIDTH, this.ABk.Sf());
            jSONObject.put(IabUtils.KEY_HEIGHT, this.ABk.hm());
            if (com.bytedance.sdk.component.adexpress.fl.cJ()) {
                view.setTag(com.bytedance.sdk.component.adexpress.dynamic.Qhi.MQ, this.zc.es());
                view.setTag(com.bytedance.sdk.component.adexpress.dynamic.Qhi.qMt, this.ABk.WAv().cJ());
                view.setTag(com.bytedance.sdk.component.adexpress.dynamic.Qhi.EBS, this.ABk.ac());
                view.setTag(com.bytedance.sdk.component.adexpress.dynamic.Qhi.bxS, jSONObject.toString());
                return;
            }
            view.setTag(2097610717, this.zc.es());
            view.setTag(2097610715, this.ABk.WAv().cJ());
            view.setTag(2097610714, this.ABk.ac());
            view.setTag(2097610713, jSONObject.toString());
            int Qhi = com.bytedance.sdk.component.adexpress.dynamic.cJ.Qhi.Qhi(this.zc);
            if (Qhi == 1) {
                view.setTag(2097610707, new Pair(this.zc.CQU(), Long.valueOf(this.zc.pM())));
                view.setTag(2097610708, Integer.valueOf(Qhi));
            }
        } catch (JSONException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void cJ(View view) {
        ROR fl;
        hm hmVar = this.ABk;
        if (hmVar == null || (fl = hmVar.WAv().fl()) == null) {
            return;
        }
        view.setTag(2097610716, Boolean.valueOf(fl.LcF()));
    }

    public boolean fl() {
        Sf sf = this.zc;
        return (sf == null || sf.Eh() == 0) ? false : true;
    }

    public void Tgh() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.ROR, this.Sf);
        layoutParams.topMargin = this.WAv;
        layoutParams.leftMargin = this.hm;
        layoutParams.setMarginStart(layoutParams.leftMargin);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }

    public int getClickArea() {
        return this.zc.Eh();
    }

    public String getImageObjectFit() {
        return this.zc.Hf();
    }

    public com.bytedance.sdk.component.adexpress.dynamic.fl.Qhi getDynamicClickListener() {
        return this.iMK.getDynamicClickListener();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Drawable getBackgroundDrawable() {
        return Qhi(false, "");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Drawable Qhi(boolean z, String str) {
        String[] split;
        int[] iArr;
        int aP;
        if (!TextUtils.isEmpty(this.zc.zn())) {
            try {
                String zn = this.zc.zn();
                String substring = zn.substring(zn.indexOf("(") + 1, zn.length() - 1);
                if (substring.contains("rgba") && substring.contains("%")) {
                    split = new String[]{substring.substring(0, substring.indexOf(",")).trim(), substring.substring(substring.indexOf(",") + 1, substring.indexOf("%") + 1).trim(), substring.substring(substring.indexOf("%") + 2).trim()};
                    iArr = new int[]{Sf.Qhi(split[1]), Sf.Qhi(split[2])};
                } else {
                    split = substring.split(", ");
                    iArr = new int[]{Sf.Qhi(split[1].substring(0, 7)), Sf.Qhi(split[2].substring(0, 7))};
                }
                try {
                    double parseDouble = Double.parseDouble(substring.substring(substring.indexOf("linear-gradient(") + 1, substring.indexOf("deg")));
                    if (parseDouble > 225.0d && parseDouble < 315.0d) {
                        int i = iArr[1];
                        iArr[1] = iArr[0];
                        iArr[0] = i;
                    }
                } catch (Exception unused) {
                }
                GradientDrawable Qhi = Qhi(Qhi(split[0]), iArr);
                Qhi.setShape(0);
                Qhi.setCornerRadius(CQU.Qhi(this.Gm, this.zc.pA()));
                return Qhi;
            } catch (Exception unused2) {
                Drawable mutilBackgroundDrawable = getMutilBackgroundDrawable();
                if (mutilBackgroundDrawable != null) {
                    return mutilBackgroundDrawable;
                }
            }
        }
        GradientDrawable drawable = getDrawable();
        drawable.setShape(0);
        float Qhi2 = CQU.Qhi(this.Gm, this.zc.pA());
        drawable.setCornerRadius(Qhi2);
        if (Qhi2 < 1.0f) {
            float Qhi3 = CQU.Qhi(this.Gm, this.zc.sDy());
            float Qhi4 = CQU.Qhi(this.Gm, this.zc.lB());
            float Qhi5 = CQU.Qhi(this.Gm, this.zc.lG());
            float Qhi6 = CQU.Qhi(this.Gm, this.zc.Jma());
            float[] fArr = new float[8];
            if (Qhi3 > 0.0f) {
                fArr[0] = Qhi3;
                fArr[1] = Qhi3;
            }
            if (Qhi4 > 0.0f) {
                fArr[2] = Qhi4;
                fArr[3] = Qhi4;
            }
            if (Qhi5 > 0.0f) {
                fArr[4] = Qhi5;
                fArr[5] = Qhi5;
            }
            if (Qhi6 > 0.0f) {
                fArr[6] = Qhi6;
                fArr[7] = Qhi6;
            }
            drawable.setCornerRadii(fArr);
        }
        if (z) {
            aP = Color.parseColor(str);
        } else {
            aP = this.zc.aP();
        }
        drawable.setColor(aP);
        if (this.zc.HzH() > 0.0f) {
            drawable.setStroke((int) CQU.Qhi(this.Gm, this.zc.HzH()), this.zc.hpZ());
            return drawable;
        } else if (this.zc.kYc() > 0) {
            drawable.setStroke(this.zc.kYc(), this.zc.hpZ());
            drawable.setAlpha(50);
            if (TextUtils.equals(this.ABk.WAv().cJ(), "video-vd")) {
                setLayerType(1, null);
                return new ac((int) Qhi2, this.zc.kYc());
            }
            return drawable;
        } else {
            return drawable;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public cJ Qhi(Bitmap bitmap) {
        return new Qhi(bitmap, null);
    }

    protected Drawable getMutilBackgroundDrawable() {
        try {
            return new LayerDrawable(Qhi(cJ(this.zc.zn().replaceAll("/\\*.*\\*/", ""))));
        } catch (Exception unused) {
            return null;
        }
    }

    private Drawable[] Qhi(List<String> list) {
        Drawable[] drawableArr = new Drawable[list.size()];
        for (int i = 0; i < list.size(); i++) {
            String str = list.get(i);
            if (str.contains("linear-gradient")) {
                String[] split = str.substring(str.indexOf("(") + 1, str.length() - 1).split(", ");
                int length = split.length - 1;
                int[] iArr = new int[length];
                int i2 = 0;
                while (i2 < length) {
                    int i3 = i2 + 1;
                    iArr[i2] = Sf.Qhi(split[i3].substring(0, 7));
                    i2 = i3;
                }
                GradientDrawable Qhi = Qhi(Qhi(split[0]), iArr);
                Qhi.setShape(0);
                Qhi.setCornerRadius(CQU.Qhi(this.Gm, this.zc.pA()));
                drawableArr[(list.size() - 1) - i] = Qhi;
            }
        }
        return drawableArr;
    }

    private List<String> cJ(String str) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        boolean z = false;
        int i2 = 0;
        for (int i3 = 0; i3 < str.length(); i3++) {
            if (str.charAt(i3) == '(') {
                i++;
                z = true;
            } else if (str.charAt(i3) == ')' && i - 1 == 0 && z) {
                int i4 = i3 + 1;
                arrayList.add(str.substring(i2, i4));
                i2 = i4;
                z = false;
            }
        }
        return arrayList;
    }

    protected GradientDrawable getDrawable() {
        return new GradientDrawable();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public GradientDrawable Qhi(GradientDrawable.Orientation orientation, int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            return new GradientDrawable();
        }
        if (iArr.length == 1) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(iArr[0]);
            return gradientDrawable;
        }
        return new GradientDrawable(orientation, iArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public GradientDrawable.Orientation Qhi(String str) {
        try {
            int parseFloat = (int) Float.parseFloat(str.substring(0, str.length() - 3));
            if (parseFloat <= 90) {
                return GradientDrawable.Orientation.LEFT_RIGHT;
            }
            if (parseFloat <= 180) {
                return GradientDrawable.Orientation.TOP_BOTTOM;
            }
            if (parseFloat <= 270) {
                return GradientDrawable.Orientation.RIGHT_LEFT;
            }
            return GradientDrawable.Orientation.BOTTOM_TOP;
        } catch (Exception unused) {
            return GradientDrawable.Orientation.LEFT_RIGHT;
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.kYc.Qhi(canvas, this, this);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        com.bytedance.sdk.component.adexpress.dynamic.animation.view.Qhi qhi = this.kYc;
        View view = this.pA;
        if (view == null) {
            view = this;
        }
        qhi.Qhi(view, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ROR();
        Qhi();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        qMt qmt = this.qMt;
        if (qmt == null || !z) {
            return;
        }
        qmt.onResume();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        cJ();
        super.onDetachedFromWindow();
    }

    public void ROR() {
        if (Sf()) {
            return;
        }
        View view = this.pA;
        if (view == null) {
            view = this;
        }
        com.bytedance.sdk.component.adexpress.dynamic.animation.Qhi.cJ cJVar = new com.bytedance.sdk.component.adexpress.dynamic.animation.Qhi.cJ(view, this.ABk.WAv().fl().pF());
        this.HzH = cJVar;
        cJVar.Qhi();
    }

    public void cJ() {
        com.bytedance.sdk.component.adexpress.dynamic.animation.Qhi.cJ cJVar = this.HzH;
        if (cJVar != null) {
            cJVar.cJ();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean Sf() {
        hm hmVar = this.ABk;
        return hmVar == null || hmVar.WAv() == null || this.ABk.WAv().fl() == null || this.ABk.WAv().fl().pF() == null;
    }

    public int getDynamicWidth() {
        return this.ROR;
    }

    public int getDynamicHeight() {
        return this.Sf;
    }

    public ROR getDynamicLayoutBrickValue() {
        com.bytedance.sdk.component.adexpress.dynamic.ac.Tgh WAv;
        hm hmVar = this.ABk;
        if (hmVar == null || (WAv = hmVar.WAv()) == null) {
            return null;
        }
        return WAv.fl();
    }

    private void Qhi() {
        if (isShown()) {
            int Qhi = com.bytedance.sdk.component.adexpress.dynamic.cJ.Qhi.Qhi(this.zc);
            if (Qhi == 2) {
                if (this.qMt == null) {
                    this.qMt = new qMt(getContext().getApplicationContext(), 1);
                }
                new Object() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget.3
                };
                iMK renderRequest = this.iMK.getRenderRequest();
                if (renderRequest != null) {
                    renderRequest.pA();
                    renderRequest.qMt();
                    renderRequest.tP();
                }
            } else if (Qhi == 3) {
                if (this.qMt == null) {
                    this.qMt = new qMt(getContext().getApplicationContext(), 2);
                }
                new Object() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget.4
                };
                iMK renderRequest2 = this.iMK.getRenderRequest();
                if (renderRequest2 != null) {
                    renderRequest2.HzH();
                    renderRequest2.EBS();
                    renderRequest2.kYc();
                    renderRequest2.MQ();
                }
            }
            qMt qmt = this.qMt;
            if (qmt != null) {
                qmt.onResume();
            }
        }
    }
}
