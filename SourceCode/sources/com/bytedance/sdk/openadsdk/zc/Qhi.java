package com.bytedance.sdk.openadsdk.zc;

import android.os.SystemClock;
import android.text.TextUtils;
import com.appodeal.ads.modules.common.internal.Constants;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.CJ.tP;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: FeatureCollectionModel.java */
/* loaded from: classes2.dex */
public class Qhi implements Comparable<Qhi> {
    private int ROR;
    private int ac;
    private final String cJ;
    private int fl;
    private long iMK;
    private final ArrayList<Long> Qhi = new ArrayList<>();
    private final ArrayList<Long> CJ = new ArrayList<>();
    private final ArrayList<Long> Tgh = new ArrayList<>();
    private final ArrayList<Long> Sf = new ArrayList<>();
    private final HashMap<String, cJ> hm = new HashMap<>();
    private int WAv = 0;
    private int Gm = 0;
    private final HashMap<String, cJ> zc = new HashMap<>();
    private int ABk = 0;

    public Qhi(String str) {
        this.cJ = str;
    }

    public void Qhi(String str, String str2) {
        cJ cJVar;
        cJ cJVar2;
        cJ cJVar3;
        cJ cJVar4;
        cJ cJVar5;
        cJ cJVar6;
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1908685858:
                if (str.equals("landingContinue")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1769688545:
                if (str.equals("landingPause")) {
                    c2 = 1;
                    break;
                }
                break;
            case -1766371189:
                if (str.equals("landingStart")) {
                    c2 = 2;
                    break;
                }
                break;
            case -1643912491:
                if (str.equals("feed_over")) {
                    c2 = 3;
                    break;
                }
                break;
            case 3529469:
                if (str.equals(Constants.SHOW)) {
                    c2 = 4;
                    break;
                }
                break;
            case 94750088:
                if (str.equals(Constants.CLICK)) {
                    c2 = 5;
                    break;
                }
                break;
            case 533457448:
                if (str.equals("feed_continue")) {
                    c2 = 6;
                    break;
                }
                break;
            case 566194974:
                if (str.equals("feed_break")) {
                    c2 = 7;
                    break;
                }
                break;
            case 578633749:
                if (str.equals("feed_pause")) {
                    c2 = '\b';
                    break;
                }
                break;
            case 695109002:
                if (str.equals("landingFinish")) {
                    c2 = '\t';
                    break;
                }
                break;
            case 702698279:
                if (str.equals("videoPercent30")) {
                    c2 = '\n';
                    break;
                }
                break;
            case 1671642405:
                if (str.equals("dislike")) {
                    c2 = 11;
                    break;
                }
                break;
            case 1925938071:
                if (str.equals("play_start")) {
                    c2 = '\f';
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                if (TextUtils.isEmpty(str2) || (cJVar = this.zc.get(str2)) == null) {
                    return;
                }
                cJVar.CJ(SystemClock.elapsedRealtime());
                return;
            case 1:
                if (TextUtils.isEmpty(str2) || (cJVar2 = this.zc.get(str2)) == null) {
                    return;
                }
                cJVar2.ac(SystemClock.elapsedRealtime());
                return;
            case 2:
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                cJ cJVar7 = this.zc.get(str2);
                if (cJVar7 == null) {
                    cJVar7 = new cJ();
                    this.zc.put(str2, cJVar7);
                }
                cJVar7.Qhi(SystemClock.elapsedRealtime());
                return;
            case 3:
            case 7:
                if (TextUtils.isEmpty(str2) || (cJVar3 = this.hm.get(str2)) == null) {
                    return;
                }
                cJVar3.cJ(SystemClock.elapsedRealtime());
                if (tP.Qhi().pA()) {
                    this.WAv = (int) (this.WAv + cJVar3.Qhi(this.iMK, SystemClock.elapsedRealtime()));
                    return;
                }
                return;
            case 4:
                this.Qhi.add(Long.valueOf(SystemClock.elapsedRealtime()));
                if (tP.Qhi().Tgh()) {
                    this.ac++;
                    return;
                }
                return;
            case 5:
                this.CJ.add(Long.valueOf(SystemClock.elapsedRealtime()));
                if (tP.Qhi().ROR()) {
                    this.fl++;
                    return;
                }
                return;
            case 6:
                if (TextUtils.isEmpty(str2) || (cJVar4 = this.hm.get(str2)) == null) {
                    return;
                }
                cJVar4.CJ(SystemClock.elapsedRealtime());
                return;
            case '\b':
                if (TextUtils.isEmpty(str2) || (cJVar5 = this.hm.get(str2)) == null) {
                    return;
                }
                cJVar5.ac(SystemClock.elapsedRealtime());
                return;
            case '\t':
                if (TextUtils.isEmpty(str2) || (cJVar6 = this.zc.get(str2)) == null) {
                    return;
                }
                cJVar6.cJ(SystemClock.elapsedRealtime());
                if (tP.Qhi().iMK()) {
                    this.ABk = (int) (this.ABk + cJVar6.Qhi(this.iMK, SystemClock.elapsedRealtime()));
                    return;
                }
                return;
            case '\n':
                if (tP.Qhi().HzH()) {
                    this.Gm++;
                    return;
                }
                return;
            case 11:
                this.Sf.add(Long.valueOf(SystemClock.elapsedRealtime()));
                return;
            case '\f':
                this.Tgh.add(Long.valueOf(SystemClock.elapsedRealtime()));
                if (tP.Qhi().Sf()) {
                    this.ROR++;
                }
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                cJ cJVar8 = this.hm.get(str2);
                if (cJVar8 == null) {
                    cJVar8 = new cJ();
                    this.hm.put(str2, cJVar8);
                }
                cJVar8.Qhi(SystemClock.elapsedRealtime());
                return;
            default:
                return;
        }
    }

    public JSONObject Qhi(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            Qhi(jSONObject2, jSONObject);
            cJ(jSONObject2, jSONObject);
        } catch (Throwable th) {
            ABk.cJ(th.getMessage());
        }
        return jSONObject2;
    }

