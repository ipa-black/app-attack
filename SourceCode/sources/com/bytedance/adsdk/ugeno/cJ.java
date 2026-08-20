package com.bytedance.adsdk.ugeno;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import com.bytedance.adsdk.ugeno.cJ.hm;
import com.bytedance.adsdk.ugeno.core.Gm;
import com.bytedance.adsdk.ugeno.swiper.Swiper;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: UGSwiperWidget.java */
/* loaded from: classes2.dex */
public class cJ extends com.bytedance.adsdk.ugeno.component.Qhi<Swiper> {
    private float Dq;
    private com.bytedance.adsdk.ugeno.component.cJ HLI;
    private String Hf;
    private boolean NBs;
    private boolean Qe;
    private float ReL;
    private boolean YB;
    private float cjC;
    private int dI;
    private String dIT;
    private int dVA;
    private float oU;
    private JSONArray ots;
    private float pv;
    private float zjb;

    @Override // com.bytedance.adsdk.ugeno.component.cJ
    public void Qhi(JSONObject jSONObject) {
    }

    public cJ(Context context) {
        super(context);
        this.Qe = true;
        this.YB = true;
        this.cjC = 0.0f;
        this.Dq = 2000.0f;
        this.Hf = "normal";
        this.NBs = true;
        this.dI = Color.parseColor("#666666");
        this.dVA = Color.parseColor("#ffffff");
    }

    @Override // com.bytedance.adsdk.ugeno.component.cJ
    public View ac() {
        this.fl = new Swiper(this.cJ);
        ((Swiper) this.fl).Qhi((ac) this);
        return this.fl;
    }

    public void Qhi(com.bytedance.adsdk.ugeno.swiper.Qhi qhi) {
        if (this.fl != 0) {
            ((Swiper) this.fl).setOnPageChangeListener(qhi);
        }
    }

    public void Qhi(int i) {
        if (this.fl != 0) {
            ((Swiper) this.fl).WAv(i);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.component.Qhi, com.bytedance.adsdk.ugeno.component.cJ
    public void cJ() {
        super.cJ();
        JSONArray jSONArray = this.ots;
        if (jSONArray == null || jSONArray.length() <= 0) {
            return;
        }
        ((Swiper) this.fl).CJ((int) this.oU).fl((int) this.pv).Tgh((int) this.ReL).cJ(this.NBs).cJ(this.dVA).ac(this.dI).Qhi(this.Hf).ac(this.Qe).Qhi(this.zjb).Qhi(this.YB).Qhi((int) this.Dq).cJ(this.NBs);
        for (int i = 0; i < this.ots.length(); i++) {
            Gm gm = new Gm(this.cJ);
            gm.Qhi(this.xyz);
            com.bytedance.adsdk.ugeno.component.cJ<View> Qhi = gm.Qhi(this.HLI.zc(), (com.bytedance.adsdk.ugeno.component.cJ<View>) null);
            gm.cJ(this.ots.optJSONObject(i));
            ((Swiper) this.fl).Qhi((Swiper) Qhi);
        }
        if (this.YB) {
            ((Swiper) this.fl).Qhi();
        }
    }

    @Override // com.bytedance.adsdk.ugeno.component.Qhi
    public void Qhi(com.bytedance.adsdk.ugeno.component.cJ cJVar) {
        this.HLI = cJVar;
    }

    @Override // com.bytedance.adsdk.ugeno.component.cJ
    public void Qhi(String str, String str2) {
        super.Qhi(str, str2);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1657957217:
                if (str.equals("delayStart")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1575751020:
                if (str.equals("indicatorColor")) {
                    c2 = 1;
                    break;
                }
                break;
            case -1453344127:
                if (str.equals("nextMargin")) {
                    c2 = 2;
                    break;
                }
                break;
            case -1306084975:
                if (str.equals("effect")) {
                    c2 = 3;
                    break;
                }
                break;
            case -962590849:
                if (str.equals("direction")) {
                    c2 = 4;
                    break;
                }
                break;
            case -711999985:
                if (str.equals("indicator")) {
                    c2 = 5;
                    break;
                }
                break;
            case -202057851:
                if (str.equals("previousMargin")) {
                    c2 = 6;
                    break;
                }
                break;
            case 3327652:
                if (str.equals("loop")) {
                    c2 = 7;
                    break;
                }
                break;
            case 109641799:
                if (str.equals("speed")) {
                    c2 = '\b';
                    break;
                }
                break;
            case 857882560:
                if (str.equals("pageCount")) {
                    c2 = '\t';
                    break;
                }
                break;
            case 1097821469:
                if (str.equals("pageMargin")) {
                    c2 = '\n';
                    break;
                }
                break;
            case 1196931001:
                if (str.equals("indicatorSelectedColor")) {
                    c2 = 11;
                    break;
                }
                break;
            case 1439562083:
                if (str.equals("autoplay")) {
                    c2 = '\f';
                    break;
                }
                break;
            case 1788817256:
                if (str.equals("dataList")) {
                    c2 = '\r';
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                this.cjC = com.bytedance.adsdk.ugeno.cJ.ac.Qhi(str2, 0.0f);
                return;
            case 1:
                this.dI = com.bytedance.adsdk.ugeno.cJ.Qhi.Qhi(str2);
                return;
            case 2:
                this.ReL = hm.Qhi(this.cJ, com.bytedance.adsdk.ugeno.cJ.ac.Qhi(str2, 0.0f));
                return;
            case 3:
                this.Hf = str2;
                return;
            case 4:
                this.dIT = str2;
                return;
            case 5:
                this.NBs = com.bytedance.adsdk.ugeno.cJ.ac.Qhi(str2, true);
                return;
            case 6:
                this.pv = hm.Qhi(this.cJ, com.bytedance.adsdk.ugeno.cJ.ac.Qhi(str2, 0.0f));
                return;
            case 7:
                this.Qe = com.bytedance.adsdk.ugeno.cJ.ac.Qhi(str2, true);
                return;
            case '\b':
                this.Dq = com.bytedance.adsdk.ugeno.cJ.ac.Qhi(str2, 500.0f);
                return;
            case '\t':
                this.zjb = com.bytedance.adsdk.ugeno.cJ.ac.Qhi(str2, 1.0f);
                return;
            case '\n':
                this.oU = hm.Qhi(this.cJ, com.bytedance.adsdk.ugeno.cJ.ac.Qhi(str2, 0.0f));
                return;
            case 11:
                this.dVA = com.bytedance.adsdk.ugeno.cJ.Qhi.Qhi(str2);
                return;
            case '\f':
                this.YB = com.bytedance.adsdk.ugeno.cJ.ac.Qhi(str2, true);
                return;
            case '\r':
                this.ots = com.bytedance.adsdk.ugeno.cJ.cJ.Qhi(str2, (JSONArray) null);
                return;
            default:
                return;
        }
    }
}
