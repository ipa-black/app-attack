package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.CJ.Eh;
import com.bytedance.sdk.component.adexpress.CJ.bxS;
import com.bytedance.sdk.component.adexpress.CJ.kYc;
import com.bytedance.sdk.component.adexpress.cJ.iMK;
import com.bytedance.sdk.component.adexpress.dynamic.CJ.Gm;
import com.bytedance.sdk.component.adexpress.dynamic.ac.Sf;
import com.bytedance.sdk.component.adexpress.dynamic.ac.hm;
import com.bytedance.sdk.component.adexpress.dynamic.interact.InteractViewContainer;
import com.bytedance.sdk.component.adexpress.widget.GifView;
import com.bytedance.sdk.component.fl.HzH;
import com.bytedance.sdk.component.fl.zc;
import com.bytedance.sdk.component.utils.EBS;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class DynamicBaseWidgetImp extends DynamicBaseWidget {
    private static String MQ = "";
    private ImageView EBS;
    private Runnable Qhi;
    private Runnable cJ;
    private volatile boolean qMt;
    protected InteractViewContainer tP;

    public DynamicBaseWidgetImp(Context context, DynamicRootView dynamicRootView, hm hmVar) {
        super(context, dynamicRootView, hmVar);
        this.qMt = true;
        setTag(Integer.valueOf(getClickArea()));
        String cJ = hmVar.WAv().cJ();
        if ("logo-union".equals(cJ)) {
            dynamicRootView.setLogoUnionHeight(this.Sf - ((int) CQU.Qhi(context, this.zc.cJ() + this.zc.Qhi())));
        } else if ("scoreCountWithIcon".equals(cJ)) {
            dynamicRootView.setScoreCountWithIcon(this.Sf - ((int) CQU.Qhi(context, this.zc.cJ() + this.zc.Qhi())));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        return new FrameLayout.LayoutParams(this.ROR, this.Sf);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.fl
    public boolean hm() {
        Drawable backgroundDrawable;
        JSONObject optJSONObject;
        final View view = this.pA == null ? this : this.pA;
        setContentDescription(this.ABk.Qhi(this.zc.Eh()));
        String et = this.zc.et();
        String str = null;
        String Qhi = (TextUtils.isEmpty(et) || this.iMK == null || this.iMK.getRenderRequest() == null || this.iMK.getRenderRequest().ac() == null || (optJSONObject = this.iMK.getRenderRequest().ac().optJSONObject("creative")) == null) ? null : Qhi(optJSONObject.opt(et));
        if (TextUtils.isEmpty(Qhi)) {
            Qhi = this.zc.qMt();
        }
        if (this.zc.MQ()) {
            final int tP = this.zc.tP();
            com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().fl().Qhi(this.zc.cJ).ac(2).Qhi(new com.bytedance.sdk.component.fl.hm() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp.3
                @Override // com.bytedance.sdk.component.fl.hm
                public Bitmap Qhi(Bitmap bitmap) {
                    return kYc.Qhi(DynamicBaseWidgetImp.this.Gm, bitmap, tP);
                }
            }).Qhi(new HzH<Bitmap>() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp.1
                @Override // com.bytedance.sdk.component.fl.HzH
                public void Qhi(int i, String str2, Throwable th) {
                }

                @Override // com.bytedance.sdk.component.fl.HzH
                public void Qhi(zc<Bitmap> zcVar) {
                    Bitmap cJ = zcVar.cJ();
                    if (cJ == null || zcVar.ac() == null) {
                        return;
                    }
                    view.setBackground(DynamicBaseWidgetImp.this.Qhi(cJ));
                }
            });
        } else if (!TextUtils.isEmpty(Qhi)) {
            if (!Qhi.startsWith("http:") && !Qhi.startsWith("https:")) {
                if (this.iMK != null && this.iMK.getRenderRequest() != null) {
                    str = this.iMK.getRenderRequest().Dww();
                }
                Qhi = Gm.cJ(Qhi, str);
            }
            com.bytedance.sdk.component.fl.Gm ac = com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().fl().Qhi(Qhi).ac(2);
            Qhi(ac);
            if (!com.bytedance.sdk.component.adexpress.fl.cJ()) {
                if ((view instanceof FrameLayout) && TextUtils.equals(this.ABk.WAv().cJ(), "vessel")) {
                    if (Eh.cJ(Qhi)) {
                        this.EBS = new GifView(this.Gm);
                    } else {
                        this.EBS = new ImageView(this.Gm);
                    }
                    ((FrameLayout) view).addView(this.EBS, new FrameLayout.LayoutParams(-1, -1));
                    ac.ac(3).Qhi(new HzH() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp.4
                        @Override // com.bytedance.sdk.component.fl.HzH
                        public void Qhi(int i, String str2, Throwable th) {
                        }

                        @Override // com.bytedance.sdk.component.fl.HzH
                        public void Qhi(zc zcVar) {
                            Object cJ = zcVar.cJ();
                            if (cJ instanceof byte[]) {
                                bxS.Qhi(DynamicBaseWidgetImp.this.EBS, (byte[]) cJ, DynamicBaseWidgetImp.this.ROR, DynamicBaseWidgetImp.this.Sf);
                            }
                        }
                    });
                } else {
                    Qhi(ac, view);
                }
            } else {
                ac.Qhi(new HzH<Bitmap>() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp.5
                    @Override // com.bytedance.sdk.component.fl.HzH
                    public void Qhi(int i, String str2, Throwable th) {
                    }

                    @Override // com.bytedance.sdk.component.fl.HzH
                    public void Qhi(zc<Bitmap> zcVar) {
                        if (com.bytedance.sdk.component.adexpress.fl.cJ()) {
                            view.setBackground(new BitmapDrawable(zcVar.cJ()));
                            if (DynamicBaseWidgetImp.this.ABk == null || DynamicBaseWidgetImp.this.ABk.WAv() == null || 6 != DynamicBaseWidgetImp.this.ABk.WAv().Qhi() || view.getBackground() == null) {
                                return;
                            }
                            view.getBackground().setAutoMirrored(true);
                        } else if (DynamicBaseWidgetImp.this.iMK == null) {
                        } else {
                            if (!"open_ad".equals(DynamicBaseWidgetImp.this.iMK.getRenderRequest().CJ()) && !"splash_ad".equals(DynamicBaseWidgetImp.this.iMK.getRenderRequest().CJ())) {
                                view.setBackground(new BitmapDrawable(zcVar.cJ()));
                            } else {
                                view.setBackground(new BitmapDrawable(zcVar.cJ()));
                            }
                        }
                    }
                });
            }
        }
        if (getBackground() == null && (backgroundDrawable = getBackgroundDrawable()) != null) {
            view.setBackground(backgroundDrawable);
        }
        if (this.zc.NFd() > 0.0d) {
            postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp.6
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (DynamicBaseWidgetImp.this.zc.js() > 0) {
                            DynamicBaseWidgetImp dynamicBaseWidgetImp = DynamicBaseWidgetImp.this;
                            Drawable cJ = dynamicBaseWidgetImp.cJ(dynamicBaseWidgetImp.iMK.getBgMaterialCenterCalcColor().get(Integer.valueOf(DynamicBaseWidgetImp.this.zc.js())));
                            if (cJ == null) {
                                DynamicBaseWidgetImp dynamicBaseWidgetImp2 = DynamicBaseWidgetImp.this;
                                cJ = dynamicBaseWidgetImp2.Qhi(true, dynamicBaseWidgetImp2.iMK.getBgMaterialCenterCalcColor().get(Integer.valueOf(DynamicBaseWidgetImp.this.zc.js())));
                            }
                            if (cJ != null) {
                                view.setBackground(cJ);
                                return;
                            }
                            View view2 = view;
                            DynamicBaseWidgetImp dynamicBaseWidgetImp3 = DynamicBaseWidgetImp.this;
                            view2.setBackground(dynamicBaseWidgetImp3.Qhi(true, dynamicBaseWidgetImp3.iMK.getBgColor()));
                        }
                    } catch (Exception unused) {
                    }
                }
            }, (long) (this.zc.NFd() * 1000.0d));
        }
        if (this.pA != null) {
            this.pA.setPadding((int) CQU.Qhi(this.Gm, this.zc.ac()), (int) CQU.Qhi(this.Gm, this.zc.cJ()), (int) CQU.Qhi(this.Gm, this.zc.CJ()), (int) CQU.Qhi(this.Gm, this.zc.Qhi()));
        }
        if (this.hpZ || this.zc.iMK() > 0.0d) {
            setShouldInvisible(true);
            view.setVisibility(4);
            setVisibility(4);
        }
        return true;
    }

    private String Qhi(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof JSONArray) {
            return Qhi(((JSONArray) obj).opt(0));
        }
        if (obj instanceof JSONObject) {
            return Qhi((Object) ((JSONObject) obj).optString("url"));
        }
        return null;
    }

    private void Qhi(com.bytedance.sdk.component.fl.Gm gm, final View view) {
        gm.Qhi(new HzH<Bitmap>() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp.7
            @Override // com.bytedance.sdk.component.fl.HzH
            public void Qhi(int i, String str, Throwable th) {
            }

            @Override // com.bytedance.sdk.component.fl.HzH
            public void Qhi(zc<Bitmap> zcVar) {
                if (DynamicBaseWidgetImp.this.iMK == null) {
                    return;
                }
                if (!"open_ad".equals(DynamicBaseWidgetImp.this.iMK.getRenderRequest().CJ()) && !"splash_ad".equals(DynamicBaseWidgetImp.this.iMK.getRenderRequest().CJ())) {
                    view.setBackground(new BitmapDrawable(zcVar.cJ()));
                } else if (com.bytedance.sdk.component.adexpress.fl.cJ()) {
                    view.setBackground(new Qhi(zcVar.cJ(), ((DynamicRoot) DynamicBaseWidgetImp.this.iMK.getChildAt(0)).Qhi));
                } else {
                    view.setBackground(new BitmapDrawable(zcVar.cJ()));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable cJ(String str) {
        try {
            JSONArray jSONArray = new JSONArray(str);
            ArrayList arrayList = new ArrayList();
            String str2 = "";
            for (int i = 0; i < jSONArray.length(); i++) {
                if (jSONArray.getString(i).startsWith("#")) {
                    arrayList.add(jSONArray.getString(i));
                } else if (jSONArray.getString(i).endsWith("deg")) {
                    str2 = jSONArray.getString(i);
                }
            }
            if (arrayList.size() <= 0) {
                return null;
            }
            int[] iArr = new int[arrayList.size()];
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                iArr[i2] = Sf.Qhi(((String) arrayList.get(i2)).substring(0, 7));
            }
            GradientDrawable Qhi = Qhi(Qhi(str2), iArr);
            Qhi.setShape(0);
            Qhi.setCornerRadius(CQU.Qhi(this.Gm, this.zc.pA()));
            return Qhi;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static void Qhi(com.bytedance.sdk.component.fl.Gm gm) {
        if ("SMARTISAN".equals(Build.BRAND) && "SM901".equals(getBuildModel())) {
            gm.Qhi(Bitmap.Config.ARGB_8888);
        }
    }

    private static String getBuildModel() {
        try {
            MQ = EBS.Qhi();
        } catch (Throwable unused) {
            MQ = Build.MODEL;
        }
        if (TextUtils.isEmpty(MQ)) {
            MQ = Build.MODEL;
        }
        return MQ;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        View view = this.pA == null ? this : this.pA;
        double MQ2 = this.ABk.WAv().fl().MQ();
        if (MQ2 < 90.0d && MQ2 > 0.0d) {
            com.bytedance.sdk.component.utils.Sf.cJ().postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp.8
                @Override // java.lang.Runnable
                public void run() {
                    DynamicBaseWidgetImp.this.setVisibility(8);
                }
            }, (long) (MQ2 * 1000.0d));
        }
        Qhi(this.ABk.WAv().fl().tP(), view);
        if (!TextUtils.isEmpty(this.zc.ip())) {
            Qhi();
        }
        super.onAttachedToWindow();
    }

    private void Qhi(double d2, final View view) {
        if (d2 > 0.0d) {
            com.bytedance.sdk.component.utils.Sf.cJ().postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp.9
                @Override // java.lang.Runnable
                public void run() {
                    if (DynamicBaseWidgetImp.this.ABk.WAv().fl().pF() != null) {
                        return;
                    }
                    view.setVisibility(0);
                    DynamicBaseWidgetImp.this.setVisibility(0);
                }
            }, (long) (d2 * 1000.0d));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            removeCallbacks(this.Qhi);
            removeCallbacks(this.cJ);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(ViewGroup viewGroup) {
        if (viewGroup == null || viewGroup.getChildCount() <= 0) {
            return;
        }
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            if (viewGroup.getChildAt(i) instanceof InteractViewContainer) {
                viewGroup.removeViewAt(i);
            }
        }
    }

    private void Qhi() {
        if (this.qMt) {
            int Qe = this.zc.Qe();
            int YB = this.zc.YB();
            Runnable runnable = new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp.10
                @Override // java.lang.Runnable
                public void run() {
                    if (DynamicBaseWidgetImp.this.iMK != null && DynamicBaseWidgetImp.this.iMK.getRenderRequest() != null) {
                        iMK renderRequest = DynamicBaseWidgetImp.this.iMK.getRenderRequest();
                        com.bytedance.sdk.component.adexpress.dynamic.ac.Gm gm = new com.bytedance.sdk.component.adexpress.dynamic.ac.Gm();
                        gm.Qhi(renderRequest.pA());
                        gm.cJ(renderRequest.hpZ());
                        gm.ac(renderRequest.HzH());
                        gm.Qhi(renderRequest.kYc());
                        gm.cJ(renderRequest.tP());
                        gm.ac(renderRequest.MQ());
                        gm.CJ(renderRequest.qMt());
                        gm.fl(renderRequest.EBS());
                        DynamicBaseWidgetImp dynamicBaseWidgetImp = DynamicBaseWidgetImp.this;
                        Context context = DynamicBaseWidgetImp.this.Gm;
                        DynamicBaseWidgetImp dynamicBaseWidgetImp2 = DynamicBaseWidgetImp.this;
                        dynamicBaseWidgetImp.tP = new InteractViewContainer(context, dynamicBaseWidgetImp2, dynamicBaseWidgetImp2.zc, gm, renderRequest);
                    } else {
                        DynamicBaseWidgetImp dynamicBaseWidgetImp3 = DynamicBaseWidgetImp.this;
                        Context context2 = DynamicBaseWidgetImp.this.Gm;
                        DynamicBaseWidgetImp dynamicBaseWidgetImp4 = DynamicBaseWidgetImp.this;
                        dynamicBaseWidgetImp3.tP = new InteractViewContainer(context2, dynamicBaseWidgetImp4, dynamicBaseWidgetImp4.zc);
                    }
                    DynamicBaseWidgetImp dynamicBaseWidgetImp5 = DynamicBaseWidgetImp.this;
                    dynamicBaseWidgetImp5.cJ(dynamicBaseWidgetImp5.tP);
                    if (DynamicBaseWidgetImp.this.getParent() instanceof ViewGroup) {
                        ((ViewGroup) DynamicBaseWidgetImp.this.getParent()).setClipChildren(false);
                    }
                    DynamicBaseWidgetImp.this.setClipChildren(false);
                    DynamicBaseWidgetImp.this.tP.setTag(2);
                    DynamicBaseWidgetImp dynamicBaseWidgetImp6 = DynamicBaseWidgetImp.this;
                    dynamicBaseWidgetImp6.Qhi((ViewGroup) dynamicBaseWidgetImp6);
                    DynamicBaseWidgetImp dynamicBaseWidgetImp7 = DynamicBaseWidgetImp.this;
                    dynamicBaseWidgetImp7.addView(dynamicBaseWidgetImp7.tP, new FrameLayout.LayoutParams(-1, -1));
                    DynamicBaseWidgetImp.this.tP.ac();
                }
            };
            this.Qhi = runnable;
            postDelayed(runnable, Qe * 1000);
            if (this.zc.cjC() || YB >= Integer.MAX_VALUE || Qe >= YB) {
                return;
            }
            Runnable runnable2 = new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp.2
                @Override // java.lang.Runnable
                public void run() {
                    if (DynamicBaseWidgetImp.this.tP != null) {
                        DynamicBaseWidgetImp.this.qMt = false;
                        DynamicBaseWidgetImp.this.tP.CJ();
                        DynamicBaseWidgetImp.this.tP.setVisibility(4);
                        DynamicBaseWidgetImp dynamicBaseWidgetImp = DynamicBaseWidgetImp.this;
                        dynamicBaseWidgetImp.removeView(dynamicBaseWidgetImp.tP);
                    }
                }
            };
            this.cJ = runnable2;
            postDelayed(runnable2, YB * 1000);
        }
    }
}
