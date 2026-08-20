package com.bytedance.sdk.component.adexpress.dynamic.ac;

import com.appodeal.ads.modules.common.internal.Constants;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import io.bidmachine.utils.IabUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.text.Typography;
import org.apache.ldap.server.jndi.JavaLdapSupport;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: DynamicLayoutBrickValue.java */
/* loaded from: classes2.dex */
public class ROR {
    private String ABk;
    private float CJ;
    private boolean CQU;
    private int DaO;
    private boolean Dq;
    private String Dww;
    private String EBS;
    private int EGK;
    private int Eh;
    private int FQ;
    private double Gm;
    private int Gy;
    private boolean HLI;
    private boolean HUk;
    private int HWc;
    private boolean Hf;
    private String HzH;
    private double IC;
    private String Jma;
    private String KW;
    private int Ki;
    private String LcF;
    private String Ls;
    private boolean MND;
    private String MQ;
    private boolean NBs;
    private double NFd;
    private boolean Ohm;
    private List<Qhi> Oy;
    private int PAe;
    private boolean PER;
    private int Px;
    private boolean Qe;
    private float Qhi;
    private float ROR;
    private int ReL;
    private String Ri;
    private int SL;
    private int SNp;
    private int SO;
    private float Sf;
    private boolean TKG;
    private float Tgh;
    private String Ug;
    private String Ura;
    private JSONObject VV;
    private int VnT;
    private float WAv;
    private int Wrw;
    private boolean XH;
    private int YB;
    private int YD;
    private double aP;
    private float ac;
    private int bM;
    private String bxS;
    private float cJ;
    private JSONObject cJP;
    private String cjC;
    private boolean dI;
    private int dIT;
    private String dVA;
    private int eG;
    private String eN;
    private int es;
    private int et;
    private boolean fl;
    private JSONObject gT;
    private int gga;
    private float hm;
    private String hpZ;
    private String iMK;
    private int ip;
    private int jPH;
    private String js;
    private String kYc;
    private String lB;
    private String lG;
    private int mZ;
    private int mz;
    private int ne;
    private int oU;
    private int ots;
    private String pA;
    private String pF;
    private int pM;
    private int pv;
    private String qMt;
    private int rB;
    private String sDy;
    private String sRC;
    private long sqa = -1;
    private String tP;
    private boolean vml;
    private boolean wp;
    private double xyz;
    private int yN;
    private int yy;
    private boolean zTC;
    private double zc;
    private JSONObject zjb;
    private boolean zn;

