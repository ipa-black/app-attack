package com.bytedance.adsdk.ugeno.swiper;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.adsdk.ugeno.swiper.indicator.DotIndicator;
import com.bytedance.adsdk.ugeno.viewpager.ViewPager;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
/* loaded from: classes2.dex */
public abstract class BaseSwiper<T> extends FrameLayout implements ViewPager.fl {
    private boolean ABk;
    private int CJ;
    private boolean Gm;
    private DotIndicator HzH;
    private final Runnable MQ;
    protected List<T> Qhi;
    private int ROR;
    private String Sf;
    private int Tgh;
    private boolean WAv;
    private int ac;
    protected ViewPager cJ;
    private int fl;
    private float hm;
    private int hpZ;
    private int iMK;
    private Qhi kYc;
    private int pA;
    private final Runnable qMt;
    private com.bytedance.adsdk.ugeno.swiper.Qhi tP;
    private boolean zc;

    public abstract View ROR(int i);

    @Override // com.bytedance.adsdk.ugeno.viewpager.ViewPager.fl
    public void hm(int i) {
    }

    public BaseSwiper(Context context) {
        super(context);
        this.Qhi = new CopyOnWriteArrayList();
        this.ac = 2000;
        this.CJ = 500;
        this.fl = 10;
        this.Tgh = -1;
        this.ROR = -1;
        this.Sf = "normal";
        this.hm = 1.0f;
        this.WAv = true;
        this.Gm = true;
        this.zc = true;
        this.ABk = true;
        this.iMK = 0;
        this.pA = 0;
        this.hpZ = 0;
        this.MQ = new Runnable() { // from class: com.bytedance.adsdk.ugeno.swiper.BaseSwiper.1
            @Override // java.lang.Runnable
            public void run() {
                int currentItem = BaseSwiper.this.cJ.getCurrentItem() + 1;
                if (BaseSwiper.this.zc) {
                    if (currentItem >= Integer.MAX_VALUE) {
                        BaseSwiper.this.cJ.Qhi(LockFreeTaskQueueCore.MAX_CAPACITY_MASK, false);
                    } else {
                        BaseSwiper.this.cJ.Qhi(currentItem, true);
                    }
                } else if (currentItem >= BaseSwiper.this.cJ.getAdapter().Qhi()) {
                    BaseSwiper.this.cJ.Qhi(0, false);
                } else {
                    BaseSwiper.this.cJ.Qhi(currentItem, true);
                }
            }
        };
        this.qMt = new Runnable() { // from class: com.bytedance.adsdk.ugeno.swiper.BaseSwiper.2
            @Override // java.lang.Runnable
            public void run() {
                if (BaseSwiper.this.Gm) {
                    int currentItem = BaseSwiper.this.cJ.getCurrentItem() + 1;
                    if (BaseSwiper.this.zc) {
                        if (currentItem >= Integer.MAX_VALUE) {
                            BaseSwiper.this.cJ.Qhi(LockFreeTaskQueueCore.MAX_CAPACITY_MASK, false);
                        } else {
                            BaseSwiper.this.cJ.Qhi(currentItem, true);
                        }
                        BaseSwiper baseSwiper = BaseSwiper.this;
                        baseSwiper.postDelayed(baseSwiper.qMt, BaseSwiper.this.ac);
                    } else if (currentItem >= BaseSwiper.this.cJ.getAdapter().Qhi()) {
                        BaseSwiper.this.cJ.Qhi(0, false);
                        BaseSwiper baseSwiper2 = BaseSwiper.this;
                        baseSwiper2.postDelayed(baseSwiper2.qMt, BaseSwiper.this.ac);
                    } else {
                        BaseSwiper.this.cJ.Qhi(currentItem, true);
                        BaseSwiper baseSwiper3 = BaseSwiper.this;
                        baseSwiper3.postDelayed(baseSwiper3.qMt, BaseSwiper.this.ac);
                    }
                }
            }
        };
        this.cJ = new cJ(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        addView(this.cJ, layoutParams);
        DotIndicator dotIndicator = new DotIndicator(context);
        this.HzH = dotIndicator;
        addView(dotIndicator);
    }

    public BaseSwiper Qhi(boolean z) {
        this.Gm = z;
        cJ();
        return this;
    }

    public BaseSwiper Qhi(int i) {
        this.ac = i;
        cJ();
        return this;
    }

    public BaseSwiper cJ(boolean z) {
        this.WAv = z;
        return this;
    }

    public BaseSwiper cJ(int i) {
        this.HzH.setSelectedColor(i);
        return this;
    }

    public BaseSwiper ac(int i) {
        this.HzH.setUnSelectedColor(i);
        return this;
    }

    public BaseSwiper ac(boolean z) {
        this.HzH.setLoop(z);
        if (this.zc != z) {
            int Qhi2 = com.bytedance.adsdk.ugeno.swiper.cJ.Qhi(z, this.cJ.getCurrentItem(), this.Qhi.size());
            this.zc = z;
            Qhi qhi = this.kYc;
            if (qhi != null) {
                qhi.ac();
                this.cJ.setCurrentItem(Qhi2);
            }
        }
        return this;
    }

    public BaseSwiper Qhi(float f2) {
        this.hm = f2;
        return this;
    }

    public BaseSwiper Qhi(String str) {
        this.Sf = str;
        Qhi(str, this.fl, this.Tgh, this.ROR, true);
        return this;
    }

    public BaseSwiper CJ(int i) {
        this.fl = i;
        Qhi(this.Sf, i, this.Tgh, this.ROR, true);
        return this;
    }

    public BaseSwiper fl(int i) {
        this.Tgh = i;
        Qhi(this.Sf, this.fl, i, this.ROR, true);
        return this;
    }

    public BaseSwiper Tgh(int i) {
        this.ROR = i;
        Qhi(this.Sf, this.fl, this.Tgh, i, true);
        return this;
    }

    public void Qhi(String str, int i, int i2, int i3, boolean z) {
        Qhi qhi = this.kYc;
        if (qhi != null) {
            qhi.ac();
        }
        setClipChildren(false);
        this.cJ.setClipChildren(false);
        this.cJ.setPageMargin(i);
        ViewGroup.LayoutParams layoutParams = this.cJ.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.leftMargin = i2 + i;
            marginLayoutParams.rightMargin = i3 + i;
            this.cJ.setLayoutParams(layoutParams);
        }
        if (TextUtils.equals(str, "linear")) {
            this.cJ.Qhi(false, (ViewPager.Tgh) new com.bytedance.adsdk.ugeno.swiper.Qhi.Qhi());
        } else {
            this.cJ.Qhi(false, (ViewPager.Tgh) null);
        }
        this.cJ.setOffscreenPageLimit((int) this.hm);
    }

