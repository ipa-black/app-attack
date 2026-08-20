package com.bytedance.sdk.component.widget;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.webkit.WebView;
import com.bytedance.sdk.component.utils.CQU;
import com.bytedance.sdk.component.utils.Sf;
import com.bytedance.sdk.component.utils.pM;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* compiled from: ArbitrageOnTouchListener.java */
/* loaded from: classes2.dex */
public class Qhi implements View.OnTouchListener, CQU.Qhi {
    private int ABk;
    private final List<Integer> CJ;
    private long Gm;
    private float HzH;
    private View.OnTouchListener MQ;
    private volatile float ROR;
    private volatile float Sf;
    private final Context Tgh;
    private final int ac;
    private final int cJ;
    private final int fl;
    private boolean hpZ;
    private float kYc;
    private ViewConfiguration qMt;
    private String tP;
    private long zc;
    private float hm = -1.0f;
    private float WAv = -1.0f;
    private final Handler pA = new CQU(Sf.Qhi().getLooper(), this);
    InterfaceC0203Qhi Qhi = new InterfaceC0203Qhi() { // from class: com.bytedance.sdk.component.widget.Qhi.1
        @Override // com.bytedance.sdk.component.widget.Qhi.InterfaceC0203Qhi
        public void Qhi() {
            if (Qhi.this.hm == -1.0f && Qhi.this.WAv == -1.0f && Qhi.this.zc == -1) {
                new Object[]{"first trigger triggerJump()", ", mTriggerX: ", Float.valueOf(Qhi.this.hm), ", mTriggerY: ", Float.valueOf(Qhi.this.WAv)};
                Qhi qhi = Qhi.this;
                qhi.hm = qhi.ROR;
                Qhi qhi2 = Qhi.this;
                qhi2.WAv = qhi2.Sf;
                Qhi qhi3 = Qhi.this;
                qhi3.zc = qhi3.Gm;
                Qhi.this.hpZ = true;
            }
            new Object[]{"everytime trigger triggerJump()", ", mTriggerX: ", Float.valueOf(Qhi.this.hm), ", mTriggerY: ", Float.valueOf(Qhi.this.WAv)};
        }

        @Override // com.bytedance.sdk.component.widget.Qhi.InterfaceC0203Qhi
        public void Qhi(int i) {
            Qhi.this.ABk = i;
            Qhi.this.cJ();
        }
    };
    private int EBS = -1;
    private final List<Integer> iMK = new ArrayList();

