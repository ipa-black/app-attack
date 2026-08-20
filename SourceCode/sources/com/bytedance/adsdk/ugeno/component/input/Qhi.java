package com.bytedance.adsdk.ugeno.component.input;

import android.content.Context;
import android.text.TextUtils;
import android.widget.EditText;
import com.bytedance.adsdk.ugeno.component.cJ;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
/* compiled from: UGInputWidget.java */
/* loaded from: classes2.dex */
public class Qhi extends cJ<EditText> {
    private int Dq;
    private String Hf;
    private int NBs;
    private float Qe;
    private int Qhi;
    private String YB;
    private int cjC;
    private String dI;
    private int dIT;
    private String dVA;

    public Qhi(Context context) {
        super(context);
        this.Qhi = 1;
        this.cjC = Integer.MAX_VALUE;
        this.NBs = 2;
    }

    @Override // com.bytedance.adsdk.ugeno.component.cJ
    /* renamed from: Qhi */
    public EditText ac() {
        UGEditText uGEditText = new UGEditText(this.cJ);
        uGEditText.Qhi(this);
        return uGEditText;
    }

    @Override // com.bytedance.adsdk.ugeno.component.cJ
    public void cJ() {
        super.cJ();
        ((EditText) this.fl).setInputType(this.Qhi);
        ((EditText) this.fl).setText(this.dI);
        ((EditText) this.fl).setTextSize(1, this.Qe);
        ((EditText) this.fl).setTextColor(this.dIT);
        ((EditText) this.fl).setLines(this.Dq);
        ((EditText) this.fl).setMaxLines(this.cjC);
        ((EditText) this.fl).setGravity(this.NBs);
        ((EditText) this.fl).setHint(this.dVA);
    }

    @Override // com.bytedance.adsdk.ugeno.component.cJ
    public void Qhi(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        super.Qhi(str, str2);
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1065511464:
                if (str.equals(TtmlNode.ATTR_TTS_TEXT_ALIGN)) {
                    c2 = 0;
                    break;
                }
                break;
            case -1063571914:
                if (str.equals("textColor")) {
                    c2 = 1;
                    break;
                }
                break;
            case -1048634236:
                if (str.equals("textStyle")) {
                    c2 = 2;
                    break;
                }
                break;
            case -1003668786:
                if (str.equals("textSize")) {
                    c2 = 3;
                    break;
                }
                break;
            case 3202695:
                if (str.equals("hint")) {
                    c2 = 4;
                    break;
                }
                break;
            case 3556653:
                if (str.equals("text")) {
                    c2 = 5;
                    break;
                }
                break;
            case 102977279:
                if (str.equals("lines")) {
                    c2 = 6;
                    break;
                }
                break;
            case 390232059:
                if (str.equals("maxLines")) {
                    c2 = 7;
                    break;
                }
                break;
            case 1554823821:
                if (str.equals("ellipsize")) {
                    c2 = '\b';
                    break;
                }
                break;
            case 1706976804:
                if (str.equals("inputType")) {
                    c2 = '\t';
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                this.NBs = Tgh(str2);
                return;
            case 1:
                this.dIT = com.bytedance.adsdk.ugeno.cJ.Qhi.Qhi(str2);
                return;
            case 2:
                this.YB = str2;
                return;
            case 3:
                this.Qe = Float.parseFloat(str2);
                return;
            case 4:
                this.dVA = str2;
                return;
            case 5:
                this.dI = str2;
                return;
            case 6:
                this.Dq = Integer.parseInt(str2);
                return;
            case 7:
                this.cjC = Integer.parseInt(str2);
                return;
            case '\b':
                this.Hf = str2;
                return;
            case '\t':
                this.Qhi = fl(str2);
                return;
            default:
                return;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int fl(String str) {
        char c2;
        switch (str.hashCode()) {
            case -1034364087:
                if (str.equals("number")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 3556653:
                if (str.equals("text")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 96619420:
                if (str.equals("email")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 106642798:
                if (str.equals("phone")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 1216985755:
                if (str.equals("password")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 != 0) {
            if (c2 != 1) {
                if (c2 != 2) {
                    return c2 != 3 ? 1 : 32;
                }
                return 2;
            }
            return 3;
        }
        return 128;
    }

    private int Tgh(String str) {
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals(TtmlNode.CENTER)) {
                    c2 = 0;
                    break;
                }
                break;
            case 3317767:
                if (str.equals(TtmlNode.LEFT)) {
                    c2 = 1;
                    break;
                }
                break;
            case 108511772:
                if (str.equals(TtmlNode.RIGHT)) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return 17;
            case 1:
                return 3;
            case 2:
                return 5;
            default:
                return 2;
        }
    }
}
