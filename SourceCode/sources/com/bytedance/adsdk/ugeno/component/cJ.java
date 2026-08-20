package com.bytedance.adsdk.ugeno.component;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.appodeal.ads.modules.common.internal.Constants;
import com.bytedance.adsdk.ugeno.ac;
import com.bytedance.adsdk.ugeno.cJ.Qhi;
import com.bytedance.adsdk.ugeno.component.Qhi;
import com.bytedance.adsdk.ugeno.core.ABk;
import com.bytedance.adsdk.ugeno.core.HzH;
import com.bytedance.adsdk.ugeno.core.IAnimation;
import com.bytedance.adsdk.ugeno.core.ROR;
import com.bytedance.adsdk.ugeno.core.Sf;
import com.bytedance.adsdk.ugeno.core.WAv;
import com.bytedance.adsdk.ugeno.core.cJ.Tgh;
import com.bytedance.adsdk.ugeno.core.cJ.fl;
import com.bytedance.adsdk.ugeno.core.hm;
import com.bytedance.adsdk.ugeno.core.iMK;
import com.bytedance.adsdk.ugeno.core.pA;
import com.bytedance.adsdk.ugeno.core.zc;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.bidmachine.utils.IabUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.text.Typography;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: UGenWidget.java */
/* loaded from: classes2.dex */
public abstract class cJ<T extends View> implements ac, iMK.Qhi, iMK.cJ {
    protected float ABk;
    protected JSONObject CJ;
    protected boolean CQU;
    private Tgh Dq;
    protected boolean Dww;
    protected float EBS;
    private boolean EGK;
    protected boolean Eh;
    protected float FQ;
    protected String Gm;
    private float Gy;
    private HzH HLI;
    private com.bytedance.adsdk.ugeno.core.cJ.cJ Hf;
    protected float HzH;
    protected float Jma;
    protected Map<Integer, zc> MND;
    protected float MQ;
    private com.bytedance.adsdk.ugeno.core.cJ.Qhi NBs;
    protected String NFd;
    protected boolean PAe;
    private float PER;
    private boolean Qe;
    private GradientDrawable Qhi;
    protected Qhi<ViewGroup> ROR;
    private boolean ReL;
    private boolean Ri;
    protected ROR.Qhi Sf;
    protected Qhi<ViewGroup> Tgh;
    private boolean Ura;
    private JSONObject VnT;
    protected String WAv;
    private Qhi.C0177Qhi YB;
    protected int aP;
    protected JSONObject ac;
    protected float bxS;
    protected Context cJ;
    private com.bytedance.adsdk.ugeno.core.Qhi cjC;
    private hm dI;
    private String dIT;
    private String dVA;
    protected int es;
    protected T fl;
    private boolean gga;
    protected WAv hm;
    protected float hpZ;
    protected float iMK;
    protected Sf ip;
    protected pA jPH;
    protected float js;
    protected float kYc;
    protected float lB;
    protected float lG;
    private boolean oU;
    private boolean ots;
    protected float pA;
    protected boolean pM;
    private boolean pv;
    protected float qMt;
    protected float sDy;
    protected float tP;
    protected iMK xyz;
    protected int yN;
    protected float zc;
    private boolean zjb;
    protected float zn;

    public T ac() {
        return null;
    }

    public cJ(Context context) {
        this(context, null);
    }

    public cJ(Context context, Qhi<ViewGroup> qhi) {
        this.zc = -2.0f;
        this.ABk = -2.0f;
        this.yN = 0;
        this.PAe = true;
        this.gga = true;
        this.Ri = false;
        this.Ura = false;
        this.PER = 1.0f;
        this.Gy = 12.0f;
        this.cJ = context;
        this.Tgh = qhi;
        this.MND = new HashMap();
        this.Qhi = new GradientDrawable();
        this.fl = ac();
    }

    public T hm() {
        return this.fl;
    }

