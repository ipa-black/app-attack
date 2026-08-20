package com.bytedance.sdk.component.adexpress.dynamic.CJ;

import android.text.TextUtils;
import com.bytedance.sdk.component.adexpress.cJ.iMK;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ComputeRuler.java */
/* loaded from: classes2.dex */
public class ac {
    private double ROR;
    private String Sf;
    private int Tgh;
    private double fl;
    private iMK hm;
    public Map<String, C0190ac> Qhi = new HashMap();
    public Map<String, C0190ac> cJ = new HashMap();
    public Map<String, C0190ac> ac = new HashMap();
    private double CJ = Math.random();

    public ac(double d2, int i, double d3, String str, iMK imk) {
        this.fl = d2;
        this.Tgh = i;
        this.ROR = d3;
        this.Sf = str;
        this.hm = imk;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.bytedance.sdk.component.adexpress.dynamic.CJ.ac.C0190ac Qhi(com.bytedance.sdk.component.adexpress.dynamic.ac.hm r13, float r14, float r15) {
        /*
            r12 = this;
            com.bytedance.sdk.component.adexpress.dynamic.ac.Tgh r0 = r13.WAv()
            java.lang.String r0 = r0.ac()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r1 = 0
            if (r0 == 0) goto L23
            com.bytedance.sdk.component.adexpress.dynamic.ac.Tgh r0 = r13.WAv()
            com.bytedance.sdk.component.adexpress.dynamic.ac.ROR r0 = r0.fl()
            java.lang.String r0 = r0.ReL()
            if (r0 != 0) goto L23
            com.bytedance.sdk.component.adexpress.dynamic.CJ.ac$ac r13 = new com.bytedance.sdk.component.adexpress.dynamic.CJ.ac$ac
            r13.<init>(r1, r1)
            return r13
        L23:
            com.bytedance.sdk.component.adexpress.dynamic.ac.Tgh r0 = r13.WAv()
            java.lang.String r0 = r0.cJ()
            java.lang.String r2 = "creative-playable-bait"
            boolean r0 = android.text.TextUtils.equals(r0, r2)
            if (r0 == 0) goto L39
            com.bytedance.sdk.component.adexpress.dynamic.CJ.ac$ac r13 = new com.bytedance.sdk.component.adexpress.dynamic.CJ.ac$ac
            r13.<init>(r1, r1)
            return r13
        L39:
            float r0 = r13.Sf()
            float r1 = r13.hm()
            com.bytedance.sdk.component.adexpress.dynamic.ac.Tgh r2 = r13.WAv()
            com.bytedance.sdk.component.adexpress.dynamic.ac.ROR r2 = r2.fl()
            java.lang.String r3 = r2.aP()
            java.lang.String r2 = r2.Eh()
            int r4 = r13.ABk()
            float r4 = (float) r4
            int r5 = r13.iMK()
            float r5 = (float) r5
            float r6 = r13.pA()
            float r7 = r13.hpZ()
            java.lang.String r8 = "fixed"
            boolean r9 = android.text.TextUtils.equals(r3, r8)
            java.lang.String r10 = "flex"
            java.lang.String r11 = "auto"
            if (r9 == 0) goto L86
            float r14 = java.lang.Math.min(r0, r14)
            boolean r0 = android.text.TextUtils.equals(r2, r11)
            if (r0 == 0) goto Lb7
            float r0 = r14 - r6
            float r1 = r15 - r7
            com.bytedance.sdk.component.adexpress.dynamic.CJ.ac$ac r13 = r12.cJ(r13, r0, r1)
            float r13 = r13.cJ
        L83:
            float r1 = r13 + r7
            goto Lb7
        L86:
            boolean r9 = android.text.TextUtils.equals(r3, r11)
            if (r9 == 0) goto L9f
            float r14 = r14 - r6
            float r0 = r15 - r7
            com.bytedance.sdk.component.adexpress.dynamic.CJ.ac$ac r13 = r12.cJ(r13, r14, r0)
            float r14 = r13.Qhi
            float r14 = r14 + r6
            boolean r0 = android.text.TextUtils.equals(r2, r11)
            if (r0 == 0) goto Lb7
            float r13 = r13.cJ
            goto L83
        L9f:
            boolean r3 = android.text.TextUtils.equals(r3, r10)
            if (r3 == 0) goto Lb6
            boolean r0 = android.text.TextUtils.equals(r2, r11)
            if (r0 == 0) goto Lb7
            float r0 = r14 - r6
            float r1 = r15 - r7
            com.bytedance.sdk.component.adexpress.dynamic.CJ.ac$ac r13 = r12.cJ(r13, r0, r1)
            float r13 = r13.cJ
            goto L83
        Lb6:
            r14 = r0
        Lb7:
            java.lang.String r13 = "scale"
            boolean r13 = android.text.TextUtils.equals(r2, r13)
            if (r13 == 0) goto Ld9
            float r13 = r14 - r4
            float r13 = r13 / r1
            int r13 = java.lang.Math.round(r13)
            float r13 = (float) r13
            float r13 = r13 + r5
            int r0 = (r13 > r15 ? 1 : (r13 == r15 ? 0 : -1))
            if (r0 <= 0) goto Ld7
            float r13 = r15 - r5
            float r13 = r13 * r1
            int r13 = java.lang.Math.round(r13)
            float r13 = (float) r13
            float r14 = r13 + r4
            goto Led
        Ld7:
            r15 = r13
            goto Led
        Ld9:
            boolean r13 = android.text.TextUtils.equals(r2, r8)
            if (r13 == 0) goto Le5
            float r1 = r1 + r5
            float r15 = java.lang.Math.min(r1, r15)
            goto Led
        Le5:
            boolean r13 = android.text.TextUtils.equals(r2, r10)
            if (r13 == 0) goto Lec
            goto Led
        Lec:
            r15 = r1
        Led:
            com.bytedance.sdk.component.adexpress.dynamic.CJ.ac$ac r13 = new com.bytedance.sdk.component.adexpress.dynamic.CJ.ac$ac
            r13.<init>()
            r13.Qhi = r14
            r13.cJ = r15
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.adexpress.dynamic.CJ.ac.Qhi(com.bytedance.sdk.component.adexpress.dynamic.ac.hm, float, float):com.bytedance.sdk.component.adexpress.dynamic.CJ.ac$ac");
    }

    public C0190ac cJ(com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar, float f2, float f3) {
        C0190ac c0190ac = new C0190ac();
        if (hmVar.WAv().fl() == null) {
            return c0190ac;
        }
        C0190ac fl = fl(hmVar, f2, f3);
        float f4 = fl.Qhi;
        float f5 = fl.cJ;
        c0190ac.Qhi = Math.min(f4, f2);
        c0190ac.cJ = Math.min(f5, f3);
        return c0190ac;
    }

    private C0190ac fl(com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar, float f2, float f3) {
        String str = hmVar.ac() + "_" + f2 + "_" + f3;
        if (this.ac.containsKey(str)) {
            return this.ac.get(str);
        }
        C0190ac Tgh = Tgh(hmVar, f2, f3);
        this.ac.put(str, Tgh);
        return Tgh;
    }

    private C0190ac Tgh(com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar, float f2, float f3) {
        new C0190ac();
        com.bytedance.sdk.component.adexpress.dynamic.ac.ROR fl = hmVar.WAv().fl();
        hmVar.WAv().ac();
        fl.Hf();
        float kYc = fl.kYc();
        int Dq = fl.Dq();
        double cjC = fl.cjC();
        int NBs = fl.NBs();
        boolean xyz = fl.xyz();
        boolean dI = fl.dI();
        int jPH = fl.jPH();
        cJ cJVar = new cJ();
        cJVar.Qhi = kYc;
        cJVar.cJ = Dq;
        cJVar.ac = NBs;
        cJVar.CJ = cjC;
        cJVar.fl = f2;
        return Qhi(hmVar.WAv().ac(), cJVar, xyz, dI, jPH, hmVar);
    }

    private C0190ac Qhi(String str, cJ cJVar, boolean z, boolean z2, int i, com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar) {
        return ABk.Qhi(str, hmVar.WAv().cJ(), cJ.Qhi(cJVar).toString(), z, z2, i, hmVar, this.fl, this.Tgh, this.ROR, this.Sf, this.hm);
    }

    public C0190ac ac(com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar, float f2, float f3) {
        if (hmVar == null) {
            return null;
        }
        C0190ac Qhi2 = Qhi(hmVar);
        if (Qhi2 == null || (Qhi2.Qhi == 0.0f && Qhi2.cJ == 0.0f)) {
            C0190ac CJ = CJ(hmVar, f2, f3);
            Qhi(hmVar, CJ);
            return CJ;
        }
        return Qhi2;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0120  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.bytedance.sdk.component.adexpress.dynamic.CJ.ac.C0190ac CJ(com.bytedance.sdk.component.adexpress.dynamic.ac.hm r21, float r22, float r23) {
        /*
            Method dump skipped, instructions count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.adexpress.dynamic.CJ.ac.CJ(com.bytedance.sdk.component.adexpress.dynamic.ac.hm, float, float):com.bytedance.sdk.component.adexpress.dynamic.CJ.ac$ac");
    }

    private void Qhi(List<List<com.bytedance.sdk.component.adexpress.dynamic.ac.hm>> list, float f2, float f3) {
        if (list == null || list.size() <= 0) {
            return;
        }
        boolean z = false;
        for (List<com.bytedance.sdk.component.adexpress.dynamic.ac.hm> list2 : list) {
            if (Qhi(list2, false)) {
                z = true;
            }
        }
        ArrayList arrayList = new ArrayList();
        for (List<com.bytedance.sdk.component.adexpress.dynamic.ac.hm> list3 : list) {
            Qhi qhi = new Qhi();
            boolean Qhi2 = Qhi(list3, !z);
            qhi.Qhi = Qhi2 ? 1.0f : cJ(list3, f2, f3).cJ;
            qhi.cJ = !Qhi2;
            arrayList.add(qhi);
        }
        List<Qhi> Qhi3 = zc.Qhi(f3, arrayList);
        for (int i = 0; i < list.size(); i++) {
            if (((Qhi) arrayList.get(i)).Qhi != Qhi3.get(i).Qhi) {
                List<com.bytedance.sdk.component.adexpress.dynamic.ac.hm> list4 = list.get(i);
                ac(list4);
                cJ(list4, f2, Qhi3.get(i).Qhi);
            }
        }
    }

    private boolean cJ(List<com.bytedance.sdk.component.adexpress.dynamic.ac.hm> list) {
        List<List<com.bytedance.sdk.component.adexpress.dynamic.ac.hm>> HzH;
        for (com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar : list) {
            if (TextUtils.equals(hmVar.WAv().fl().aP(), "flex")) {
                return true;
            }
        }
        while (true) {
            boolean z = false;
            for (com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar2 : list) {
                if (TextUtils.equals(hmVar2.WAv().fl().aP(), "auto") && (HzH = hmVar2.HzH()) != null) {
                    int i = 0;
                    for (List<com.bytedance.sdk.component.adexpress.dynamic.ac.hm> list2 : HzH) {
                        i++;
                        if (!cJ(list2)) {
                            break;
                        } else if (i == list2.size()) {
                            z = true;
                        }
                    }
                    continue;
                }
            }
            return z;
        }
    }

    private C0190ac cJ(List<com.bytedance.sdk.component.adexpress.dynamic.ac.hm> list, float f2, float f3) {
        C0190ac Qhi2 = Qhi(list);
        if (Qhi2 == null || (Qhi2.Qhi == 0.0f && Qhi2.cJ == 0.0f)) {
            C0190ac ac = ac(list, f2, f3);
            Qhi(list, ac);
            return ac;
        }
        return Qhi2;
    }

    private C0190ac ac(List<com.bytedance.sdk.component.adexpress.dynamic.ac.hm> list, float f2, float f3) {
        float f4;
        CJ(list);
        C0190ac c0190ac = new C0190ac();
        ArrayList<com.bytedance.sdk.component.adexpress.dynamic.ac.hm> arrayList = new ArrayList();
        ArrayList<com.bytedance.sdk.component.adexpress.dynamic.ac.hm> arrayList2 = new ArrayList();
        for (com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar : list) {
            com.bytedance.sdk.component.adexpress.dynamic.ac.ROR fl = hmVar.WAv().fl();
            if (fl.dVA() == 1 || fl.dVA() == 2) {
                arrayList.add(hmVar);
            }
            if (fl.dVA() != 1 && fl.dVA() != 2) {
                arrayList2.add(hmVar);
            }
        }
        for (com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar2 : arrayList) {
            ac(hmVar2, f2, f3);
        }
        if (arrayList2.size() <= 0) {
            return c0190ac;
        }
        ArrayList arrayList3 = new ArrayList();
        for (com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar3 : arrayList2) {
            arrayList3.add(Float.valueOf(ac(hmVar3, f2, f3).Qhi));
        }
        ArrayList arrayList4 = new ArrayList();
        int i = 0;
        while (true) {
            if (i >= arrayList2.size()) {
                break;
            }
            com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar4 = arrayList2.get(i);
            String aP = hmVar4.WAv().fl().aP();
            float Sf = hmVar4.Sf();
            boolean equals = TextUtils.equals(aP, "flex");
            if (TextUtils.equals(aP, "auto")) {
                List<List<com.bytedance.sdk.component.adexpress.dynamic.ac.hm>> HzH = hmVar4.HzH();
                if (HzH != null && HzH.size() > 0) {
                    for (List<com.bytedance.sdk.component.adexpress.dynamic.ac.hm> list2 : HzH) {
                        if (cJ(list2)) {
                            equals = true;
                            break;
                        }
                    }
                }
                equals = false;
            }
            Qhi qhi = new Qhi();
            if (!equals) {
                Sf = ((Float) arrayList3.get(i)).floatValue();
            }
            qhi.Qhi = Sf;
            qhi.cJ = !equals;
            if (equals) {
                f4 = ((Float) arrayList3.get(i)).floatValue();
            }
            qhi.ac = f4;
            arrayList4.add(qhi);
            i++;
        }
        Qhi(arrayList4, f2, arrayList2);
        List<Qhi> Qhi2 = zc.Qhi(f2, arrayList4);
        float f5 = 0.0f;
        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            f5 += Qhi2.get(i2).Qhi;
            if (((Float) arrayList3.get(i2)).floatValue() != Qhi2.get(i2).Qhi) {
                CJ(arrayList2.get(i2));
            }
        }
        Iterator<com.bytedance.sdk.component.adexpress.dynamic.ac.hm> it = arrayList2.iterator();
        int i3 = 0;
        boolean z = false;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            i3++;
            if (!cJ(it.next())) {
                z = false;
                break;
            } else if (i3 == arrayList2.size()) {
                z = true;
            }
        }
        f4 = z ? f3 : 0.0f;
        ArrayList<C0190ac> arrayList5 = new ArrayList();
        for (int i4 = 0; i4 < arrayList2.size(); i4++) {
            com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar5 = arrayList2.get(i4);
            C0190ac ac = ac(hmVar5, Qhi2.get(i4).Qhi, f3);
            if (!cJ(hmVar5)) {
                f4 = Math.max(f4, ac.cJ);
            }
            arrayList5.add(ac);
        }
        ArrayList arrayList6 = new ArrayList();
        for (C0190ac c0190ac2 : arrayList5) {
            arrayList6.add(Float.valueOf(c0190ac2.cJ));
        }
        if (!z) {
            for (int i5 = 0; i5 < arrayList2.size(); i5++) {
                com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar6 = arrayList2.get(i5);
                if (cJ(hmVar6) && ((Float) arrayList6.get(i5)).floatValue() != f4) {
                    CJ(hmVar6);
                    ac(hmVar6, Qhi2.get(i5).Qhi, f4);
                }
            }
        }
        c0190ac.Qhi = f5;
        c0190ac.cJ = f4;
        return c0190ac;
    }

    private boolean cJ(com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar) {
        if (hmVar == null) {
            return false;
        }
        if (TextUtils.equals(hmVar.WAv().fl().Eh(), "flex")) {
            return true;
        }
        return ac(hmVar);
    }

    private boolean ac(com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar) {
        List<List<com.bytedance.sdk.component.adexpress.dynamic.ac.hm>> HzH;
        if (!hmVar.kYc() && TextUtils.equals(hmVar.WAv().fl().Eh(), "auto") && (HzH = hmVar.HzH()) != null && HzH.size() > 0) {
            if (HzH.size() == 1) {
                for (com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar2 : HzH.get(0)) {
                    if (!cJ(hmVar2)) {
                        return false;
                    }
                }
                return true;
            }
            for (List<com.bytedance.sdk.component.adexpress.dynamic.ac.hm> list : HzH) {
                if (Qhi(list, true)) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean Qhi(List<com.bytedance.sdk.component.adexpress.dynamic.ac.hm> list, boolean z) {
        for (com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar : list) {
            com.bytedance.sdk.component.adexpress.dynamic.ac.ROR fl = hmVar.WAv().fl();
            String Eh = fl.Eh();
            if (TextUtils.equals(Eh, "flex") || (z && ((TextUtils.equals(fl.aP(), "flex") && TextUtils.equals(fl.Eh(), "scale") && com.bytedance.sdk.component.adexpress.dynamic.ac.Tgh.Qhi.get(hmVar.WAv().cJ()).intValue() == 7) || TextUtils.equals(Eh, "flex")))) {
                return true;
            }
        }
        for (com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar2 : list) {
            if (ac(hmVar2)) {
                return true;
            }
        }
        return false;
    }

    private void Qhi(List<Qhi> list, float f2, List<com.bytedance.sdk.component.adexpress.dynamic.ac.hm> list2) {
        float f3 = 0.0f;
        for (Qhi qhi : list) {
            if (qhi.cJ) {
                f3 += qhi.Qhi;
            }
        }
        if (f3 > f2) {
            int i = 0;
            for (int i2 = 0; i2 < list2.size(); i2++) {
                if (list.get(i2).cJ && list2.get(i2).EBS()) {
                    i++;
                }
            }
            if (i > 0) {
                float ceil = (float) (Math.ceil(((f3 - f2) / i) * 1000.0f) / 1000.0d);
                for (int i3 = 0; i3 < list2.size(); i3++) {
                    Qhi qhi2 = list.get(i3);
                    if (qhi2.cJ && list2.get(i3).EBS()) {
                        qhi2.Qhi -= ceil;
                    }
                }
            }
        }
    }

    public void Qhi() {
        this.ac.clear();
        this.Qhi.clear();
        this.cJ.clear();
    }

    public C0190ac Qhi(com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar) {
        return this.Qhi.get(fl(hmVar));
    }

    public C0190ac Qhi(List<com.bytedance.sdk.component.adexpress.dynamic.ac.hm> list) {
        return this.cJ.get(CJ(list));
    }

    private void CJ(com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar) {
        this.Qhi.remove(fl(hmVar));
        List<List<com.bytedance.sdk.component.adexpress.dynamic.ac.hm>> HzH = hmVar.HzH();
        if (HzH == null || HzH.size() <= 0) {
            return;
        }
        for (List<com.bytedance.sdk.component.adexpress.dynamic.ac.hm> list : HzH) {
            ac(list);
        }
    }

    private void ac(List<com.bytedance.sdk.component.adexpress.dynamic.ac.hm> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        this.cJ.remove(CJ(list));
        for (com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar : list) {
            CJ(hmVar);
        }
    }

    private String fl(com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar) {
        return hmVar.ac();
    }

    private String CJ(List<com.bytedance.sdk.component.adexpress.dynamic.ac.hm> list) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            String ac = list.get(i).ac();
            if (i < list.size() - 1) {
                sb.append(ac).append("-");
            } else {
                sb.append(ac);
            }
        }
        return sb.toString();
    }

    private void Qhi(com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar, C0190ac c0190ac) {
        this.Qhi.put(fl(hmVar), c0190ac);
    }

    private void Qhi(List<com.bytedance.sdk.component.adexpress.dynamic.ac.hm> list, C0190ac c0190ac) {
        this.cJ.put(CJ(list), c0190ac);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ComputeRuler.java */
    /* renamed from: com.bytedance.sdk.component.adexpress.dynamic.CJ.ac$ac  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0190ac {
        float Qhi;
        float cJ;

        public C0190ac() {
        }

        public C0190ac(float f2, float f3) {
            this.Qhi = f2;
            this.cJ = f3;
        }

        public String toString() {
            return "UnitSize{width=" + this.Qhi + ", height=" + this.cJ + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ComputeRuler.java */
    /* loaded from: classes2.dex */
    public static class cJ {
        double CJ;
        float Qhi;
        int ac;
        int cJ;
        float fl;

        cJ() {
        }

        static JSONObject Qhi(cJ cJVar) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(TtmlNode.ATTR_TTS_FONT_SIZE, cJVar.Qhi);
                jSONObject.put("letterSpacing", cJVar.cJ);
                jSONObject.put("lineHeight", cJVar.CJ);
                jSONObject.put("maxWidth", cJVar.fl);
                jSONObject.put(TtmlNode.ATTR_TTS_FONT_WEIGHT, cJVar.ac);
            } catch (JSONException unused) {
            }
            return jSONObject;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ComputeRuler.java */
    /* loaded from: classes2.dex */
    public static class Qhi implements Cloneable {
        float Qhi;
        float ac;
        boolean cJ;

        Qhi() {
        }

        public Object clone() {
            try {
                return (Qhi) super.clone();
            } catch (CloneNotSupportedException unused) {
                return null;
            }
        }
    }
}
