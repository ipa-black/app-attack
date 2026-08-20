package com.bytedance.adsdk.ugeno.component.text;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextUtils;
import android.widget.TextView;
import com.bytedance.adsdk.ugeno.cJ.ac;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
/* compiled from: UGTextWidget.java */
/* loaded from: classes2.dex */
public class cJ extends com.bytedance.adsdk.ugeno.component.cJ<TextView> {
    private int Dq;
    private float HLI;
    private int Hf;
    private int NBs;
    private float Qe;
    private String Qhi;
    private int YB;
    private int cjC;
    private TextUtils.TruncateAt dI;
    private int dIT;
    private float dVA;
    private float oU;
    private int ots;
    private float pv;
    private float zjb;

    public cJ(Context context) {
        super(context);
        this.cjC = Integer.MAX_VALUE;
        this.Hf = 2;
        this.dVA = -1.0f;
        this.zjb = -1.0f;
    }

    @Override // com.bytedance.adsdk.ugeno.component.cJ
    /* renamed from: Qhi */
    public TextView ac() {
        UGTextView uGTextView = new UGTextView(this.cJ);
        uGTextView.Qhi(this);
        return uGTextView;
    }

    @Override // com.bytedance.adsdk.ugeno.component.cJ
    public void cJ() {
        super.cJ();
        if (TextUtils.equals("null", this.Qhi)) {
            this.Qhi = "";
        }
        fl(this.Qhi);
        ((TextView) this.fl).setTextSize(1, this.Qe);
        ((TextView) this.fl).setTextColor(this.dIT);
        ((TextView) this.fl).setLines(this.Dq);
        ((TextView) this.fl).setMaxLines(this.cjC);
        ((TextView) this.fl).setGravity(this.Hf);
        ((TextView) this.fl).setIncludeFontPadding(false);
        Qhi(this.NBs);
        Qhi(this.dI);
        ((TextView) this.fl).setTypeface(Typeface.DEFAULT, this.YB);
        if (Build.VERSION.SDK_INT >= 28 && this.dVA >= 0.0f) {
            ((TextView) this.fl).setLineSpacing(0.0f, this.dVA);
        }
        ((TextView) this.fl).setShadowLayer(this.pv, this.HLI, this.oU, this.ots);
    }

    public void fl(String str) {
        this.Qhi = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (TextUtils.equals("null", str)) {
            this.Qhi = "";
        }
        ((TextView) this.fl).setText(this.Qhi);
    }

    public void Qhi(int i) {
        this.NBs = i;
        if (i == Integer.MAX_VALUE) {
            return;
        }
        ((TextView) this.fl).setPaintFlags(i);
    }

