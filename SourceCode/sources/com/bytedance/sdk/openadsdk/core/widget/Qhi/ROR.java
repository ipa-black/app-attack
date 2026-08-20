package com.bytedance.sdk.openadsdk.core.widget.Qhi;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ViewTreeObserver;
import android.webkit.WebBackForwardList;
import android.webkit.WebView;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.component.utils.CQU;
import com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.iMK;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.zn;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
/* compiled from: WebArbitrageBehavior.java */
/* loaded from: classes2.dex */
public class ROR implements CQU.Qhi {
    float ABk;
    WebView CJ;
    float Gm;
    boolean HzH;
    private long NFd;
    Context Qhi;
    boolean ROR;
    boolean Sf;
    int WAv;
    tP cJ;
    String hm;
    long hpZ;
    float iMK;
    boolean kYc;
    float pA;
    private boolean sDy;
    long tP;
    float zc;
    private final Handler pM = new CQU(iMK.cJ().getLooper(), this);
    String ac = "landingpage";
    int Tgh = 0;
    private final String Eh = ".*\\/serp\\?sc=.*&clkt=\\d+$";
    private final String aP = ".*\\/\\?caf_results=.*&clkt=\\d+$";
    Qhi Dww = new Qhi() { // from class: com.bytedance.sdk.openadsdk.core.widget.Qhi.ROR.1
        @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.ROR.Qhi
        public void Qhi() {
            ROR.this.Sf = true;
            ROR.this.Tgh();
            ROR ror = ROR.this;
            ror.Qhi(2, ror.hm, ROR.this.WAv);
        }
    };
    GestureDetector CQU = new GestureDetector(HzH.Qhi(), new GestureDetector.SimpleOnGestureListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.Qhi.ROR.2
        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
            ROR.this.HzH = true;
            return false;
        }
    });
    int fl = HzH.CJ().rB();
    Map<Integer, Long> MQ = new HashMap();
    Map<Integer, Float> qMt = new HashMap();
    Map<Integer, Long> EBS = new HashMap();
    List<Integer> bxS = new ArrayList();

    /* compiled from: WebArbitrageBehavior.java */
    /* loaded from: classes2.dex */
    public interface Qhi {
        void Qhi();
    }

    public ROR(WebView webView, tP tPVar, Context context) {
        this.cJ = tPVar;
        this.CJ = webView;
        this.Qhi = context;
    }

    public void Qhi(String str) {
        this.ac = str;
    }

    public void cJ(String str) {
        this.hm = str;
        Sf();
        this.MQ.put(Integer.valueOf(this.WAv), Long.valueOf(SystemClock.elapsedRealtime()));
        this.EBS.put(Integer.valueOf(this.WAv), Long.valueOf(SystemClock.elapsedRealtime()));
        this.sDy = fl();
    }

    public void Qhi() {
        cJ(this.WAv);
    }

    public void Qhi(int i) {
        float height = (i + this.CJ.getHeight()) / zn.cJ(this.Qhi, this.CJ.getContentHeight());
        Float f2 = this.qMt.get(Integer.valueOf(this.WAv));
        float floatValue = f2 == null ? 0.0f : f2.floatValue();
        new Object[]{"onScrollChange, oldPerUnBox is:", Float.valueOf(floatValue), ", browsingPer is:", Float.valueOf(height), ", index is: ", Integer.valueOf(this.WAv)};
        if (height > floatValue) {
            this.qMt.put(Integer.valueOf(this.WAv), Float.valueOf(height));
        }
    }

    public void cJ() {
        this.CJ.getViewTreeObserver().addOnWindowFocusChangeListener(new ViewTreeObserver.OnWindowFocusChangeListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.Qhi.ROR.3
            @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
            public void onWindowFocusChanged(boolean z) {
                new Object[]{"trigger onWindowFocusChanged: ", Boolean.valueOf(z)};
                if (!z) {
                    if (!ROR.this.Sf) {
                        ROR.this.Tgh();
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        if (elapsedRealtime - ROR.this.NFd >= 50) {
                            ROR ror = ROR.this;
                            ror.Qhi(3, ror.hm, ROR.this.WAv);
                            ROR.this.NFd = elapsedRealtime;
                            return;
                        }
                        return;
                    }
                    ROR.this.Sf = false;
                }
                if (z) {
                    ROR.this.Sf();
                    ROR.this.MQ.put(Integer.valueOf(ROR.this.WAv), Long.valueOf(SystemClock.elapsedRealtime()));
                }
            }
        });
    }

    public void ac(String str) {
        if (this.ROR) {
            this.kYc = true;
        }
        if (this.WAv == 1 && !TextUtils.isEmpty(str) && str.contains("query=")) {
            int indexOf = str.indexOf("query=") + 6;
            int indexOf2 = str.indexOf("&", indexOf);
            if (indexOf < 0 || indexOf2 >= str.length() || indexOf2 <= indexOf) {
                return;
            }
            CJ(str.substring(indexOf, indexOf2));
        }
    }

    public void Qhi(MotionEvent motionEvent) {
        this.CQU.onTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            this.Gm = motionEvent.getX();
            this.zc = motionEvent.getY();
            this.hpZ = SystemClock.elapsedRealtime();
        } else if (action != 1) {
            if (action != 3) {
                return;
            }
            ac(2);
        } else {
            this.tP = SystemClock.elapsedRealtime() - this.hpZ;
            if (cJ(motionEvent)) {
                CJ();
            } else {
                ac(1);
            }
        }
    }

    public Qhi ac() {
        return this.Dww;
    }

    private void CJ(String str) {
        if (ROR()) {
            return;
        }
        com.bytedance.sdk.openadsdk.cJ.ac.Qhi(this.cJ, new Qhi.C0206Qhi().Qhi(this.hm).cJ(Uri.decode(str)).Qhi(), this.ac);
    }

    private void cJ(int i) {
        if (ROR() || this.bxS.contains(Integer.valueOf(i))) {
            return;
        }
        this.bxS.add(Integer.valueOf(i));
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Long l = this.EBS.get(Integer.valueOf(i));
        com.bytedance.sdk.openadsdk.cJ.ac.cJ(this.cJ, new Qhi.C0206Qhi().Qhi(this.hm).Qhi(this.WAv).WAv((float) (elapsedRealtime - (l != null ? l.longValue() : elapsedRealtime))).Qhi(), this.ac);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(int i, String str, int i2) {
        if (ROR()) {
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Long l = this.MQ.get(Integer.valueOf(i2));
        long longValue = l != null ? l.longValue() : elapsedRealtime;
        Float f2 = this.qMt.get(Integer.valueOf(i2));
        com.bytedance.sdk.openadsdk.cJ.ac.ac(this.cJ, new Qhi.C0206Qhi().Qhi(str).Qhi(i2).Sf((float) (elapsedRealtime - longValue)).hm(f2 == null ? 0.0f : f2.floatValue()).cJ(i).Qhi(), this.ac);
    }

    private void CJ() {
        if (ROR()) {
            return;
        }
        com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi Qhi2 = new Qhi.C0206Qhi().Qhi(this.hm).Qhi(this.WAv).CJ(this.Gm).fl(this.zc).Tgh(this.pA).ROR((float) this.tP).Qhi();
        Message obtain = Message.obtain();
        obtain.what = 100;
        obtain.obj = Qhi2;
        this.pM.sendMessageDelayed(obtain, 20L);
    }

    private void ac(int i) {
        if (ROR()) {
            return;
        }
        Tgh();
        this.ROR = true;
        com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi Qhi2 = new Qhi.C0206Qhi().Qhi(this.hm).Qhi(this.WAv).Qhi(this.Gm).cJ(this.zc).ac((float) this.tP).ac(i).Qhi();
        try {
            if (this.sDy) {
                WebView.HitTestResult hitTestResult = this.CJ.getHitTestResult();
                Qhi2.Qhi(hitTestResult.getExtra());
                Qhi2.Qhi(hitTestResult.getType());
            }
        } catch (Throwable unused) {
        }
        Message obtain = Message.obtain();
        obtain.what = 200;
        obtain.obj = Qhi2;
        this.pM.sendMessageDelayed(obtain, 100L);
    }

    private boolean fl() {
        try {
            int i = this.WAv;
            if (i == 2 || i == 3) {
                if (Pattern.matches(".*\\/serp\\?sc=.*&clkt=\\d+$", this.hm)) {
                    return true;
                }
                return Pattern.matches(".*\\/\\?caf_results=.*&clkt=\\d+$", this.hm);
            }
            return false;
        } catch (Throwable th) {
            ABk.Qhi("WebArbitrageBehavior", th.toString());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Tgh() {
        if (this.qMt.get(Integer.valueOf(this.WAv)) != null) {
            return;
        }
        float height = this.CJ.getHeight() / zn.cJ(this.Qhi, this.CJ.getContentHeight());
        if (height < 0.0f || height > 1.0f) {
            height = 0.0f;
        }
        new Object[]{"initBrowsingPer, browsingPer is: ", Float.valueOf(height), "index is: ", Integer.valueOf(this.WAv)};
        this.qMt.put(Integer.valueOf(this.WAv), Float.valueOf(height));
    }

    private boolean ROR() {
        int i = this.Tgh + 1;
        this.Tgh = i;
        if (i > this.fl) {
            return true;
        }
        return ("landingpage".equals(this.ac) || "landingpage_endcard".equals(this.ac) || "landingpage_split_screen".equals(this.ac) || "landingpage_direct".equals(this.ac)) ? false : true;
    }

    private boolean cJ(MotionEvent motionEvent) {
        this.ABk = motionEvent.getX();
        float y = motionEvent.getY();
        this.iMK = y;
        float f2 = this.zc;
        if (y - f2 != 0.0f) {
            this.pA = y - f2;
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sf() {
        WebBackForwardList copyBackForwardList = this.CJ.copyBackForwardList();
        if (copyBackForwardList != null) {
            this.WAv = copyBackForwardList.getCurrentIndex() + 1;
        }
        new Object[]{"trigger onPageStarted, and index is: ", Integer.valueOf(this.WAv)};
    }

    @Override // com.bytedance.sdk.component.utils.CQU.Qhi
    public void Qhi(Message message) {
        int i = message.what;
        com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi qhi = (com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi) message.obj;
        if (i == 100) {
            qhi.CJ(this.HzH ? 2 : 1);
            com.bytedance.sdk.openadsdk.cJ.ac.CJ(this.cJ, qhi, this.ac);
            this.HzH = false;
        } else if (i == 200) {
            if (this.kYc) {
                Qhi(1, qhi.ac(), qhi.CJ());
            }
            qhi.ac(this.kYc ? 1 : 0);
            com.bytedance.sdk.openadsdk.cJ.ac.fl(this.cJ, qhi, this.ac);
            this.ROR = false;
            this.kYc = false;
        }
    }
}