    private void Qhi(String str, JSONObject jSONObject, ArrayList<Long> arrayList, int[] iArr, long j, JSONObject jSONObject2) throws JSONException {
        int size = arrayList.size() - 1;
        int i = 0;
        for (int i2 : iArr) {
            long j2 = j - (i2 * 60000);
            while (size >= 0 && arrayList.get(size).longValue() >= j2) {
                i++;
                size--;
            }
            if (i != 0) {
                jSONObject.put(str + i2, i);
                int optInt = jSONObject2.optInt(str + i2) + i;
                if (optInt != 0) {
                    jSONObject2.put(str + i2, optInt);
                }
            }
        }
        while (size >= 0) {
            arrayList.remove(0);
            size--;
        }
    }

    private void Qhi(JSONObject jSONObject, JSONObject jSONObject2) throws JSONException {
        int i;
        int i2;
        int i3;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Qhi("show_c_", jSONObject, this.Qhi, tP.Qhi().hm(), elapsedRealtime, jSONObject2);
        Qhi("click_c_", jSONObject, this.CJ, tP.Qhi().WAv(), elapsedRealtime, jSONObject2);
        Qhi("v_play_c_", jSONObject, this.Tgh, tP.Qhi().Gm(), elapsedRealtime, jSONObject2);
        Qhi("dislike_c_", jSONObject, this.Sf, tP.Qhi().hpZ(), elapsedRealtime, jSONObject2);
        if (tP.Qhi().Tgh() && (i3 = this.ac) != 0) {
            jSONObject.put("show_c_s", i3);
            int optInt = jSONObject2.optInt("show_c_s") + this.ac;
            if (optInt != 0) {
                jSONObject2.put("show_c_s", optInt);
            }
        }
        if (tP.Qhi().ROR() && (i2 = this.fl) != 0) {
            jSONObject.put("click_c_s", i2);
            int optInt2 = jSONObject2.optInt("click_c_s") + this.fl;
            if (optInt2 != 0) {
                jSONObject2.put("click_c_s", optInt2);
            }
        }
        if (!tP.Qhi().Sf() || (i = this.ROR) == 0) {
            return;
        }
        jSONObject.put("v_play_c_s", i);
        int optInt3 = jSONObject2.optInt("v_play_c_s") + this.ROR;
        if (optInt3 != 0) {
            jSONObject2.put("v_play_c_s", optInt3);
        }
    }