    /* compiled from: ArbitrageOnTouchListener.java */
    /* renamed from: com.bytedance.sdk.component.widget.Qhi$Qhi  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0203Qhi {
        void Qhi();

        void Qhi(int i);
    }

    public Qhi(Context context, int i, int i2, List<Integer> list, int i3) {
        this.Tgh = context;
        if (i == -1) {
            this.cJ = pM.Qhi(context);
        } else {
            this.cJ = pM.Qhi(context, i);
        }
        this.ac = pM.Qhi(context, i2);
        this.CJ = list;
        this.fl = i3;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        new Object[]{"action: ", Integer.valueOf(action), ", x: ", Float.valueOf(motionEvent.getX()), ",y: ", Float.valueOf(motionEvent.getY())};
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        this.Gm = SystemClock.elapsedRealtime();
        this.ROR = x;
        this.Sf = y;
        if (action == 0) {
            this.HzH = x;
            this.kYc = y;
            new Object[]{"ACTION_DOWN: ", "downX: ", Float.valueOf(x), "downY: ", Float.valueOf(this.kYc)};
        } else if (action == 1) {
            new Object[]{"ACTION_UP: ", "upX: ", Float.valueOf(x), "upY: ", Float.valueOf(y)};
            if (Qhi(x, y)) {
                int Qhi = Qhi(this.ROR, this.Sf, this.Gm);
                boolean z = !this.iMK.contains(Integer.valueOf(this.ABk));
                Qhi(view, motionEvent, Qhi, z);
                if (z) {
                    this.iMK.add(Integer.valueOf(this.ABk));
                }
                if (Qhi == 0) {
                    motionEvent.setAction(3);
                }
            }
        }
        View.OnTouchListener onTouchListener = this.MQ;
        if (onTouchListener != null) {
            return onTouchListener.onTouch(view, motionEvent);
        }
        return false;
    }

    public void Qhi(View.OnTouchListener onTouchListener) {
        this.MQ = onTouchListener;
    }

    public InterfaceC0203Qhi Qhi() {
        return this.Qhi;
    }

    private void Qhi(View view, MotionEvent motionEvent, int i, boolean z) {
        String url;
        JSONObject jSONObject = new JSONObject();
        WebView webView = view instanceof WebView ? (WebView) view : null;
        if (webView != null) {
            try {
                url = webView.getUrl();
            } catch (Throwable unused) {
            }
        } else {
            url = "";
        }
        jSONObject.put("arbi_current_url", url);
        jSONObject.put("click_x", motionEvent.getX());
        jSONObject.put("click_y", motionEvent.getY());
        int i2 = 1;
        if (i != 0) {
            i2 = 0;
        }
        jSONObject.put("is_interceptor", i2);
        jSONObject.put("is_first_click", z ? 1 : 0);
        jSONObject.put("click_timestamp", System.currentTimeMillis());
        jSONObject.put("arbi_interceptor_type", i);
        jSONObject.put("current_url_index", this.ABk);
        Message obtain = Message.obtain();
        obtain.what = 100;
        obtain.obj = jSONObject;
        this.pA.sendMessageDelayed(obtain, 200L);
    }

    private boolean Qhi(float f2, float f3) {
        if (this.qMt == null) {
            this.qMt = ViewConfiguration.get(this.Tgh);
        }
        if (this.EBS == -1) {
            this.EBS = this.qMt.getScaledTouchSlop();
        }
        new Object[]{"mTouchSlop is: ", Integer.valueOf(this.EBS)};
        if (Math.abs(f2 - this.HzH) <= this.EBS && Math.abs(f3 - this.kYc) <= this.EBS) {
            new Object[]{"isClick", "upX: ", Float.valueOf(f2), " ,downX: ", Float.valueOf(this.HzH), " ,upY: ", Float.valueOf(f3), "downY: ", Float.valueOf(this.kYc)};
            return true;
        }
        new Object[]{"notClick", "upX: ", Float.valueOf(f2), " ,downX: ", Float.valueOf(this.HzH), " ,upY: ", Float.valueOf(f3), "downY: ", Float.valueOf(this.kYc)};
        return false;
    }

    public void Qhi(String str) {
        this.tP = str;
    }

    private int Qhi(float f2, float f3, long j) {
        if (this.hm == -1.0f && this.WAv == -1.0f && this.zc == -1) {
            return 1;
        }
        new Object[]{"mInterceptorPageList: ", this.CJ, "mPageIndex:", Integer.valueOf(this.ABk)};
        if (this.CJ.contains(Integer.valueOf(this.ABk))) {
            if (j - this.zc > this.fl) {
                cJ();
                return 3;
            }
            float abs = Math.abs(f2 - this.hm);
            float abs2 = Math.abs(f3 - this.WAv);
            new Object[]{"mTouchX: ", Float.valueOf(f2), ", mTriggerX : ", Float.valueOf(this.hm), " ,x distance：", Float.valueOf(abs)};
            new Object[]{"mTouchY: ", Float.valueOf(f3), ", mTriggerY: ", Float.valueOf(this.WAv), " ,y distance：", Float.valueOf(abs2)};
            new Object[]{"mInterceptorXPx: ", Integer.valueOf(this.cJ), ", mInterceptorYPx: ", Integer.valueOf(this.ac)};
            if (abs > this.cJ / 2.0f || abs2 > this.ac / 2.0f) {
                cJ();
                return 4;
            }
            return 0;
        }
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ() {
        this.hm = -1.0f;
        this.WAv = -1.0f;
        this.zc = -1L;
    }

    @Override // com.bytedance.sdk.component.utils.CQU.Qhi
    public void Qhi(Message message) {
        int i = message.what;
        Object obj = message.obj;
        JSONObject jSONObject = new JSONObject();
        if (i == 100) {
            if (obj instanceof JSONObject) {
                jSONObject = (JSONObject) obj;
                try {
                    jSONObject.put("is_trigger_jump", this.hpZ ? 1 : 0);
                    this.hpZ = false;
                } catch (Throwable unused) {
                }
            }
            if (com.bytedance.sdk.component.widget.Qhi.Qhi.Qhi().cJ() != null) {
                com.bytedance.sdk.component.widget.Qhi.Qhi.Qhi().cJ().Qhi(this.tP, "arbitrage_click_event", jSONObject);
            }
        }
    }
}
