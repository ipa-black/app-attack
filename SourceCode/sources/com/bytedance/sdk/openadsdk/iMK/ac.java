package com.bytedance.sdk.openadsdk.iMK;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import com.bytedance.sdk.component.ROR.Qhi;
import com.bytedance.sdk.component.adexpress.CJ.kYc;
import com.bytedance.sdk.component.cJ.Qhi.Qhi.Qhi.WAv;
import com.bytedance.sdk.component.cJ.Qhi.fl;
import com.bytedance.sdk.component.fl.hm;
import com.bytedance.sdk.component.fl.zc;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.model.hpZ;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.lG;
import com.bytedance.sdk.openadsdk.utils.zn;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: TTNetClient.java */
/* loaded from: classes2.dex */
public class ac {
    private static volatile ac Qhi;
    private com.bytedance.sdk.openadsdk.iMK.Qhi.ac ac;
    private final com.bytedance.sdk.component.ROR.Qhi cJ;

    public static ac Qhi() {
        if (Qhi == null) {
            synchronized (ac.class) {
                if (Qhi == null) {
                    Qhi = new ac(HzH.Qhi());
                }
            }
        }
        return Qhi;
    }

    private ac(Context context) {
        com.bytedance.sdk.component.ROR.Qhi Qhi2 = new Qhi.C0182Qhi().Qhi(10000L, TimeUnit.MILLISECONDS).cJ(10000L, TimeUnit.MILLISECONDS).ac(10000L, TimeUnit.MILLISECONDS).Qhi(true).Qhi();
        this.cJ = Qhi2;
        com.bytedance.sdk.component.cJ.Qhi.Qhi.Qhi.Qhi.Qhi(new WAv() { // from class: com.bytedance.sdk.openadsdk.iMK.ac.1
            @Override // com.bytedance.sdk.component.cJ.Qhi.Qhi.Qhi.WAv
            public ExecutorService Qhi() {
                if (com.bytedance.sdk.openadsdk.core.settings.HzH.YD().VV()) {
                    return lG.WAv();
                }
                return null;
            }

            @Override // com.bytedance.sdk.component.cJ.Qhi.Qhi.Qhi.WAv
            public boolean cJ() {
                return com.bytedance.sdk.openadsdk.core.settings.HzH.YD().VV();
            }
        });
        fl Qhi3 = Qhi2.fl().Qhi();
        if (Qhi3 != null) {
            Qhi3.Qhi(32);
        }
    }

    public com.bytedance.sdk.component.ROR.Qhi cJ() {
        return this.cJ;
    }

    public com.bytedance.sdk.openadsdk.iMK.Qhi.ac ac() {
        CJ();
        return this.ac;
    }

    public void Qhi(String str, int i, int i2, ImageView imageView, tP tPVar) {
        com.bytedance.sdk.openadsdk.ROR.fl.Qhi(str).Qhi(i).cJ(i2).fl(zn.CJ(HzH.Qhi())).CJ(zn.ac(HzH.Qhi())).ac(2).Qhi(com.bytedance.sdk.openadsdk.ROR.ac.Qhi(tPVar, str, imageView));
    }

    public void Qhi(int i, final ImageView imageView, final tP tPVar) {
        com.bytedance.sdk.openadsdk.ROR.fl.Qhi(tPVar.Tgh()).Qhi(i).cJ(i).fl(zn.CJ(HzH.Qhi())).CJ(zn.ac(HzH.Qhi())).ac(2).Qhi(com.bytedance.sdk.openadsdk.ROR.ac.Qhi(tPVar, tPVar.Tgh(), imageView));
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.iMK.ac.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (imageView.getDrawable() != null) {
                        Intent intent = new Intent();
                        String ROR = tPVar.ROR();
                        intent.setAction("android.intent.action.VIEW");
                        intent.setData(Uri.parse(ROR));
                        try {
                            com.bytedance.sdk.component.utils.cJ.Qhi(HzH.Qhi(), intent, null);
                        } catch (Exception unused) {
                        }
                    }
                }
            });
        }
    }

    public void Qhi(hpZ hpz, ImageView imageView, tP tPVar) {
        if (hpz == null || TextUtils.isEmpty(hpz.Qhi()) || imageView == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.ROR.fl.Qhi(hpz).ac(2).Qhi(com.bytedance.sdk.openadsdk.ROR.ac.Qhi(tPVar, hpz.Qhi(), imageView));
    }

    public void Qhi(String str, final View view) {
        if (TextUtils.isEmpty(str) || view == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.ROR.fl.Qhi(str).ac(2).Qhi(new hm() { // from class: com.bytedance.sdk.openadsdk.iMK.ac.4
            @Override // com.bytedance.sdk.component.fl.hm
            public Bitmap Qhi(Bitmap bitmap) {
                return kYc.Qhi(view.getContext(), bitmap, 10);
            }
        }).Qhi(new com.bytedance.sdk.component.fl.HzH<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.iMK.ac.3
            @Override // com.bytedance.sdk.component.fl.HzH
            public void Qhi(int i, String str2, Throwable th) {
            }

            @Override // com.bytedance.sdk.component.fl.HzH
            public void Qhi(zc<Bitmap> zcVar) {
                if (zcVar == null) {
                    return;
                }
                final Bitmap cJ = zcVar.cJ();
                if (cJ instanceof Bitmap) {
                    if (lG.fl()) {
                        View view2 = view;
                        if (view2 instanceof ImageView) {
                            ((ImageView) view2).setImageDrawable(new BitmapDrawable(view.getResources(), cJ));
                            return;
                        } else {
                            view2.setBackground(new BitmapDrawable(view.getResources(), cJ));
                            return;
                        }
                    }
                    view.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.iMK.ac.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (view instanceof ImageView) {
                                ((ImageView) view).setImageDrawable(new BitmapDrawable(view.getResources(), (Bitmap) cJ));
                            } else {
                                view.setBackground(new BitmapDrawable(view.getResources(), (Bitmap) cJ));
                            }
                        }
                    });
                }
            }
        });
    }

    private void CJ() {
        if (this.ac == null) {
            this.ac = new com.bytedance.sdk.openadsdk.iMK.Qhi.ac();
        }
    }
}