    private void cJ(JSONObject jSONObject, JSONObject jSONObject2) throws JSONException {
        int i;
        int i2;
        int i3;
        long j;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        int[] zc = tP.Qhi().zc();
        long j2 = 60000;
        if (zc != null) {
            int i4 = 0;
            while (i4 < zc.length) {
                int i5 = zc[i4];
                long j3 = elapsedRealtime - (i5 * j2);
                long j4 = 0;
                for (String str : this.zc.keySet()) {
                    int[] iArr = zc;
                    cJ cJVar = this.zc.get(str);
                    if (cJVar != null) {
                        j4 += cJVar.Qhi(j3, elapsedRealtime);
                    }
                    zc = iArr;
                }
                int[] iArr2 = zc;
                if (j4 != 0) {
                    jSONObject.put("lp_stay_t_".concat(String.valueOf(i5)), j4);
                    long optInt = jSONObject2.optInt("lp_stay_t_".concat(String.valueOf(i5))) + j4;
                    if (optInt != 0) {
                        jSONObject2.put("lp_stay_t_".concat(String.valueOf(i5)), optInt);
                    }
                }
                i4++;
                zc = iArr2;
                j2 = 60000;
            }
        }
        int[] ABk = tP.Qhi().ABk();
        if (ABk != null) {
            int i6 = 0;
            while (i6 < ABk.length) {
                int i7 = ABk[i6];
                long j5 = elapsedRealtime - (i7 * 60000);
                Iterator<String> it = this.hm.keySet().iterator();
                long j6 = 0;
                int i8 = 0;
                while (it.hasNext()) {
                    int[] iArr3 = ABk;
                    Iterator<String> it2 = it;
                    cJ cJVar2 = this.hm.get(it.next());
                    if (cJVar2 != null) {
                        long Qhi = cJVar2.Qhi(j5, elapsedRealtime);
                        j6 += Qhi;
                        if (Qhi > 20000) {
                            i8++;
                        }
                    }
                    it = it2;
                    ABk = iArr3;
                }
                int[] iArr4 = ABk;
                if (j6 != 0) {
                    jSONObject.put("v_stay_t_".concat(String.valueOf(i7)), j6);
                    j = elapsedRealtime;
                    long optInt2 = jSONObject2.optInt("v_stay_t_".concat(String.valueOf(i7))) + j6;
                    if (optInt2 != 0) {
                        jSONObject2.put("v_stay_t_".concat(String.valueOf(i7)), optInt2);
                    }
                } else {
                    j = elapsedRealtime;
                }
                if (i8 != 0) {
                    jSONObject.put("v_20s_play_c_".concat(String.valueOf(i7)), i8);
                    int optInt3 = jSONObject2.optInt("v_20s_play_c_".concat(String.valueOf(i7))) + i8;
                    if (optInt3 != 0) {
                        jSONObject2.put("v_20s_play_c_".concat(String.valueOf(i7)), optInt3);
                    }
                }
                Iterator it3 = hashSet.iterator();
                while (it3.hasNext()) {
                    this.zc.remove((String) it3.next());
                }
                Iterator it4 = hashSet2.iterator();
                while (it4.hasNext()) {
                    this.hm.remove((String) it4.next());
                }
                i6++;
                ABk = iArr4;
                elapsedRealtime = j;
            }
        }
        if (tP.Qhi().pA() && (i3 = this.WAv) != 0) {
            jSONObject.put("v_stay_t_s", i3);
            int optInt4 = jSONObject2.optInt("v_stay_t_s") + this.WAv;
            if (optInt4 != 0) {
                jSONObject2.put("v_stay_t_s", optInt4);
            }
        }
        if (tP.Qhi().iMK() && (i2 = this.ABk) != 0) {
            jSONObject.put("lp_stay_t_s", i2);
            int optInt5 = jSONObject2.optInt("lp_stay_t_s") + this.ABk;
            if (optInt5 != 0) {
                jSONObject2.put("lp_stay_t_s", optInt5);
            }
        }
        if (!tP.Qhi().HzH() || (i = this.Gm) == 0) {
            return;
        }
        jSONObject.put("v_30p_play_c_s", i);
        int optInt6 = jSONObject2.optInt("v_30p_play_c_s") + this.Gm;
        if (optInt6 != 0) {
            jSONObject2.put("v_30p_play_c_s", optInt6);
        }
    }

    public void Qhi() {
        this.iMK = SystemClock.elapsedRealtime();
        this.Gm = 0;
        this.fl = 0;
        this.ac = 0;
        this.ABk = 0;
        this.WAv = 0;
        this.ROR = 0;
    }

    public String cJ() {
        return this.cJ;
    }

    @Override // java.lang.Comparable
    /* renamed from: Qhi */
    public int compareTo(Qhi qhi) {
        return qhi.ac - this.ac;
    }
}
