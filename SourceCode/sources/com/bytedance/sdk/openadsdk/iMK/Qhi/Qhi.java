package com.bytedance.sdk.openadsdk.iMK.Qhi;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.CJ.kYc;
import com.bytedance.sdk.component.fl.hm;
import com.bytedance.sdk.component.fl.zc;
import com.bytedance.sdk.openadsdk.ROR.fl;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.zn;
import java.util.Map;
/* compiled from: GifLoader.java */
/* loaded from: classes2.dex */
public class Qhi {

    /* compiled from: GifLoader.java */
    /* renamed from: com.bytedance.sdk.openadsdk.iMK.Qhi.Qhi$Qhi  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0238Qhi {
        void Qhi(int i, String str, Throwable th);

        void Qhi(String str, cJ cJVar);
    }

    public void Qhi(com.bytedance.sdk.openadsdk.iMK.Qhi qhi, final InterfaceC0238Qhi interfaceC0238Qhi, int i, int i2, ImageView.ScaleType scaleType, String str, final int i3, tP tPVar) {
        fl.Qhi(qhi.Qhi).Qhi(qhi.cJ).Qhi(i).cJ(i2).fl(zn.CJ(HzH.Qhi())).CJ(zn.ac(HzH.Qhi())).cJ(str).Qhi(Bitmap.Config.RGB_565).Qhi(scaleType).Qhi(!TextUtils.isEmpty(str)).Qhi(new hm() { // from class: com.bytedance.sdk.openadsdk.iMK.Qhi.Qhi.2
            @Override // com.bytedance.sdk.component.fl.hm
            public Bitmap Qhi(Bitmap bitmap) {
                return i3 <= 0 ? bitmap : kYc.Qhi(HzH.Qhi(), bitmap, i3);
            }
        }).Qhi(new com.bytedance.sdk.openadsdk.ROR.cJ(tPVar, qhi.Qhi, new com.bytedance.sdk.component.fl.HzH() { // from class: com.bytedance.sdk.openadsdk.iMK.Qhi.Qhi.1
            @Override // com.bytedance.sdk.component.fl.HzH
            public void Qhi(zc zcVar) {
                Qhi.this.Qhi(zcVar, interfaceC0238Qhi);
            }

            @Override // com.bytedance.sdk.component.fl.HzH
            public void Qhi(int i4, String str2, Throwable th) {
                Qhi.this.Qhi(i4, str2, th, interfaceC0238Qhi);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Qhi(zc zcVar, InterfaceC0238Qhi interfaceC0238Qhi) {
        if (interfaceC0238Qhi != null) {
            Object cJ = zcVar.cJ();
            int Qhi = Qhi(zcVar);
            if (cJ instanceof byte[]) {
                interfaceC0238Qhi.Qhi(zcVar.Qhi(), new cJ((byte[]) cJ, Qhi));
                return;
            }
            if (cJ instanceof Bitmap) {
                interfaceC0238Qhi.Qhi(zcVar.Qhi(), new cJ((Bitmap) cJ, zcVar.ac() instanceof Bitmap ? (Bitmap) zcVar.ac() : null, Qhi));
            } else {
                interfaceC0238Qhi.Qhi(0, "not bitmap or gif result!", null);
            }
        }
    }

    private int Qhi(zc zcVar) {
        String str;
        Map<String, String> CJ = zcVar.CJ();
        if (CJ == null || (str = CJ.get("image_size")) == null || !(str instanceof Integer)) {
            return 0;
        }
        return ((Integer) str).intValue();
    }

    protected void Qhi(int i, String str, Throwable th, InterfaceC0238Qhi interfaceC0238Qhi) {
        if (interfaceC0238Qhi != null) {
            interfaceC0238Qhi.Qhi(i, str, th);
        }
    }
}