    public static ROR Qhi(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        ROR ror = new ROR();
        ror.cJ(jSONObject.optString("adType", "embeded"));
        ror.pA(jSONObject.optString("clickArea", "creative"));
        ror.hpZ(jSONObject.optString("clickTigger", Constants.CLICK));
        ror.ac(jSONObject.optString(TtmlNode.ATTR_TTS_FONT_FAMILY, "PingFangSC"));
        ror.CJ(jSONObject.optString(TtmlNode.ATTR_TTS_TEXT_ALIGN, TtmlNode.LEFT));
        ror.fl(jSONObject.optString("color", "#999999"));
        ror.Tgh(jSONObject.optString("bgColor", "transparent"));
        ror.ROR(jSONObject.optString("bgImgUrl", ""));
        ror.Eh(jSONObject.optString("bgImgData", ""));
        ror.Sf(jSONObject.optString("borderColor", "#000000"));
        ror.hm(jSONObject.optString("borderStyle", "solid"));
        ror.WAv(jSONObject.optString("heightMode", "auto"));
        ror.Gm(jSONObject.optString("widthMode", "fixed"));
        ror.zc(jSONObject.optString("interactText", ""));
        ror.ac(jSONObject.optBoolean("isShowBgControl", false));
        ror.ABk(jSONObject.optString("interactBgColor", ""));
        JSONObject optJSONObject = jSONObject.optJSONObject("interactPosition");
        if (optJSONObject != null) {
            ror.ROR(optJSONObject.optInt("translateY", 0));
            ror.Sf(optJSONObject.optInt("translateX", 0));
            ror.CJ(optJSONObject.optDouble("scaleX", 0.0d));
            ror.fl(optJSONObject.optDouble("scaleY", 0.0d));
        }
        ror.iMK(jSONObject.optString("interactType", ""));
        ror.fl(jSONObject.optInt("interactSlideDirection", -1));
        ror.HzH(jSONObject.optString("justifyHorizontal", "space-around"));
        ror.kYc(jSONObject.optString("justifyVertical", "flex-start"));
        ror.cJ(jSONObject.optDouble("timingStart"));
        ror.ac(jSONObject.optDouble("timingEnd"));
        ror.CJ((float) jSONObject.optDouble(IabUtils.KEY_WIDTH, 0.0d));
        ror.ac((float) jSONObject.optDouble(IabUtils.KEY_HEIGHT, 0.0d));
        ror.Qhi((float) jSONObject.optDouble("borderRadius", 0.0d));
        ror.cJ((float) jSONObject.optDouble("borderSize", 0.0d));
        ror.cJ(jSONObject.optBoolean("interactValidate", false));
        ror.hm((float) jSONObject.optDouble(TtmlNode.ATTR_TTS_FONT_SIZE, 0.0d));
        ror.fl((float) jSONObject.optDouble("paddingBottom", 0.0d));
        ror.Tgh((float) jSONObject.optDouble("paddingLeft", 0.0d));
        ror.ROR((float) jSONObject.optDouble("paddingRight", 0.0d));
        ror.Sf((float) jSONObject.optDouble("paddingTop", 0.0d));
        ror.CJ(jSONObject.optBoolean("lineFeed", false));
        ror.hm(jSONObject.optInt("lineCount", 0));
        ror.Tgh(jSONObject.optDouble("lineHeight", 1.2d));
        ror.iMK(jSONObject.optInt("letterSpacing", 0));
        ror.fl(jSONObject.optBoolean("isDataFixed", false));
        ror.pA(jSONObject.optInt(TtmlNode.ATTR_TTS_FONT_WEIGHT));
        ror.Tgh(jSONObject.optBoolean("lineLimit"));
        ror.hpZ(jSONObject.optInt("position"));
        ror.tP(jSONObject.optString("align"));
        ror.ROR(jSONObject.optBoolean("useLeft"));
        ror.Sf(jSONObject.optBoolean("useRight"));
        ror.hm(jSONObject.optBoolean("useTop"));
        ror.WAv(jSONObject.optBoolean("useBottom"));
        ror.MQ(jSONObject.optString("data"));
        ror.cJ(jSONObject.optJSONObject("i18n"));
        ror.zc(jSONObject.optInt("marginLeft"));
        ror.ABk(jSONObject.optInt("marginRight"));
        ror.WAv(jSONObject.optInt("marginTop"));
        ror.Gm(jSONObject.optInt("marginBottom"));
        ror.HzH(jSONObject.optInt("tagMaxCount"));
        ror.Gm(jSONObject.optBoolean("allowTextFlow"));
        ror.kYc(jSONObject.optInt("textFlowType"));
        ror.tP(jSONObject.optInt("textFlowDuration"));
        ror.MQ(jSONObject.optInt(TtmlNode.LEFT));
        ror.qMt(jSONObject.optInt(TtmlNode.RIGHT));
        ror.EBS(jSONObject.optInt(JavaLdapSupport.TOP_ATTR));
        ror.bxS(jSONObject.optInt("bottom"));
        ror.qMt(jSONObject.optString("alignItems", "flex-start"));
        ror.EBS(jSONObject.optString("direction", ""));
        ror.Qhi(jSONObject.optBoolean("loop", false));
        ror.Dww(jSONObject.optInt("zIndex"));
        ror.NFd(jSONObject.optInt("interactVisibleTime"));
        ror.CQU(jSONObject.optInt("interactHiddenTime"));
        ror.ABk(jSONObject.optBoolean("interactEnableMask"));
        ror.iMK(jSONObject.optBoolean("interactWontHide"));
        ror.Qhi(jSONObject.optString("bgGradient"));
        ror.lB(jSONObject.optInt("areaType"));
        ror.lG(jSONObject.optInt("interactSlideThreshold", 0));
        ror.zn(jSONObject.optInt("interactBottomDistance", com.bytedance.sdk.component.adexpress.fl.cJ() ? 0 : 120));
        ror.kYc(jSONObject.optBoolean("openPlayableLandingPage", false));
        ror.ac(jSONObject.optJSONObject("video"));
        ror.CJ(jSONObject.optJSONObject("image"));
        ror.Jma(jSONObject.optInt("borderShadowExtent"));
        ror.pA(jSONObject.optBoolean("bgGauseBlur"));
        ror.js(jSONObject.optInt("bgGauseBlurRadius"));
        ror.hpZ(jSONObject.optBoolean("showTimeProgress", false));
        ror.HzH(jSONObject.optBoolean("showPlayButton", false));
        ror.Qhi(jSONObject.optDouble("bgColorCg", 0.0d));
        ror.Tgh(jSONObject.optInt("bgMaterialCenterCalcColor", 0));
        ror.cJ(jSONObject.optInt("borderTopLeftRadius", 0));
        ror.Qhi(jSONObject.optInt("borderTopRightRadius", 0));
        ror.CJ(jSONObject.optInt("borderBottomLeftRadius", 0));
        ror.ac(jSONObject.optInt("borderBottomRightRadius", 0));
        ror.fl(jSONObject.optJSONObject("interactI18n"));
        ror.Dww(jSONObject.optString("imageObjectFit"));
        ror.CQU(jSONObject.optString("interactTitle"));
        ror.sDy(jSONObject.optInt("interactTextPositionTop"));
        ror.bxS(jSONObject.optString("imageLottieTosPath"));
        ror.zc(jSONObject.optBoolean("animationsLoop"));
        ror.pM(jSONObject.optInt("lottieAppNameMaxLength"));
        ror.aP(jSONObject.optInt("lottieAdDescMaxLength"));
        ror.Eh(jSONObject.optInt("lottieAdTitleMaxLength"));
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray("animations");
            if (optJSONArray != null) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < optJSONArray.length(); i++) {
                    JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
                    Qhi qhi = new Qhi();
                    qhi.ac(jSONObject2.optString("animationType"));
                    qhi.Qhi(jSONObject2.optDouble("animationDuration"));
                    qhi.cJ(jSONObject2.optDouble("animationScaleX"));
                    qhi.ac(jSONObject2.optDouble("animationScaleY"));
                    qhi.CJ(jSONObject2.optString("animationTimeFunction"));
                    qhi.CJ(jSONObject2.optDouble("animationDelay"));
                    qhi.Tgh(jSONObject2.optInt("animationIterationCount"));
                    qhi.fl(jSONObject2.optString("animationDirection"));
                    qhi.fl(jSONObject2.optDouble("animationInterval"));
                    qhi.Qhi(jSONObject2.optInt("animationBorderWidth"));
                    qhi.Qhi(jSONObject2.optLong("key"));
                    qhi.cJ(jSONObject2.optInt("animationEffectWidth"));
                    qhi.ac(jSONObject2.optInt("animationSwing", 1));
                    qhi.CJ(jSONObject2.optInt("animationTranslateX"));
                    qhi.fl(jSONObject2.optInt("animationTranslateY"));
                    qhi.cJ(jSONObject2.optString("animationRippleBackgroundColor"));
                    qhi.Qhi(jSONObject2.optString("animationScaleDirection"));
                    qhi.ROR(jSONObject2.optInt("animationFadeStart"));
                    qhi.Sf(jSONObject2.optInt("animationFadeEnd"));
                    qhi.Tgh(jSONObject2.optString("animationFillMode"));
                    qhi.hm(jSONObject2.optInt("animationBounceHeight"));
                    if (ror.tP() > 0.0d) {
                        qhi.CJ(qhi.iMK() + ror.tP());
                    }
                    arrayList.add(qhi);
                }
                ror.Qhi(arrayList);
            }
            if (jSONObject.has("triggerSlideMinDistance")) {
                ror.pM(jSONObject.optString("triggerSlideDirection", "0"));
                ror.Qhi(jSONObject.optLong("triggerSlideMinDistance", 0L));
            }
        } catch (Exception unused) {
        }
        return ror;
    }

    public boolean Qhi() {
        return this.PER;
    }

    public void Qhi(boolean z) {
        this.PER = z;
    }

    public int cJ() {
        return this.HWc;
    }

    public void Qhi(int i) {
        this.HWc = i;
    }

    public int ac() {
        return this.SNp;
    }

    public void cJ(int i) {
        this.SNp = i;
    }

    public int CJ() {
        return this.YD;
    }

    public void ac(int i) {
        this.YD = i;
    }

    public int fl() {
        return this.eG;
    }

    public void CJ(int i) {
        this.eG = i;
    }

    public JSONObject Tgh() {
        return this.VV;
    }

    public int ROR() {
        return this.bM;
    }

    public void fl(int i) {
        this.bM = i;
    }

    public double Sf() {
        return this.IC;
    }

    public void Qhi(double d2) {
        this.IC = d2;
    }

    public int hm() {
        return this.Px;
    }

    public void Tgh(int i) {
        this.Px = i;
    }

    public String WAv() {
        return this.sRC;
    }

    public void Qhi(String str) {
        this.sRC = str;
    }

    public float Gm() {
        return this.Qhi;
    }

    public void Qhi(float f2) {
        this.Qhi = f2;
    }

    public float zc() {
        return this.cJ;
    }

    public void cJ(float f2) {
        this.cJ = f2;
    }

    public void ac(float f2) {
        this.ac = f2;
    }

    public void CJ(float f2) {
        this.CJ = f2;
    }

    public boolean ABk() {
        return this.fl;
    }

    public void cJ(boolean z) {
        this.fl = z;
    }

    public float iMK() {
        return this.Tgh;
    }

    public void fl(float f2) {
        this.Tgh = f2;
    }

    public float pA() {
        return this.ROR;
    }

    public void Tgh(float f2) {
        this.ROR = f2;
    }

    public float hpZ() {
        return this.Sf;
    }

    public void ROR(float f2) {
        this.Sf = f2;
    }

    public float HzH() {
        return this.hm;
    }

    public void Sf(float f2) {
        this.hm = f2;
    }

    public float kYc() {
        return this.WAv;
    }

    public void hm(float f2) {
        this.WAv = f2;
    }

    public double tP() {
        return this.Gm;
    }

    public void cJ(double d2) {
        this.Gm = d2;
    }

    public double MQ() {
        return this.zc;
    }

    public void ac(double d2) {
        this.zc = d2;
    }

    public void cJ(String str) {
        this.ABk = str;
    }

    public void ac(String str) {
        this.iMK = str;
    }

    public String qMt() {
        return this.pA;
    }

    public void CJ(String str) {
        this.pA = str;
    }

    public String EBS() {
        return this.hpZ;
    }

    public void fl(String str) {
        this.hpZ = str;
    }

    public String bxS() {
        return this.HzH;
    }

    public void Tgh(String str) {
        this.HzH = str;
    }

    public void ROR(String str) {
        this.kYc = str;
    }

    public String Dww() {
        return this.kYc;
    }

    private void Eh(String str) {
        this.eN = str;
    }

    public String CQU() {
        return this.eN;
    }

    public String pM() {
        return this.tP;
    }

    public void Sf(String str) {
        this.tP = str;
    }

    public void hm(String str) {
        this.MQ = str;
    }

    public String Eh() {
        return this.qMt;
    }

    public void WAv(String str) {
        this.qMt = str;
    }

    public String aP() {
        return this.EBS;
    }

    public void Gm(String str) {
        this.EBS = str;
    }

    public String NFd() {
        return this.bxS;
    }

    public void zc(String str) {
        this.bxS = str;
    }

    public String sDy() {
        return this.Dww;
    }

    public void ABk(String str) {
        this.Dww = str;
    }

    public boolean lB() {
        return this.CQU;
    }

    public void ac(boolean z) {
        this.CQU = z;
    }

    public int lG() {
        return this.pM;
    }

    public void ROR(int i) {
        this.pM = i;
    }

    public int Jma() {
        return this.Eh;
    }

    public void Sf(int i) {
        this.Eh = i;
    }

    public double js() {
        return this.aP;
    }

    public void CJ(double d2) {
        this.aP = d2;
    }

    public double zn() {
        return this.NFd;
    }

    public void fl(double d2) {
        this.NFd = d2;
    }

    public String es() {
        return this.sDy;
    }

    public void iMK(String str) {
        this.sDy = str;
    }

    public String yN() {
        return this.lB;
    }

    public void pA(String str) {
        this.lB = str;
    }

    public String FQ() {
        return this.lG;
    }

    public void hpZ(String str) {
        this.lG = str;
    }

    public String PAe() {
        return this.Jma;
    }

    public void HzH(String str) {
        this.Jma = str;
    }

    public String ip() {
        return this.js;
    }

    public void kYc(String str) {
        this.js = str;
    }

    public boolean xyz() {
        return this.zn;
    }

    public void CJ(boolean z) {
        this.zn = z;
    }

    public void hm(int i) {
        this.es = i;
    }

    public int jPH() {
        return this.es;
    }

    public int MND() {
        return this.yN;
    }

    public void WAv(int i) {
        this.yN = i;
    }

    public int dIT() {
        return this.FQ;
    }

    public void Gm(int i) {
        this.FQ = i;
    }

    public int Qe() {
        return this.PAe;
    }

    public void zc(int i) {
        this.PAe = i;
    }

    public int YB() {
        return this.ip;
    }

    public void ABk(int i) {
        this.ip = i;
    }

    public double cjC() {
        return this.xyz;
    }

    public void Tgh(double d2) {
        this.xyz = d2;
    }

    public int Dq() {
        return this.jPH;
    }

    public void iMK(int i) {
        this.jPH = i;
    }

    public boolean Hf() {
        return this.MND;
    }

    public void fl(boolean z) {
        this.MND = z;
    }

    public int NBs() {
        return this.dIT;
    }

    public void pA(int i) {
        this.dIT = i;
    }

    public boolean dI() {
        return this.Qe;
    }

    public void Tgh(boolean z) {
        this.Qe = z;
    }

    public int dVA() {
        return this.YB;
    }

    public void hpZ(int i) {
        this.YB = i;
    }

    public String zjb() {
        return this.cjC;
    }

    public void tP(String str) {
        this.cjC = str;
    }

    public boolean ots() {
        return this.Dq;
    }

    public void ROR(boolean z) {
        this.Dq = z;
    }

    public boolean HLI() {
        return this.Hf;
    }

    public void Sf(boolean z) {
        this.Hf = z;
    }

    public boolean oU() {
        return this.NBs;
    }

    public void hm(boolean z) {
        this.NBs = z;
    }

    public boolean pv() {
        return this.dI;
    }

    public void WAv(boolean z) {
        this.dI = z;
    }

    public String ReL() {
        return this.dVA;
    }

    public void MQ(String str) {
        this.dVA = str;
    }

    public void cJ(JSONObject jSONObject) {
        this.zjb = jSONObject;
    }

    public JSONObject EGK() {
        return this.zjb;
    }

    public int gga() {
        return this.ots;
    }

    public void HzH(int i) {
        this.ots = i;
    }

    public boolean VnT() {
        return this.HLI;
    }

    public void Gm(boolean z) {
        this.HLI = z;
    }

    public int Ri() {
        return this.oU;
    }

    public void kYc(int i) {
        this.oU = i;
    }

    public int Ura() {
        return this.pv;
    }

    public void tP(int i) {
        this.pv = i;
    }

    public int PER() {
        return this.ReL;
    }

    public void MQ(int i) {
        this.ReL = i;
    }

    public int Gy() {
        return this.EGK;
    }

    public void qMt(int i) {
        this.EGK = i;
    }

    public int et() {
        return this.gga;
    }

    public void EBS(int i) {
        this.gga = i;
    }

    public int SL() {
        return this.VnT;
    }

    public void bxS(int i) {
        this.VnT = i;
    }

    public String Oy() {
        return this.Ri;
    }

    public void qMt(String str) {
        this.Ri = str;
    }

    public String DaO() {
        return this.Ura;
    }

    public void EBS(String str) {
        this.Ura = str;
    }

    public int rB() {
        return this.Gy;
    }

    public void Dww(int i) {
        this.Gy = i;
    }

    public int mZ() {
        return this.et;
    }

    public void CQU(int i) {
        this.et = i;
    }

    public String SO() {
        return this.LcF;
    }

    public void bxS(String str) {
        this.LcF = str;
    }

    public boolean XH() {
        return this.Ohm;
    }

    public void zc(boolean z) {
        this.Ohm = z;
    }

    public int HUk() {
        return this.Ki;
    }

    public void pM(int i) {
        this.Ki = i;
    }

    public int TKG() {
        return this.yy;
    }

    public void Eh(int i) {
        this.yy = i;
    }

    public int Wrw() {
        return this.mz;
    }

    public void aP(int i) {
        this.mz = i;
    }

    public boolean vml() {
        return this.zTC;
    }

    public void ABk(boolean z) {
        this.zTC = z;
    }

    public int IC() {
        return this.SL;
    }

    public void NFd(int i) {
        this.SL = i;
    }

    public void iMK(boolean z) {
        this.wp = z;
    }

    public boolean cJP() {
        return this.wp;
    }

    public void Dww(String str) {
        this.Ug = str;
    }

    public String gT() {
        return this.Ug;
    }

    public void sDy(int i) {
        this.ne = i;
    }

    public int bM() {
        return this.ne;
    }

    public List<Qhi> pF() {
        return this.Oy;
    }

    public int wp() {
        List<Qhi> list = this.Oy;
        if (list != null) {
            for (Qhi qhi : list) {
                if ("translate".equals(qhi.hm()) && qhi.ROR() < 0) {
                    return -qhi.ROR();
                }
            }
            return 0;
        }
        return 0;
    }

    public void Qhi(List<Qhi> list) {
        this.Oy = list;
    }

    public int VV() {
        return this.DaO;
    }

    public void lB(int i) {
        this.DaO = i;
    }

    public int Px() {
        return this.rB;
    }

    public void lG(int i) {
        this.rB = i;
    }

    public int HWc() {
        return this.mZ;
    }

    public void Jma(int i) {
        this.mZ = i;
    }

    public boolean SNp() {
        return this.XH;
    }

    public void pA(boolean z) {
        this.XH = z;
    }

    public int YD() {
        return this.SO;
    }

    public void js(int i) {
        this.SO = i;
    }

    public boolean eG() {
        return this.HUk;
    }

    public void hpZ(boolean z) {
        this.HUk = z;
    }

    public boolean Ug() {
        return this.TKG;
    }

    public void HzH(boolean z) {
        this.TKG = z;
    }

    public int ne() {
        return this.Wrw;
    }

    public void zn(int i) {
        this.Wrw = i;
    }

    public String zTC() {
        return this.pF;
    }

    public boolean LcF() {
        return this.vml;
    }

    public void kYc(boolean z) {
        this.vml = z;
    }

    public void ac(JSONObject jSONObject) {
        this.cJP = jSONObject;
    }

    public JSONObject Ohm() {
        return this.gT;
    }

    public void CJ(JSONObject jSONObject) {
        this.gT = jSONObject;
    }

    public void fl(JSONObject jSONObject) {
        this.VV = jSONObject;
    }

    public String Ki() {
        return this.Ls;
    }

    public void CQU(String str) {
        this.Ls = str;
    }

    public void yy() {
        Qhi(this, this.cJP);
    }

    public void mz() {
        Qhi(this, this.gT);
    }

    public String Ls() {
        return this.KW;
    }

    public void pM(String str) {
        this.KW = str;
    }

    public long KW() {
        return this.sqa;
    }

    public void Qhi(long j) {
        this.sqa = j;
    }

    private void Qhi(ROR ror, JSONObject jSONObject) {
        if (ror == null || jSONObject == null) {
            return;
        }
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            next.hashCode();
            char c2 = 65535;
            switch (next.hashCode()) {
                case -2067713583:
                    if (next.equals("isShowBgControl")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -1965619659:
                    if (next.equals("clickArea")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case -1912831834:
                    if (next.equals("triggerSlideDirection")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case -1885934767:
                    if (next.equals("bgImgUrl")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case -1822062213:
                    if (next.equals("lineCount")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case -1821293778:
                    if (next.equals("openPlayableLandingPage")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case -1813937113:
                    if (next.equals("lineLimit")) {
                        c2 = 6;
                        break;
                    }
                    break;
                case -1578250488:
                    if (next.equals("interactBgColor")) {
                        c2 = 7;
                        break;
                    }
                    break;
                case -1501175880:
                    if (next.equals("paddingLeft")) {
                        c2 = '\b';
                        break;
                    }
                    break;
                case -1422965251:
                    if (next.equals("adType")) {
                        c2 = '\t';
                        break;
                    }
                    break;
                case -1383228885:
                    if (next.equals("bottom")) {
                        c2 = '\n';
                        break;
                    }
                    break;
                case -1224696685:
                    if (next.equals(TtmlNode.ATTR_TTS_FONT_FAMILY)) {
                        c2 = 11;
                        break;
                    }
                    break;
                case -1221029593:
                    if (next.equals(IabUtils.KEY_HEIGHT)) {
                        c2 = '\f';
                        break;
                    }
                    break;
                case -1065511464:
                    if (next.equals(TtmlNode.ATTR_TTS_TEXT_ALIGN)) {
                        c2 = '\r';
                        break;
                    }
                    break;
                case -1063257157:
                    if (next.equals("alignItems")) {
                        c2 = 14;
                        break;
                    }
                    break;
                case -1046708884:
                    if (next.equals("interactValidate")) {
                        c2 = 15;
                        break;
                    }
                    break;
                case -1044792121:
                    if (next.equals("marginTop")) {
                        c2 = 16;
                        break;
                    }
                    break;
                case -1019884910:
                    if (next.equals("useBottom")) {
                        c2 = 17;
                        break;
                    }
                    break;
                case -1005195314:
                    if (next.equals("triggerSlideMinDistance")) {
                        c2 = 18;
                        break;
                    }
                    break;
                case -962590849:
                    if (next.equals("direction")) {
                        c2 = 19;
                        break;
                    }
                    break;
                case -912366651:
                    if (next.equals("tagMaxCount")) {
                        c2 = 20;
                        break;
                    }
                    break;
                case -848877971:
                    if (next.equals("interactHiddenTime")) {
                        c2 = 21;
                        break;
                    }
                    break;
                case -836058546:
                    if (next.equals("useTop")) {
                        c2 = 22;
                        break;
                    }
                    break;
                case -734428249:
                    if (next.equals(TtmlNode.ATTR_TTS_FONT_WEIGHT)) {
                        c2 = 23;
                        break;
                    }
                    break;
                case -731417480:
                    if (next.equals("zIndex")) {
                        c2 = 24;
                        break;
                    }
                    break;
                case -709393864:
                    if (next.equals("timingStart")) {
                        c2 = 25;
                        break;
                    }
                    break;
                case -515807685:
                    if (next.equals("lineHeight")) {
                        c2 = 26;
                        break;
                    }
                    break;
                case -321658193:
                    if (next.equals("textFlowDuration")) {
                        c2 = 27;
                        break;
                    }
                    break;
                case -295409451:
                    if (next.equals("useRight")) {
                        c2 = 28;
                        break;
                    }
                    break;
                case -289173127:
                    if (next.equals("marginBottom")) {
                        c2 = 29;
                        break;
                    }
                    break;
                case -204859874:
                    if (next.equals("bgColor")) {
                        c2 = 30;
                        break;
                    }
                    break;
                case -148259282:
                    if (next.equals("useLeft")) {
                        c2 = 31;
                        break;
                    }
                    break;
                case -51738487:
                    if (next.equals("widthMode")) {
                        c2 = ' ';
                        break;
                    }
                    break;
                case 115029:
                    if (next.equals(JavaLdapSupport.TOP_ATTR)) {
                        c2 = '!';
                        break;
                    }
                    break;
                case 3076010:
                    if (next.equals("data")) {
                        c2 = Typography.quote;
                        break;
                    }
                    break;
                case 3317767:
                    if (next.equals(TtmlNode.LEFT)) {
                        c2 = '#';
                        break;
                    }
                    break;
                case 3327652:
                    if (next.equals("loop")) {
                        c2 = '$';
                        break;
                    }
                    break;
                case 90130308:
                    if (next.equals("paddingTop")) {
                        c2 = '%';
                        break;
                    }
                    break;
                case 92903173:
                    if (next.equals("align")) {
                        c2 = Typography.amp;
                        break;
                    }
                    break;
                case 94842723:
                    if (next.equals("color")) {
                        c2 = '\'';
                        break;
                    }
                    break;
                case 108511772:
                    if (next.equals(TtmlNode.RIGHT)) {
                        c2 = '(';
                        break;
                    }
                    break;
                case 113126854:
                    if (next.equals(IabUtils.KEY_WIDTH)) {
                        c2 = ')';
                        break;
                    }
                    break;
                case 164611121:
                    if (next.equals("timingEnd")) {
                        c2 = '*';
                        break;
                    }
                    break;
                case 202355100:
                    if (next.equals("paddingBottom")) {
                        c2 = '+';
                        break;
                    }
                    break;
                case 247204452:
                    if (next.equals("allowTextFlow")) {
                        c2 = ',';
                        break;
                    }
                    break;
                case 302841174:
                    if (next.equals("interactWontHide")) {
                        c2 = '-';
                        break;
                    }
                    break;
                case 365601008:
                    if (next.equals(TtmlNode.ATTR_TTS_FONT_SIZE)) {
                        c2 = '.';
                        break;
                    }
                    break;
                case 428975654:
                    if (next.equals("justifyVertical")) {
                        c2 = '/';
                        break;
                    }
                    break;
                case 439444041:
                    if (next.equals("interactVisibleTime")) {
                        c2 = '0';
                        break;
                    }
                    break;
                case 713848971:
                    if (next.equals("paddingRight")) {
                        c2 = '1';
                        break;
                    }
                    break;
                case 722830999:
                    if (next.equals("borderColor")) {
                        c2 = '2';
                        break;
                    }
                    break;
                case 737768677:
                    if (next.equals("borderStyle")) {
                        c2 = '3';
                        break;
                    }
                    break;
                case 747804969:
                    if (next.equals("position")) {
                        c2 = '4';
                        break;
                    }
                    break;
                case 791643104:
                    if (next.equals("isDataFixed")) {
                        c2 = '5';
                        break;
                    }
                    break;
                case 975087886:
                    if (next.equals("marginRight")) {
                        c2 = '6';
                        break;
                    }
                    break;
                case 1110826708:
                    if (next.equals("justifyHorizontal")) {
                        c2 = '7';
                        break;
                    }
                    break;
                case 1122368895:
                    if (next.equals("interactPosition")) {
                        c2 = '8';
                        break;
                    }
                    break;
                case 1188229042:
                    if (next.equals("lineFeed")) {
                        c2 = '9';
                        break;
                    }
                    break;
                case 1332036739:
                    if (next.equals("interactText")) {
                        c2 = ':';
                        break;
                    }
                    break;
                case 1332055696:
                    if (next.equals("interactType")) {
                        c2 = ';';
                        break;
                    }
                    break;
                case 1349188574:
                    if (next.equals("borderRadius")) {
                        c2 = Typography.less;
                        break;
                    }
                    break;
                case 1360828714:
                    if (next.equals("clickTigger")) {
                        c2 = '=';
                        break;
                    }
                    break;
                case 1490178922:
                    if (next.equals("heightMode")) {
                        c2 = Typography.greater;
                        break;
                    }
                    break;
                case 1761274325:
                    if (next.equals("textFlowType")) {
                        c2 = '?';
                        break;
                    }
                    break;
                case 1824903757:
                    if (next.equals("borderSize")) {
                        c2 = '@';
                        break;
                    }
                    break;
                case 1970934485:
                    if (next.equals("marginLeft")) {
                        c2 = 'A';
                        break;
                    }
                    break;
                case 2111078717:
                    if (next.equals("letterSpacing")) {
                        c2 = 'B';
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    ror.ac(jSONObject.optBoolean(next, false));
                    break;
                case 1:
                    ror.pA(jSONObject.optString(next));
                    break;
                case 2:
                    ror.pM(jSONObject.optString(next));
                    break;
                case 3:
                    ror.ROR(jSONObject.optString(next));
                    break;
                case 4:
                    ror.hm(jSONObject.optInt(next));
                    break;
                case 5:
                    ror.kYc(jSONObject.optBoolean(next));
                    break;
                case 6:
                    ror.Tgh(jSONObject.optBoolean(next));
                    break;
                case 7:
                    ror.ABk(jSONObject.optString(next));
                    break;
                case '\b':
                    ror.Tgh((float) jSONObject.optDouble(next));
                    break;
                case '\t':
                    ror.cJ(jSONObject.optString(next));
                    break;
                case '\n':
                    ror.bxS(jSONObject.optInt(next));
                    break;
                case 11:
                    ror.ac(jSONObject.optString(next));
                    break;
                case '\f':
                    ror.ac((float) jSONObject.optDouble(next));
                    break;
                case '\r':
                    ror.CJ(jSONObject.optString(next));
                    break;
                case 14:
                    ror.qMt(jSONObject.optString(next));
                    break;
                case 15:
                    ror.cJ(jSONObject.optBoolean(next));
                    break;
                case 16:
                    ror.WAv(jSONObject.optInt(next));
                    break;
                case 17:
                    ror.WAv(jSONObject.optBoolean(next));
                    break;
                case 18:
                    ror.Qhi(jSONObject.optLong(next));
                    break;
                case 19:
                    ror.EBS(jSONObject.optString(next));
                    break;
                case 20:
                    ror.HzH(jSONObject.optInt(next));
                    break;
                case 21:
                    ror.CQU(jSONObject.optInt(next));
                    break;
                case 22:
                    ror.hm(jSONObject.optBoolean(next));
                    break;
                case 23:
                    ror.pA(jSONObject.optInt(next));
                    break;
                case 24:
                    ror.Dww(jSONObject.optInt(next));
                    break;
                case 25:
                    ror.cJ(jSONObject.optDouble(next));
                    break;
                case 26:
                    ror.Tgh(jSONObject.optDouble(next));
                    break;
                case 27:
                    ror.tP(jSONObject.optInt(next));
                    break;
                case 28:
                    ror.Sf(jSONObject.optBoolean(next));
                    break;
                case 29:
                    ror.Gm(jSONObject.optInt(next));
                    break;
                case 30:
                    ror.Tgh(jSONObject.optString(next));
                    break;
                case 31:
                    ror.ROR(jSONObject.optBoolean(next));
                    break;
                case ' ':
                    ror.Gm(jSONObject.optString(next));
                    break;
                case '!':
                    ror.EBS(jSONObject.optInt(next));
                    break;
                case '\"':
                    ror.MQ(jSONObject.optString(next));
                    break;
                case '#':
                    ror.MQ(jSONObject.optInt(next));
                    break;
                case '$':
                    ror.Qhi(jSONObject.optBoolean(next));
                    break;
                case '%':
                    ror.Sf((float) jSONObject.optDouble(next));
                    break;
                case '&':
                    ror.tP(jSONObject.optString(next));
                    break;
                case '\'':
                    ror.fl(jSONObject.optString(next));
                    break;
                case '(':
                    ror.qMt(jSONObject.optInt(next));
                    break;
                case ')':
                    ror.CJ((float) jSONObject.optDouble(next));
                    break;
                case '*':
                    ror.ac(jSONObject.optDouble(next));
                    break;
                case '+':
                    ror.fl((float) jSONObject.optDouble(next));
                    break;
                case ',':
                    ror.Gm(jSONObject.optBoolean(next));
                    break;
                case '-':
                    ror.iMK(jSONObject.optBoolean(next));
                    break;
                case '.':
                    ror.hm((float) jSONObject.optDouble(next));
                    break;
                case '/':
                    ror.kYc(jSONObject.optString(next));
                    break;
                case '0':
                    ror.NFd(jSONObject.optInt(next));
                    break;
                case '1':
                    ror.ROR((float) jSONObject.optDouble(next));
                    break;
                case '2':
                    ror.Sf(jSONObject.optString(next));
                    break;
                case '3':
                    ror.hm(jSONObject.optString(next));
                    break;
                case '4':
                    ror.hpZ(jSONObject.optInt(next));
                    break;
                case '5':
                    ror.fl(jSONObject.optBoolean(next));
                    break;
                case '6':
                    ror.ABk(jSONObject.optInt(next));
                    break;
                case '7':
                    ror.HzH(jSONObject.optString(next));
                    break;
                case '8':
                    JSONObject optJSONObject = jSONObject.optJSONObject(next);
                    if (optJSONObject == null) {
                        break;
                    } else {
                        ror.ROR(optJSONObject.optInt("translateY", 0));
                        ror.Sf(optJSONObject.optInt("translateX", 0));
                        ror.CJ(optJSONObject.optDouble("scaleX", 0.0d));
                        ror.fl(optJSONObject.optDouble("scaleY", 0.0d));
                        break;
                    }
                case '9':
                    ror.CJ(jSONObject.optBoolean(next));
                    break;
                case ':':
                    ror.zc(jSONObject.optString(next));
                    break;
                case ';':
                    ror.iMK(jSONObject.optString(next));
                    break;
                case '<':
                    ror.Qhi((float) jSONObject.optDouble(next));
                    break;
                case '=':
                    ror.hpZ(jSONObject.optString(next));
                    break;
                case '>':
                    ror.WAv(jSONObject.optString(next));
                    break;
                case '?':
                    ror.kYc(jSONObject.optInt(next));
                    break;
                case '@':
                    ror.cJ((float) jSONObject.optDouble(next));
                    break;
                case 'A':
                    ror.zc(jSONObject.optInt(next));
                    break;
                case 'B':
                    ror.iMK(jSONObject.optInt(next));
                    break;
            }
        }
    }
}
