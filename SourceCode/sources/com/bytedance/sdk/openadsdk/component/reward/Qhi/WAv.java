package com.bytedance.sdk.openadsdk.component.reward.Qhi;

import android.app.Activity;
import android.os.Build;
import android.util.Log;
import android.view.View;
import com.bytedance.sdk.component.utils.CQU;
import com.bytedance.sdk.openadsdk.utils.zn;
/* compiled from: RewardFullScreenManager.java */
/* loaded from: classes2.dex */
public class WAv {
    private Qhi CJ;
    protected int Qhi;
    private boolean ac = true;
    private final com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi cJ;

    public WAv(com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi) {
        this.Qhi = 0;
        this.cJ = qhi;
        ac();
        if (qhi.Qhi == 2) {
            return;
        }
        try {
            this.Qhi = zn.ac(qhi.FQ, zn.Qhi());
            if (!qhi.FQ.getWindow().hasFeature(1)) {
                qhi.FQ.requestWindowFeature(1);
            }
            qhi.FQ.getWindow().addFlags(16777344);
            if (qhi.Dq == 2 || !zn.ac(qhi.FQ)) {
                qhi.FQ.getWindow().addFlags(1024);
            }
        } catch (Throwable th) {
            Log.e("TTAD.RFSM", "init: ", th);
        }
    }