    public void Qhi(JSONObject jSONObject) {
        JSONObject jSONObject2;
        this.CJ = jSONObject;
        JSONObject jSONObject3 = this.ac;
        if (jSONObject3 == null) {
            return;
        }
        Iterator<String> keys = jSONObject3.keys();
        Qhi<ViewGroup> qhi = this.Tgh;
        Qhi.C0178Qhi Sf = qhi instanceof Qhi ? qhi.Sf() : null;
        while (keys.hasNext()) {
            String next = keys.next();
            String Qhi = com.bytedance.adsdk.ugeno.Qhi.ac.Qhi(this.ac.optString(next), jSONObject);
            Qhi(next, Qhi);
            if (Sf != null) {
                Sf.Qhi(this.cJ, next, Qhi);
            }
        }
        if (Sf != null) {
            Qhi(Sf.Qhi());
        }
        JSONObject jSONObject4 = this.VnT;
        if (jSONObject4 == null || (jSONObject2 = this.CJ) == null) {
            return;
        }
        try {
            jSONObject2.put("i18n", jSONObject4);
            Log.d("nxb", "id: " + this.WAv + "; " + this.VnT);
        } catch (JSONException unused) {
        }
    }

    public JSONObject WAv() {
        return this.CJ;
    }

    public void cJ() {
        final fl flVar;
        Sf();
        this.fl.setAlpha(this.PER);
        this.fl.setPadding((int) (this.Dww ? this.MQ : this.tP), (int) (this.pM ? this.EBS : this.tP), (int) (this.CQU ? this.qMt : this.tP), (int) (this.Eh ? this.bxS : this.tP));
        this.fl.setVisibility(this.yN);
        ROR.Qhi qhi = this.Sf;
        if (qhi != null && TextUtils.isEmpty(qhi.cJ())) {
            this.fl.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.adsdk.ugeno.component.cJ.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (cJ.this.ip != null) {
                        boolean unused = cJ.this.gga;
                    }
                }
            });
        } else if (cJ(1) && !this.zjb) {
            this.fl.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.adsdk.ugeno.component.cJ.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (cJ.this.xyz == null || !cJ.this.gga) {
                        return;
                    }
                    cJ cJVar = cJ.this;
                    cJ.this.xyz.Qhi(cJ.this.MND.get(1), cJVar, cJVar);
                }
            });
        }
        final com.bytedance.adsdk.ugeno.core.cJ.ac acVar = null;
        if (this.xyz == null || !cJ(4)) {
            flVar = null;
        } else if (cJ(1)) {
            this.ots = true;
            flVar = new fl(this.cJ, this.MND.get(4), this.MND.get(1), this.ots);
        } else {
            flVar = new fl(this.cJ, this.MND.get(4), this.ots);
        }
        if (this.xyz != null && cJ(1) && this.zjb) {
            acVar = new com.bytedance.adsdk.ugeno.core.cJ.ac(this.cJ, this.MND.get(1));
        }
        if (this.xyz != null && cJ(3)) {
            this.NBs = new com.bytedance.adsdk.ugeno.core.cJ.Qhi(this.cJ);
            new Object() { // from class: com.bytedance.adsdk.ugeno.component.cJ.3
            };
        }
        if (this.xyz != null && cJ(9)) {
            Tgh tgh = new Tgh(this.cJ, this.MND.get(9), this);
            this.Dq = tgh;
            tgh.Qhi(this.xyz);
        }
        if (cJ(10)) {
            com.bytedance.adsdk.ugeno.core.cJ.cJ cJVar = new com.bytedance.adsdk.ugeno.core.cJ.cJ(this.cJ, this.MND.get(10), this);
            this.Hf = cJVar;
            cJVar.Qhi(this.xyz);
        }
        this.fl.setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.adsdk.ugeno.component.cJ.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                fl flVar2;
                com.bytedance.adsdk.ugeno.core.cJ.ac acVar2;
                if (cJ.this.jPH != null) {
                    cJ.this.jPH.Qhi(cJ.this, motionEvent);
                }
                if (cJ.this.cJ(17) && motionEvent.getAction() == 0) {
                    cJ cJVar2 = cJ.this;
                    cJ.this.xyz.Qhi(cJ.this.MND.get(17), cJVar2, cJVar2);
                }
                if (cJ.this.cJ(1) && cJ.this.zjb && cJ.this.xyz != null && (acVar2 = acVar) != null) {
                    return acVar2.Qhi(cJ.this.xyz, cJ.this, motionEvent);
                }
                if (cJ.this.xyz == null || (flVar2 = flVar) == null) {
                    return false;
                }
                return flVar2.Qhi(cJ.this.xyz, cJ.this, motionEvent);
            }
        });
        Qhi();
    }

    private void Qhi() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.WAv).append(":").append(this.Gm).append(":");
        if (cJ(1)) {
            sb.append("1:");
            zc zcVar = this.MND.get(1);
            if (zcVar != null && zcVar.ac() != null) {
                sb.append(zcVar.ac().optString(SessionDescription.ATTR_TYPE));
            }
        } else {
            sb.append("0");
        }
        this.fl.setContentDescription(sb);
    }

    public void Qhi(HzH hzH) {
        this.HLI = hzH;
    }

    @Override // com.bytedance.adsdk.ugeno.ac
    public void Tgh() {
        if (this.cjC != null) {
            hm hmVar = new hm(this.fl, this.cjC);
            this.dI = hmVar;
            hmVar.Qhi();
        }
        if (this.Hf != null && cJ(10)) {
            this.Hf.Qhi();
        }
        if (this.Dq == null || !cJ(9)) {
            return;
        }
        this.Dq.Qhi();
    }

    @Override // com.bytedance.adsdk.ugeno.ac
    public void ROR() {
        hm hmVar = this.dI;
        if (hmVar != null) {
            hmVar.cJ();
        }
    }

    public boolean cJ(int i) {
        Map<Integer, zc> map = this.MND;
        return map != null && map.containsKey(Integer.valueOf(i));
    }

    public void ac(int i) {
        this.fl.setVisibility(i);
    }

    public void Qhi(pA pAVar) {
        this.jPH = pAVar;
    }

    public void Qhi(iMK imk) {
        this.xyz = imk;
    }

    public void cJ(JSONObject jSONObject) {
        this.ac = jSONObject;
    }

    public JSONObject Gm() {
        return this.ac;
    }

    private void Sf() {
        if (TextUtils.isEmpty(this.NFd)) {
            this.Qhi.setShape(0);
            if (this.Qe) {
                Qhi.C0177Qhi c0177Qhi = this.YB;
                if (c0177Qhi != null) {
                    this.Qhi.setOrientation(c0177Qhi.Qhi);
                    if (Build.VERSION.SDK_INT >= 29) {
                        this.Qhi.setColors(this.YB.cJ, this.YB.ac);
                    } else {
                        this.Qhi.setColors(this.YB.cJ);
                    }
                }
            } else {
                this.Qhi.setColor(this.aP);
            }
            this.Qhi.setCornerRadius(this.sDy);
            this.Qhi.setStroke((int) this.zn, this.es);
            this.fl.setBackground(this.Qhi);
        } else if (this.NFd.startsWith("local://")) {
            String replace = this.NFd.replace("local://", "");
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inPreferredConfig = Bitmap.Config.RGB_565;
                options.inPurgeable = true;
                options.inInputShareable = true;
                this.fl.setBackground(new BitmapDrawable(this.cJ.getResources(), BitmapFactory.decodeStream(this.cJ.getResources().openRawResource(com.bytedance.adsdk.ugeno.cJ.fl.cJ(this.cJ, replace)), null, options)));
            } catch (Throwable unused) {
            }
        }
    }

    public void Qhi(ViewGroup.LayoutParams layoutParams) {
        T t = this.fl;
        if (t != null) {
            t.setLayoutParams(layoutParams);
        }
    }

    public void Qhi(ROR.Qhi qhi) {
        this.Sf = qhi;
    }

    public ROR.Qhi zc() {
        return this.Sf;
    }

    public cJ<T> cJ(String str) {
        return Qhi(str);
    }

    protected cJ<T> Qhi(String str) {
        if (TextUtils.isEmpty(this.WAv) || !TextUtils.equals(this.WAv, str)) {
            return null;
        }
        return this;
    }

    public Qhi ABk() {
        return this.Tgh;
    }

    public void Qhi(Qhi qhi) {
        this.Tgh = qhi;
    }

    public void ac(String str) {
        this.WAv = str;
    }

    public String iMK() {
        return this.WAv;
    }

    public void CJ(String str) {
        this.Gm = str;
    }

    public String pA() {
        return this.Gm;
    }

    public int hpZ() {
        return (int) this.zc;
    }

    public int HzH() {
        return (int) this.ABk;
    }

    public void Qhi(WAv wAv) {
        this.hm = wAv;
    }

    public boolean kYc() {
        return this.PAe;
    }

    public void Qhi(Sf sf) {
        this.ip = sf;
    }

    public void Qhi(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1964681502:
                if (str.equals("clickable")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1501175880:
                if (str.equals("paddingLeft")) {
                    c2 = 1;
                    break;
                }
                break;
            case -1351184668:
                if (str.equals("onDelay")) {
                    c2 = 2;
                    break;
                }
                break;
            case -1337252761:
                if (str.equals("onShake")) {
                    c2 = 3;
                    break;
                }
                break;
            case -1337126126:
                if (str.equals("onSlide")) {
                    c2 = 4;
                    break;
                }
                break;
            case -1336288090:
                if (str.equals("onTimer")) {
                    c2 = 5;
                    break;
                }
                break;
            case -1332194002:
                if (str.equals("background")) {
                    c2 = 6;
                    break;
                }
                break;
            case -1267206133:
                if (str.equals("opacity")) {
                    c2 = 7;
                    break;
                }
                break;
            case -1221029593:
                if (str.equals(IabUtils.KEY_HEIGHT)) {
                    c2 = '\b';
                    break;
                }
                break;
            case -1081309778:
                if (str.equals("margin")) {
                    c2 = '\t';
                    break;
                }
                break;
            case -1055029545:
                if (str.equals("borderRightTopRadius")) {
                    c2 = '\n';
                    break;
                }
                break;
            case -1044792121:
                if (str.equals("marginTop")) {
                    c2 = 11;
                    break;
                }
                break;
            case -1013407967:
                if (str.equals("onDown")) {
                    c2 = '\f';
                    break;
                }
                break;
            case -933876756:
                if (str.equals("backgroundDrawable")) {
                    c2 = '\r';
                    break;
                }
                break;
            case -806339567:
                if (str.equals("padding")) {
                    c2 = 14;
                    break;
                }
                break;
            case -681357156:
                if (str.equals("triggerFunc")) {
                    c2 = 15;
                    break;
                }
                break;
            case -289173127:
                if (str.equals("marginBottom")) {
                    c2 = 16;
                    break;
                }
                break;
            case -179345264:
                if (str.equals("borderLeftBottomRadius")) {
                    c2 = 17;
                    break;
                }
                break;
            case 3355:
                if (str.equals("id")) {
                    c2 = 18;
                    break;
                }
                break;
            case 3176990:
                if (str.equals("i18n")) {
                    c2 = 19;
                    break;
                }
                break;
            case 3373707:
                if (str.equals("name")) {
                    c2 = 20;
                    break;
                }
                break;
            case 90130308:
                if (str.equals("paddingTop")) {
                    c2 = 21;
                    break;
                }
                break;
            case 94750088:
                if (str.equals(Constants.CLICK)) {
                    c2 = 22;
                    break;
                }
                break;
            case 105871684:
                if (str.equals("onTap")) {
                    c2 = 23;
                    break;
                }
                break;
            case 108285963:
                if (str.equals("ratio")) {
                    c2 = 24;
                    break;
                }
                break;
            case 113126854:
                if (str.equals(IabUtils.KEY_WIDTH)) {
                    c2 = 25;
                    break;
                }
                break;
            case 202355100:
                if (str.equals("paddingBottom")) {
                    c2 = 26;
                    break;
                }
                break;
            case 320386138:
                if (str.equals("onLoadMore")) {
                    c2 = 27;
                    break;
                }
                break;
            case 713848971:
                if (str.equals("paddingRight")) {
                    c2 = 28;
                    break;
                }
                break;
            case 722830999:
                if (str.equals("borderColor")) {
                    c2 = 29;
                    break;
                }
                break;
            case 741115130:
                if (str.equals("borderWidth")) {
                    c2 = 30;
                    break;
                }
                break;
            case 843948038:
                if (str.equals("onExposure")) {
                    c2 = 31;
                    break;
                }
                break;
            case 975087886:
                if (str.equals("marginRight")) {
                    c2 = ' ';
                    break;
                }
                break;
            case 1087723621:
                if (str.equals("onAnimation")) {
                    c2 = '!';
                    break;
                }
                break;
            case 1151851515:
                if (str.equals("animatorSet")) {
                    c2 = Typography.quote;
                    break;
                }
                break;
            case 1158381436:
                if (str.equals("onPullToRefresh")) {
                    c2 = '#';
                    break;
                }
                break;
            case 1259700532:
                if (str.equals("borderLeftTopRadius")) {
                    c2 = '$';
                    break;
                }
                break;
            case 1349188574:
                if (str.equals("borderRadius")) {
                    c2 = '%';
                    break;
                }
                break;
            case 1490730380:
                if (str.equals("onScroll")) {
                    c2 = Typography.amp;
                    break;
                }
                break;
            case 1685004456:
                if (str.equals("onLongTap")) {
                    c2 = '\'';
                    break;
                }
                break;
            case 1691835405:
                if (str.equals("borderRightBottomRadius")) {
                    c2 = '(';
                    break;
                }
                break;
            case 1941332754:
                if (str.equals("visibility")) {
                    c2 = ')';
                    break;
                }
                break;
            case 1970934485:
                if (str.equals("marginLeft")) {
                    c2 = '*';
                    break;
                }
                break;
            case 1997542747:
                if (str.equals("availability")) {
                    c2 = '+';
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                this.gga = com.bytedance.adsdk.ugeno.cJ.ac.Qhi(str2, true);
                return;
            case 1:
                this.MQ = com.bytedance.adsdk.ugeno.cJ.hm.Qhi(this.cJ, str2);
                this.Dww = true;
                return;
            case 2:
            case 3:
            case 4:
            case 5:
            case '\f':
            case 23:
            case 27:
            case 31:
            case '!':
            case '#':
            case '&':
            case '\'':
                cJ(str, str2);
                return;
            case 6:
                if (com.bytedance.adsdk.ugeno.cJ.Qhi.ac(str2)) {
                    this.Qe = true;
                    this.YB = com.bytedance.adsdk.ugeno.cJ.Qhi.cJ(str2);
                    return;
                }
                this.aP = com.bytedance.adsdk.ugeno.cJ.Qhi.Qhi(str2);
                this.Qe = false;
                return;
            case 7:
                this.PER = com.bytedance.adsdk.ugeno.cJ.ac.Qhi(str2, 1.0f);
                return;
            case '\b':
                if (TextUtils.equals(str2, "match_parent")) {
                    this.ABk = -1.0f;
                } else if (TextUtils.equals(str2, "wrap_content")) {
                    this.ABk = -2.0f;
                } else {
                    this.ABk = com.bytedance.adsdk.ugeno.cJ.hm.Qhi(this.cJ, str2);
                }
                this.Ura = true;
                return;
            case '\t':
                this.iMK = com.bytedance.adsdk.ugeno.cJ.hm.Qhi(this.cJ, str2);
                return;
            case '\n':
                this.Jma = com.bytedance.adsdk.ugeno.cJ.hm.Qhi(this.cJ, str2);
                return;
            case 11:
                this.HzH = com.bytedance.adsdk.ugeno.cJ.hm.Qhi(this.cJ, str2);
                return;
            case '\r':
                this.NFd = str2;
                return;
            case 14:
                this.tP = com.bytedance.adsdk.ugeno.cJ.hm.Qhi(this.cJ, str2);
                return;
            case 15:
                this.dVA = str2;
                return;
            case 16:
                this.kYc = com.bytedance.adsdk.ugeno.cJ.hm.Qhi(this.cJ, str2);
                return;
            case 17:
                this.lG = com.bytedance.adsdk.ugeno.cJ.hm.Qhi(this.cJ, str2);
                return;
            case 18:
                this.WAv = str2;
                return;
            case 19:
                this.VnT = com.bytedance.adsdk.ugeno.cJ.cJ.Qhi(str2, (JSONObject) null);
                return;
            case 20:
                this.Gm = str2;
                return;
            case 21:
                this.EBS = com.bytedance.adsdk.ugeno.cJ.hm.Qhi(this.cJ, str2);
                this.pM = true;
                return;
            case 22:
                this.dIT = str2;
                return;
            case 24:
                this.FQ = com.bytedance.adsdk.ugeno.cJ.ac.Qhi(str2, 0.0f);
                return;
            case 25:
                if (TextUtils.equals(str2, "match_parent")) {
                    this.zc = -1.0f;
                } else if (TextUtils.equals(str2, "wrap_content")) {
                    this.zc = -2.0f;
                } else {
                    this.zc = com.bytedance.adsdk.ugeno.cJ.hm.Qhi(this.cJ, str2);
                }
                this.Ri = true;
                return;
            case 26:
                this.bxS = com.bytedance.adsdk.ugeno.cJ.hm.Qhi(this.cJ, str2);
                this.Eh = true;
                return;
            case 28:
                this.qMt = com.bytedance.adsdk.ugeno.cJ.hm.Qhi(this.cJ, str2);
                this.CQU = true;
                return;
            case 29:
                this.es = com.bytedance.adsdk.ugeno.cJ.Qhi.Qhi(str2);
                return;
            case 30:
                this.zn = com.bytedance.adsdk.ugeno.cJ.hm.Qhi(this.cJ, str2);
                return;
            case ' ':
                this.hpZ = com.bytedance.adsdk.ugeno.cJ.hm.Qhi(this.cJ, str2);
                return;
            case '\"':
                this.cjC = com.bytedance.adsdk.ugeno.core.Qhi.Qhi(str2, this);
                return;
            case '$':
                this.lB = com.bytedance.adsdk.ugeno.cJ.hm.Qhi(this.cJ, str2);
                return;
            case '%':
                this.sDy = com.bytedance.adsdk.ugeno.cJ.hm.Qhi(this.cJ, str2);
                return;
            case '(':
                this.js = com.bytedance.adsdk.ugeno.cJ.hm.Qhi(this.cJ, str2);
                return;
            case ')':
                if (TextUtils.equals("visible", str2)) {
                    this.yN = 0;
                    return;
                } else if (TextUtils.equals("invisible", str2)) {
                    this.yN = 4;
                    return;
                } else if (TextUtils.equals("gone", str2)) {
                    this.yN = 8;
                    return;
                } else {
                    return;
                }
            case '*':
                this.pA = com.bytedance.adsdk.ugeno.cJ.hm.Qhi(this.cJ, str2);
                return;
            case '+':
                this.PAe = !TextUtils.equals(str2, "unavailable");
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void cJ(String str, String str2) {
        if (!TextUtils.isEmpty(str2) && this.MND != null) {
            try {
                int Qhi = ABk.Qhi(str).Qhi();
                zc zcVar = new zc();
                zcVar.Qhi(Qhi);
                zcVar.Qhi(this);
                JSONObject jSONObject = new JSONObject(str2);
                if (Qhi == 3) {
                    try {
                        this.Gy = Float.parseFloat(com.bytedance.adsdk.ugeno.Qhi.ac.Qhi(jSONObject.optString("shakeAmplitude"), this.CJ));
                    } catch (NumberFormatException unused) {
                        this.Gy = 12.0f;
                    }
                }
                iMK imk = this.xyz;
                if (!(imk instanceof com.bytedance.adsdk.ugeno.core.Qhi.Qhi)) {
                    Qhi(Qhi, jSONObject, zcVar);
                } else if (!((com.bytedance.adsdk.ugeno.core.Qhi.Qhi) imk).Qhi()) {
                    Qhi(Qhi, jSONObject, zcVar);
                } else {
                    zcVar.Qhi(jSONObject);
                    this.MND.put(Integer.valueOf(Qhi), zcVar);
                }
            } catch (JSONException unused2) {
            }
        }
    }

    @Deprecated
    protected void Qhi(int i, JSONObject jSONObject, zc zcVar) {
        JSONObject optJSONObject = jSONObject.optJSONObject(FirebaseAnalytics.Param.SUCCESS);
        if (optJSONObject != null) {
            zc zcVar2 = new zc();
            zcVar2.Qhi(optJSONObject);
            zcVar2.Qhi(this);
            zcVar.Qhi(zcVar2);
        }
        JSONObject optJSONObject2 = jSONObject.optJSONObject("fail");
        if (optJSONObject2 != null) {
            zc zcVar3 = new zc();
            zcVar3.Qhi(optJSONObject2);
            zcVar3.Qhi(this);
            zcVar.cJ(zcVar3);
        }
        zcVar.Qhi(jSONObject);
        this.MND.put(Integer.valueOf(i), zcVar);
    }

    @Override // com.bytedance.adsdk.ugeno.ac
    public void CJ() {
        if (this.HLI == null || this.oU) {
            return;
        }
        this.oU = true;
    }

    @Override // com.bytedance.adsdk.ugeno.ac
    public void fl() {
        if (this.HLI == null || this.ReL) {
            return;
        }
        this.ReL = true;
    }

    @Override // com.bytedance.adsdk.ugeno.ac
    public int[] Qhi(int i, int i2) {
        if (this.FQ > 0.0f) {
            if (this.Ri) {
                int size = View.MeasureSpec.getSize(i);
                float f2 = this.FQ;
                if (f2 != 0.0f) {
                    i2 = View.MeasureSpec.makeMeasureSpec((int) (size / f2), 1073741824);
                }
            } else if (this.Ura) {
                int size2 = View.MeasureSpec.getSize(i2);
                float f3 = this.FQ;
                if (f3 != 0.0f) {
                    i = View.MeasureSpec.makeMeasureSpec((int) (size2 * f3), 1073741824);
                }
            }
        }
        if (this.HLI != null && !this.pv) {
            this.pv = true;
        }
        return new int[]{i, i2};
    }

    @Override // com.bytedance.adsdk.ugeno.ac
    public void Qhi(int i, int i2, int i3, int i4) {
        if (this.HLI == null || this.EGK) {
            return;
        }
        this.EGK = true;
    }

    @Override // com.bytedance.adsdk.ugeno.ac
    public void Qhi(Canvas canvas, IAnimation iAnimation) {
        hm hmVar = this.dI;
        if (hmVar != null) {
            hmVar.Qhi(canvas, iAnimation);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.ac
    public void cJ(int i, int i2, int i3, int i4) {
        hm hmVar = this.dI;
        if (hmVar != null) {
            hmVar.Qhi(i, i2);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.core.iMK.cJ
    public void Qhi(zc zcVar) {
        Qhi<ViewGroup> qhi;
        cJ<T> cJ;
        if (zcVar == null || zcVar.ac() == null || !TextUtils.equals(zcVar.ac().optString(SessionDescription.ATTR_TYPE), "onDismiss")) {
            return;
        }
        String optString = zcVar.ac().optString("nodeId");
        ac(8);
        this.ROR = (Qhi) cJ(this);
        if (TextUtils.isEmpty(optString) || (qhi = this.ROR) == null || (cJ = qhi.cJ(optString)) == null) {
            return;
        }
        cJ.ac(8);
    }

    public cJ cJ(cJ cJVar) {
        return (cJVar.ABk() == null && (cJVar instanceof Qhi)) ? cJVar : cJ(cJVar.ABk());
    }
}
