package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.bytedance.sdk.component.utils.CQU;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public class EmptyView extends View implements CQU.Qhi {
    private final Runnable ABk;
    private View CJ;
    private ViewTreeObserver.OnGlobalLayoutListener Gm;
    private boolean Qhi;
    private boolean ROR;
    private int Sf;
    private List<View> Tgh;
    private final AtomicBoolean WAv;
    private Qhi ac;
    private boolean cJ;
    private List<View> fl;
    private final Handler hm;
    private boolean zc;

    /* loaded from: classes2.dex */
    public interface Qhi {
        void Qhi();

        void Qhi(View view);

        void Qhi(boolean z);

        void cJ();
    }

    public EmptyView(Context context, View view) {
        super(HzH.Qhi());
        this.hm = new com.bytedance.sdk.component.utils.CQU(iMK.cJ().getLooper(), this);
        this.WAv = new AtomicBoolean(true);
        this.zc = false;
        this.ABk = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.EmptyView.3
            @Override // java.lang.Runnable
            public void run() {
                if (EmptyView.this.ac != null) {
                    EmptyView.this.ac.Qhi(EmptyView.this.CJ);
                }
            }
        };
        this.CJ = view;
        setLayoutParams(new ViewGroup.LayoutParams(0, 0));
        this.Gm = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.bytedance.sdk.openadsdk.core.EmptyView.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (EmptyView.this.zc) {
                    return;
                }
                EmptyView.this.fl();
                EmptyView.this.CJ();
            }
        };
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        Qhi qhi = this.ac;
        if (qhi != null) {
            qhi.Qhi(z);
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.ROR = false;
        cJ();
        if (this.Gm != null) {
            getViewTreeObserver().addOnGlobalLayoutListener(this.Gm);
        }
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        cJ();
    }

    private void cJ() {
        Qhi qhi;
        if (!this.WAv.getAndSet(false) || (qhi = this.ac) == null) {
            return;
        }
        qhi.Qhi();
    }

    private void ac() {
        Qhi qhi;
        if (this.WAv.getAndSet(true) || (qhi = this.ac) == null) {
            return;
        }
        qhi.cJ();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        fl();
        this.ROR = true;
        ac();
        Qhi(false);
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        ac();
    }

    public void setRefClickViews(List<View> list) {
        this.fl = list;
    }

    public void setRefCreativeViews(List<View> list) {
        this.Tgh = list;
    }

    public void Qhi() {
        Qhi(this.fl, (com.bytedance.sdk.openadsdk.core.cJ.ac) null);
        Qhi(this.Tgh, (com.bytedance.sdk.openadsdk.core.cJ.ac) null);
    }

    public void Qhi(List<View> list, com.bytedance.sdk.openadsdk.core.cJ.ac acVar) {
        if (com.bytedance.sdk.component.utils.Gm.cJ(list)) {
            for (View view : list) {
                if (view != null) {
                    view.setOnClickListener(acVar);
                    view.setOnTouchListener(acVar);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void CJ() {
        if (!this.cJ || this.Qhi) {
            return;
        }
        this.Qhi = true;
        this.hm.sendEmptyMessage(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fl() {
        if (this.Qhi) {
            this.hm.removeCallbacksAndMessages(null);
            this.Qhi = false;
        }
    }

    public void setNeedCheckingShow(boolean z) {
        this.cJ = z;
        if (!z && this.Qhi) {
            fl();
        } else if (!z || this.Qhi) {
        } else {
            CJ();
        }
    }

    public void setCallback(Qhi qhi) {
        this.ac = qhi;
    }

    public void setAdType(int i) {
        this.Sf = i;
    }

    @Override // com.bytedance.sdk.component.utils.CQU.Qhi
    public void Qhi(Message message) {
        if (message.what == 1 && this.Qhi) {
            if (Tgh() && sDy.Qhi(this.CJ, 20, this.Sf)) {
                fl();
                this.zc = true;
                iMK.ac().post(this.ABk);
                Qhi(true);
                return;
            }
            this.hm.sendEmptyMessageDelayed(1, 1000L);
        }
    }

    private boolean Tgh() {
        View view = this.CJ;
        if (view instanceof NativeExpressView) {
            return ((NativeExpressView) view).pA();
        }
        return true;
    }

    private void Qhi(final boolean z) {
        final ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        com.bytedance.sdk.component.utils.Sf.cJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.EmptyView.2
            @Override // java.lang.Runnable
            public void run() {
                ViewTreeObserver viewTreeObserver2;
                if (EmptyView.this.Gm != null && (viewTreeObserver2 = viewTreeObserver) != null) {
                    try {
                        viewTreeObserver2.removeOnGlobalLayoutListener(EmptyView.this.Gm);
                    } catch (Exception unused) {
                    }
                }
                if (z) {
                    EmptyView.this.Gm = null;
                }
            }
        });
    }
}