    public void Qhi(CQU cqu) {
        if (cqu == null) {
            return;
        }
        cqu.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.WAv.1
            @Override // java.lang.Runnable
            public void run() {
                View findViewById;
                try {
                    View decorView = WAv.this.cJ.FQ.getWindow().getDecorView();
                    if (decorView == null || (findViewById = decorView.findViewById(16908335)) == null) {
                        return;
                    }
                    findViewById.setVisibility(8);
                } catch (Exception unused) {
                }
            }
        }, 300L);
    }

    private void ac() {
        com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi = this.cJ;
        qhi.Hf = qhi.cJ.Oy();
        if (26 == Build.VERSION.SDK_INT) {
            if (this.cJ.FQ.getResources().getConfiguration().orientation == 1) {
                this.cJ.Dq = 1;
                return;
            } else {
                this.cJ.Dq = 2;
                return;
            }
        }
        com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi2 = this.cJ;
        qhi2.Dq = qhi2.cJ.SL();
    }

    public void Qhi(boolean z) {
        float min;
        float max;
        int max2;
        int i;
        int i2;
        if (Build.VERSION.SDK_INT != 26) {
            if (Build.VERSION.SDK_INT == 27) {
                try {
                    CJ();
                } catch (Throwable unused) {
                }
            } else {
                CJ();
            }
        }
        float fl = fl();
        float Tgh = Tgh();
        if (this.cJ.Dq == 2) {
            min = Math.max(fl, Tgh);
            max = Math.min(fl, Tgh);
        } else {
            min = Math.min(fl, Tgh);
            max = Math.max(fl, Tgh);
        }
        Activity activity = this.cJ.FQ;
        int ac = zn.ac(activity, zn.Qhi());
        if (this.cJ.Dq != 2) {
            if (zn.ac(activity)) {
                max -= ac;
            }
        } else if (zn.ac(activity)) {
            min -= ac;
        }
        if (z) {
            this.cJ.NBs = (int) min;
            this.cJ.dI = (int) max;
            return;
        }
        int i3 = 20;
        if (this.cJ.Dq != 2) {
            if (this.cJ.Hf != 0.0f && this.cJ.Hf != 100.0f) {
                i = (int) Math.max((max - (((min - 20.0f) - 20.0f) / this.cJ.Hf)) / 2.0f, 0.0f);
                i2 = i;
                max2 = 20;
            }
            i3 = 0;
            max2 = 0;
            i = 0;
            i2 = 0;
        } else {
            if (this.cJ.Hf != 0.0f && this.cJ.Hf != 100.0f) {
                max2 = (int) Math.max((min - (((max - 20.0f) - 20.0f) * this.cJ.Hf)) / 2.0f, 0.0f);
                i = 20;
                i2 = 20;
                i3 = max2;
            }
            i3 = 0;
            max2 = 0;
            i = 0;
            i2 = 0;
        }
        float f2 = i3;
        float f3 = max2;
        this.cJ.NBs = (int) ((min - f2) - f3);
        float f4 = i;
        float f5 = i2;
        this.cJ.dI = (int) ((max - f4) - f5);
        activity.getWindow().getDecorView().setPadding(zn.cJ(activity, f2), zn.cJ(activity, f4), zn.cJ(activity, f3), zn.cJ(activity, f5));
    }

    public void cJ(CQU cqu) {
        try {
            final boolean z = true;
            final boolean z2 = this.ac && com.bytedance.sdk.openadsdk.core.HzH.CJ().yN() == 1;
            if (!this.ac || !zn.ac(this.cJ.FQ)) {
                z = false;
            }
            if (z || z2) {
                if (this.CJ == null) {
                    this.CJ = new Qhi() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.WAv.2
                        boolean Qhi;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super();
                        }

                        /* JADX WARN: Removed duplicated region for block: B:28:0x00e9 A[Catch: all -> 0x010c, TryCatch #0 {all -> 0x010c, blocks: (B:2:0x0000, B:4:0x000b, B:6:0x001f, B:8:0x006a, B:10:0x0088, B:12:0x0097, B:14:0x00ab, B:15:0x00af, B:26:0x00e3, B:28:0x00e9, B:29:0x00ee, B:31:0x00fc, B:16:0x00b2, B:18:0x00bc, B:20:0x00d0, B:22:0x00d4, B:23:0x00da, B:25:0x00de, B:33:0x0102, B:35:0x0106, B:7:0x0045), top: B:38:0x0000 }] */
                        /* JADX WARN: Removed duplicated region for block: B:31:0x00fc A[Catch: all -> 0x010c, TryCatch #0 {all -> 0x010c, blocks: (B:2:0x0000, B:4:0x000b, B:6:0x001f, B:8:0x006a, B:10:0x0088, B:12:0x0097, B:14:0x00ab, B:15:0x00af, B:26:0x00e3, B:28:0x00e9, B:29:0x00ee, B:31:0x00fc, B:16:0x00b2, B:18:0x00bc, B:20:0x00d0, B:22:0x00d4, B:23:0x00da, B:25:0x00de, B:33:0x0102, B:35:0x0106, B:7:0x0045), top: B:38:0x0000 }] */
                        /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
                        @Override // com.bytedance.sdk.openadsdk.component.reward.Qhi.WAv.Qhi
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        void Qhi(int r7, int r8) {
                            /*
                                Method dump skipped, instructions count: 269
                                To view this dump add '--comments-level debug' option
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.component.reward.Qhi.WAv.AnonymousClass2.Qhi(int, int):void");
                        }
                    };
                }
                this.cJ.FQ.getWindow().getDecorView().addOnLayoutChangeListener(this.CJ);
            }
            this.ac = false;
        } catch (Exception unused) {
        }
    }

    public float[] Qhi(int i) {
        float[] fArr = new float[2];
        Activity activity = this.cJ.FQ;
        View decorView = activity.getWindow().getDecorView();
        if (Build.VERSION.SDK_INT >= 35 && this.cJ.cJ.Oy() == 100.0f) {
            fArr[0] = decorView.getWidth() - decorView.getPaddingLeft();
            fArr[1] = decorView.getHeight() - decorView.getPaddingTop();
        } else {
            fArr[0] = decorView.getWidth() - (decorView.getPaddingLeft() * 2);
            fArr[1] = decorView.getHeight() - (decorView.getPaddingTop() * 2);
        }
        fArr[0] = zn.ac(activity, fArr[0]);
        float ac = zn.ac(activity, fArr[1]);
        fArr[1] = ac;
        if (fArr[0] < 10.0f || ac < 10.0f) {
            fArr = cJ(this.Qhi);
        }
        if (Build.VERSION.SDK_INT != 26 && Build.VERSION.SDK_INT != 27 && activity.getResources() != null && activity.getResources().getConfiguration() != null) {
            if ((activity.getResources().getConfiguration().orientation == 2 ? 2 : 1) != i) {
                if (i == 2) {
                    float f2 = fArr[0];
                    float f3 = fArr[1];
                    if (f2 < f3) {
                        fArr[1] = f2;
                        fArr[0] = f3;
                    }
                } else {
                    float f4 = fArr[0];
                    float f5 = fArr[1];
                    if (f4 > f5) {
                        fArr[1] = f4;
                        fArr[0] = f5;
                    }
                }
            }
        }
        return fArr;
    }

    public void Qhi() {
        zn.Qhi(this.cJ.FQ);
        this.cJ.FQ.getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.WAv.3
            @Override // android.view.View.OnSystemUiVisibilityChangeListener
            public void onSystemUiVisibilityChange(int i) {
                if (i == 0) {
                    try {
                        if (WAv.this.cJ.FQ.isFinishing()) {
                            return;
                        }
                        WAv.this.cJ.FQ.getWindow().getDecorView().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.WAv.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                zn.Qhi(WAv.this.cJ.FQ);
                            }
                        }, 2500L);
                    } catch (Exception e2) {
                        com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.RFSM", e2.getMessage());
                    }
                }
            }
        });
    }

    private float[] cJ(int i) {
        float Tgh = Tgh();
        float fl = fl();
        if ((this.cJ.Dq == 1) != (Tgh > fl)) {
            float f2 = Tgh + fl;
            fl = f2 - fl;
            Tgh = f2 - fl;
        }
        if (this.cJ.Dq == 1) {
            Tgh -= i;
        } else {
            fl -= i;
        }
        return new float[]{fl, Tgh};
    }

    private void CJ() {
        if (this.cJ.Dq == 2) {
            if (this.cJ.dVA) {
                Qhi(this.cJ.FQ, 8);
                return;
            } else {
                Qhi(this.cJ.FQ, 0);
                return;
            }
        }
        Qhi(this.cJ.FQ, 1);
    }

    private static void Qhi(Activity activity, int i) {
        if (activity.getRequestedOrientation() == i) {
            return;
        }
        activity.setRequestedOrientation(i);
    }

    private float fl() {
        return zn.ac(this.cJ.FQ, zn.WAv(this.cJ.FQ));
    }

    private float Tgh() {
        return zn.ac(this.cJ.FQ, zn.hm(this.cJ.FQ));
    }

    public void cJ() {
        if (this.CJ != null) {
            this.cJ.FQ.getWindow().getDecorView().removeOnLayoutChangeListener(this.CJ);
            this.CJ = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RewardFullScreenManager.java */
    /* loaded from: classes2.dex */
    public static abstract class Qhi implements View.OnLayoutChangeListener {
        private int Qhi;
        private int cJ;

        abstract void Qhi(int i, int i2);

        private Qhi() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            int i9 = i3 - i;
            int i10 = i4 - i2;
            if (i9 == this.Qhi && i10 == this.cJ) {
                return;
            }
            this.Qhi = i9;
            this.cJ = i10;
            Qhi(i9, i10);
        }
    }
}
