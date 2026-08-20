package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.cJ.ac;
import com.bytedance.sdk.openadsdk.core.model.Gm;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.zn;
import org.json.JSONObject;
/* compiled from: ExpressClickListener.java */
/* loaded from: classes2.dex */
public class Sf extends com.bytedance.sdk.openadsdk.core.cJ.cJ {
    public Sf(Context context, tP tPVar, String str, int i) {
        super(context, tPVar, str, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.cJ.cJ
    public com.bytedance.sdk.openadsdk.core.model.Gm Qhi(float f2, float f3, float f4, float f5, SparseArray<ac.Qhi> sparseArray, long j, long j2, View view, View view2, String str, float f6, int i, float f7, int i2, JSONObject jSONObject, JSONObject jSONObject2) {
        float f8;
        float f9;
        float f10;
        float f11;
        int i3;
        int i4;
        int i5;
        long j3;
        long j4;
        char c2;
        int i6;
        int i7;
        int[] Qhi = zn.Qhi(view);
        int i8 = 0;
        if (Qhi == null || Qhi.length != 2) {
            f8 = f2;
            f9 = f3;
            f10 = f4;
            f11 = f5;
            i3 = 0;
            i4 = 0;
        } else {
            i3 = Qhi[0];
            i4 = Qhi[1];
            if (this.MQ == 0) {
                f11 = (zn.cJ(this.CJ, f5) + i4) - 0.5f;
                f10 = (zn.cJ(this.CJ, f4) + i3) - 0.5f;
                f8 = (zn.cJ(this.CJ, f2) + i3) - 0.5f;
                f9 = (zn.cJ(this.CJ, f3) + i4) - 0.5f;
            } else {
                f8 = f2;
                f9 = f3;
                f10 = f4;
                f11 = f5;
            }
        }
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        if (this.fl != null) {
            j3 = this.fl.fl;
            j4 = this.fl.Tgh;
            if (this.MQ == 0) {
                iArr[0] = zn.cJ(this.CJ, this.fl.ROR) + i3;
                iArr[1] = zn.cJ(this.CJ, this.fl.Sf) + i4;
                i6 = zn.cJ(this.CJ, this.fl.hm);
                i7 = zn.cJ(this.CJ, this.fl.WAv);
                c2 = 0;
                i5 = 1;
            } else {
                c2 = 0;
                iArr[0] = this.fl.ROR;
                i5 = 1;
                iArr[1] = this.fl.Sf;
                i6 = this.fl.hm;
                i7 = this.fl.WAv;
            }
            iArr2[c2] = i6;
            iArr2[i5] = i7;
            if (i6 == 0 && i7 == 0 && view2 != null) {
                iArr = zn.Qhi(view2);
                iArr2 = zn.ac(view2);
            }
            i8 = 0;
        } else {
            i5 = 1;
            j3 = j;
            j4 = j2;
        }
        this.MQ = i8;
        return new Gm.Qhi().Tgh(f8).fl(f9).CJ(f10).ac(f11).cJ(j3).Qhi(j4).cJ(Qhi).Qhi(iArr).ac(zn.ac(view)).CJ(iArr2).CJ(this.Eh).fl(this.aP).Tgh(this.NFd).cJ(com.bytedance.sdk.openadsdk.core.hm.cJ().Qhi() ? i5 : 2).Qhi(sparseArray).Qhi(str).Qhi(i2).Qhi(jSONObject).cJ(jSONObject2).Qhi();
    }

    public void Qhi(com.bytedance.sdk.openadsdk.core.model.pA pAVar) {
        this.fl = pAVar;
    }
}