    public void Qhi() {
        int i;
        Qhi(this.Sf, this.fl, this.Tgh, this.ROR, true);
        if (this.kYc == null) {
            this.kYc = new Qhi();
            this.cJ.Qhi((ViewPager.fl) this);
            this.cJ.setAdapter(this.kYc);
        }
        int i2 = this.iMK;
        if (i2 < 0 || i2 >= this.Qhi.size()) {
            this.iMK = 0;
        }
        if (this.zc) {
            i = this.iMK + LockFreeTaskQueueCore.MAX_CAPACITY_MASK;
        } else {
            i = this.iMK;
        }
        this.cJ.Qhi(i, true);
        if (!this.zc) {
            Sf(i);
        }
        if (this.Gm) {
            cJ();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View Qhi(int i, int i2) {
        if (this.Qhi.size() == 0) {
            return new View(getContext());
        }
        View ROR = ROR(i2);
        FrameLayout frameLayout = new FrameLayout(getContext());
        if (ROR instanceof ViewGroup) {
            frameLayout.setClipChildren(true);
        }
        if (ROR.getParent() instanceof ViewGroup) {
            ((ViewGroup) ROR.getParent()).removeView(ROR);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        frameLayout.addView(ROR, layoutParams);
        frameLayout.addView(new View(getContext()), new FrameLayout.LayoutParams(-1, -1));
        return frameLayout;
    }

    public BaseSwiper<T> Qhi(T t) {
        if (t != null) {
            this.Qhi.add(t);
            if (this.WAv) {
                this.HzH.cJ();
            }
        }
        Qhi qhi = this.kYc;
        if (qhi != null) {
            qhi.ac();
            this.HzH.Qhi(this.iMK, this.cJ.getCurrentItem());
        }
        return this;
    }

    @Override // com.bytedance.adsdk.ugeno.viewpager.ViewPager.fl
    public void Qhi(int i, float f2, int i2) {
        if (this.tP != null) {
            com.bytedance.adsdk.ugeno.swiper.cJ.Qhi(this.zc, i, this.Qhi.size());
        }
    }

    @Override // com.bytedance.adsdk.ugeno.viewpager.ViewPager.fl
    public void Sf(int i) {
        if (this.tP != null) {
            int Qhi2 = com.bytedance.adsdk.ugeno.swiper.cJ.Qhi(this.zc, i, this.Qhi.size());
            this.tP.Qhi(this.zc, Qhi2, i, Qhi2 == 0, Qhi2 == this.Qhi.size() - 1);
        }
        if (this.WAv) {
            this.HzH.Qhi(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class Qhi extends com.bytedance.adsdk.ugeno.viewpager.cJ {
        @Override // com.bytedance.adsdk.ugeno.viewpager.cJ
        public int Qhi(Object obj) {
            return -2;
        }

        @Override // com.bytedance.adsdk.ugeno.viewpager.cJ
        public boolean Qhi(View view, Object obj) {
            return view == obj;
        }

        Qhi() {
        }

        @Override // com.bytedance.adsdk.ugeno.viewpager.cJ
        public int Qhi() {
            if (BaseSwiper.this.zc) {
                return Integer.MAX_VALUE;
            }
            return BaseSwiper.this.Qhi.size();
        }

        @Override // com.bytedance.adsdk.ugeno.viewpager.cJ
        public Object Qhi(ViewGroup viewGroup, int i) {
            View Qhi = BaseSwiper.this.Qhi(i, com.bytedance.adsdk.ugeno.swiper.cJ.Qhi(BaseSwiper.this.zc, i, BaseSwiper.this.Qhi.size()));
            viewGroup.addView(Qhi);
            return Qhi;
        }

        @Override // com.bytedance.adsdk.ugeno.viewpager.cJ
        public void Qhi(ViewGroup viewGroup, int i, Object obj) {
            viewGroup.removeView((View) obj);
        }

        @Override // com.bytedance.adsdk.ugeno.viewpager.cJ
        public float Qhi(int i) {
            if (BaseSwiper.this.hm <= 0.0f) {
                return 1.0f;
            }
            return 1.0f / BaseSwiper.this.hm;
        }
    }

    public void cJ() {
        removeCallbacks(this.qMt);
        postDelayed(this.qMt, this.ac);
    }

    public void ac() {
        removeCallbacks(this.qMt);
    }

    public void WAv(int i) {
        Qhi(this.Sf, this.fl, this.Tgh, this.ROR, true);
        if (this.kYc == null) {
            this.kYc = new Qhi();
            this.cJ.Qhi((ViewPager.fl) this);
            this.cJ.setAdapter(this.kYc);
        }
        if (this.zc) {
            if (i >= Integer.MAX_VALUE) {
                this.cJ.Qhi(LockFreeTaskQueueCore.MAX_CAPACITY_MASK, false);
            } else {
                this.cJ.Qhi(i, true);
            }
        } else if (i < 0 || i >= this.Qhi.size()) {
        } else {
            this.cJ.Qhi(i, true);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.Gm) {
            int action = motionEvent.getAction();
            if (action == 1 || action == 3 || action == 4) {
                cJ();
            } else if (action == 0) {
                ac();
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public int getCurrentItem() {
        return this.cJ.getCurrentItem();
    }

    public com.bytedance.adsdk.ugeno.viewpager.cJ getAdapter() {
        return this.cJ.getAdapter();
    }

    public ViewPager getViewPager() {
        return this.cJ;
    }

    public void setOnPageChangeListener(com.bytedance.adsdk.ugeno.swiper.Qhi qhi) {
        this.tP = qhi;
    }

    /* loaded from: classes2.dex */
    class cJ extends ViewPager {
        public cJ(Context context) {
            super(context);
        }

        @Override // com.bytedance.adsdk.ugeno.viewpager.ViewPager, android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (BaseSwiper.this.ABk) {
                try {
                    return super.onInterceptTouchEvent(motionEvent);
                } catch (Throwable unused) {
                    return false;
                }
            }
            return false;
        }

        @Override // com.bytedance.adsdk.ugeno.viewpager.ViewPager, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            try {
                return super.onTouchEvent(motionEvent);
            } catch (Throwable unused) {
                return false;
            }
        }
    }
}