    public void Qhi(TextUtils.TruncateAt truncateAt) {
        if (truncateAt == null) {
            return;
        }
        ((TextView) this.fl).setEllipsize(truncateAt);
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
            case -1621067310:
                if (str.equals("shadowRadius")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1589741021:
                if (str.equals("shadowColor")) {
                    c2 = 1;
                    break;
                }
                break;
            case -1065511464:
                if (str.equals(TtmlNode.ATTR_TTS_TEXT_ALIGN)) {
                    c2 = 2;
                    break;
                }
                break;
            case -1063571914:
                if (str.equals("textColor")) {
                    c2 = 3;
                    break;
                }
                break;
            case -1048634236:
                if (str.equals("textStyle")) {
                    c2 = 4;
                    break;
                }
                break;
            case -1003668786:
                if (str.equals("textSize")) {
                    c2 = 5;
                    break;
                }
                break;
            case -879295043:
                if (str.equals(TtmlNode.ATTR_TTS_TEXT_DECORATION)) {
                    c2 = 6;
                    break;
                }
                break;
            case -756368940:
                if (str.equals("shadowDx")) {
                    c2 = 7;
                    break;
                }
                break;
            case -756368939:
                if (str.equals("shadowDy")) {
                    c2 = '\b';
                    break;
                }
                break;
            case -734428249:
                if (str.equals(TtmlNode.ATTR_TTS_FONT_WEIGHT)) {
                    c2 = '\t';
                    break;
                }
                break;
            case -515807685:
                if (str.equals("lineHeight")) {
                    c2 = '\n';
                    break;
                }
                break;
            case 3556653:
                if (str.equals("text")) {
                    c2 = 11;
                    break;
                }
                break;
            case 102977279:
                if (str.equals("lines")) {
                    c2 = '\f';
                    break;
                }
                break;
            case 390232059:
                if (str.equals("maxLines")) {
                    c2 = '\r';
                    break;
                }
                break;
            case 1554823821:
                if (str.equals("ellipsize")) {
                    c2 = 14;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                this.pv = ac.Qhi(str2, 0.0f);
                return;
            case 1:
                this.ots = com.bytedance.adsdk.ugeno.cJ.Qhi.Qhi(str2);
                return;
            case 2:
                this.Hf = Sf(str2);
                return;
            case 3:
                this.dIT = com.bytedance.adsdk.ugeno.cJ.Qhi.Qhi(str2);
                return;
            case 4:
                this.YB = ROR(str2);
                return;
            case 5:
                this.Qe = ac.Qhi(str2, 0.0f);
                return;
            case 6:
                this.NBs = hm(str2);
                return;
            case 7:
                this.HLI = ac.Qhi(str2, 0.0f);
                return;
            case '\b':
                this.oU = ac.Qhi(str2, 0.0f);
                return;
            case '\t':
                this.zjb = ac.Qhi(str2, -1.0f);
                return;
            case '\n':
                this.dVA = ac.Qhi(str2, 1.0f);
                return;
            case 11:
                this.Qhi = str2;
                return;
            case '\f':
                this.Dq = ac.Qhi(str2, 0);
                return;
            case '\r':
                this.cjC = Integer.parseInt(str2);
                return;
            case 14:
                this.dI = Tgh(str2);
                return;
            default:
                return;
        }
    }

    private TextUtils.TruncateAt Tgh(String str) {
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals(TtmlNode.CENTER)) {
                    c2 = 0;
                    break;
                }
                break;
            case 100571:
                if (str.equals(TtmlNode.END)) {
                    c2 = 1;
                    break;
                }
                break;
            case 109757538:
                if (str.equals(TtmlNode.START)) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                this.dI = TextUtils.TruncateAt.MIDDLE;
                break;
            case 1:
                this.dI = TextUtils.TruncateAt.END;
                break;
            case 2:
                this.dI = TextUtils.TruncateAt.START;
                break;
            default:
                this.dI = null;
                break;
        }
        return this.dI;
    }

    private int ROR(String str) {
        char c2;
        int hashCode = str.hashCode();
        if (hashCode == -1178781136) {
            if (str.equals(TtmlNode.ITALIC)) {
                c2 = 1;
            }
            c2 = 65535;
        } else if (hashCode != -1039745817) {
            if (hashCode == 3029637 && str.equals(TtmlNode.BOLD)) {
                c2 = 0;
            }
            c2 = 65535;
        } else {
            if (str.equals("normal")) {
                c2 = 2;
            }
            c2 = 65535;
        }
        if (c2 != 0) {
            return c2 != 1 ? 0 : 2;
        }
        return 1;
    }

    private int Sf(String str) {
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

    private int hm(String str) {
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1026963764:
                if (str.equals(TtmlNode.UNDERLINE)) {
                    c2 = 0;
                    break;
                }
                break;
            case -972521773:
                if (str.equals("strikethrough")) {
                    c2 = 1;
                    break;
                }
                break;
            case 3387192:
                if (str.equals("none")) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return 8;
            case 1:
                return 16;
            case 2:
            default:
                return Integer.MAX_VALUE;
        }
    }
}
