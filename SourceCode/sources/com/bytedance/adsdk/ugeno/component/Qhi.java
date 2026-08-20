package com.bytedance.adsdk.ugeno.component;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.adsdk.ugeno.cJ.hm;
import com.bytedance.adsdk.ugeno.component.flexbox.FlexboxLayout;
import io.bidmachine.utils.IabUtils;
import java.util.ArrayList;
import java.util.List;
/* compiled from: UGLayoutWidget.java */
/* loaded from: classes2.dex */
public class Qhi<E extends ViewGroup> extends cJ {
    protected List<cJ<View>> Qhi;

    public Qhi(Context context) {
        this(context, null);
    }

    public Qhi(Context context, Qhi qhi) {
        super(context, qhi);
        this.Qhi = new ArrayList();
    }

    @Override // com.bytedance.adsdk.ugeno.component.cJ
    public void cJ() {
        super.cJ();
    }

    public void Qhi(cJ cJVar) {
        if (cJVar == null) {
            return;
        }
        this.Qhi.add(cJVar);
        View hm = cJVar.hm();
        if (hm != null) {
            ((ViewGroup) this.fl).addView(hm);
        }
    }

    public List<cJ<View>> Qhi() {
        return this.Qhi;
    }

    @Override // com.bytedance.adsdk.ugeno.component.cJ
    public cJ Qhi(String str) {
        cJ<View> cJ;
        if (TextUtils.isEmpty(str) || !TextUtils.equals(str, this.WAv)) {
            for (cJ<View> cJVar : this.Qhi) {
                if (cJVar != null && (cJ = cJVar.cJ(str)) != null) {
                    return cJ;
                }
            }
            return null;
        }
        return this;
    }

    public C0178Qhi Sf() {
        return new C0178Qhi();
    }

    /* compiled from: UGLayoutWidget.java */
    /* renamed from: com.bytedance.adsdk.ugeno.component.Qhi$Qhi  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0178Qhi {
        protected float CJ;
        protected float Qhi;
        protected float ROR;
        protected ViewGroup.LayoutParams Sf;
        protected float Tgh;
        protected float ac;
        protected float cJ;
        protected float fl;

        public void Qhi(Context context, String str, String str2) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            str.hashCode();
            char c2 = 65535;
            switch (str.hashCode()) {
                case -1221029593:
                    if (str.equals(IabUtils.KEY_HEIGHT)) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -1081309778:
                    if (str.equals("margin")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case -1044792121:
                    if (str.equals("marginTop")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case -289173127:
                    if (str.equals("marginBottom")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 113126854:
                    if (str.equals(IabUtils.KEY_WIDTH)) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 975087886:
                    if (str.equals("marginRight")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case 1970934485:
                    if (str.equals("marginLeft")) {
                        c2 = 6;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    if (TextUtils.equals(str2, "match_parent")) {
                        this.cJ = -1.0f;
                        return;
                    } else if (TextUtils.equals(str2, "wrap_content")) {
                        this.cJ = -2.0f;
                        return;
                    } else {
                        this.cJ = hm.Qhi(context, str2);
                        return;
                    }
                case 1:
                    this.ac = hm.Qhi(context, str2);
                    return;
                case 2:
                    this.Tgh = hm.Qhi(context, str2);
                    return;
                case 3:
                    this.ROR = hm.Qhi(context, str2);
                    return;
                case 4:
                    if (TextUtils.equals(str2, "match_parent")) {
                        this.Qhi = -1.0f;
                        return;
                    } else if (TextUtils.equals(str2, "wrap_content")) {
                        this.Qhi = -2.0f;
                        return;
                    } else {
                        this.Qhi = hm.Qhi(context, str2);
                        return;
                    }
                case 5:
                    this.fl = hm.Qhi(context, str2);
                    return;
                case 6:
                    this.CJ = hm.Qhi(context, str2);
                    return;
                default:
                    return;
            }
        }

        public ViewGroup.LayoutParams Qhi() {
            FlexboxLayout.Qhi qhi = new FlexboxLayout.Qhi((int) this.Qhi, (int) this.cJ);
            qhi.leftMargin = (int) this.CJ;
            qhi.rightMargin = (int) this.fl;
            qhi.topMargin = (int) this.Tgh;
            qhi.bottomMargin = (int) this.ROR;
            return qhi;
        }
    }
}
