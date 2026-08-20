package com.bytedance.sdk.component.Qhi;

import com.bytedance.sdk.component.Qhi.EBS;
import com.bytedance.sdk.component.Qhi.MQ;
import com.bytedance.sdk.component.Qhi.bxS;
import com.bytedance.sdk.component.Qhi.fl;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CallHandler.java */
/* loaded from: classes2.dex */
public class Sf implements bxS.Qhi {
    private final hm Qhi;
    private final iMK ROR;
    private final boolean Sf;
    private final com.bytedance.sdk.component.Qhi.Qhi WAv;
    private final qMt cJ;
    private final boolean hm;
    private final Map<String, cJ> ac = new HashMap();
    private final Map<String, fl.cJ> CJ = new HashMap();
    private final List<HzH> fl = new ArrayList();
    private final Set<fl> Tgh = new HashSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    public Sf(Gm gm, com.bytedance.sdk.component.Qhi.Qhi qhi, EBS ebs) {
        this.WAv = qhi;
        this.Qhi = gm.CJ;
        qMt qmt = new qMt(ebs, gm.zc, gm.ABk);
        this.cJ = qmt;
        qmt.Qhi(this);
        qmt.Qhi(gm.hpZ);
        this.ROR = gm.hm;
        this.Sf = gm.Sf;
        this.hm = gm.pA;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Qhi Qhi(HzH hzH, ROR ror) throws Exception {
        cJ cJVar = this.ac.get(hzH.CJ);
        if (cJVar != null) {
            try {
                Dww cJ = cJ(ror.cJ, cJVar);
                ror.CJ = cJ;
                if (cJ == null) {
                    new StringBuilder("Permission denied, call: ").append(hzH);
                    throw new tP(-1);
                } else if (cJVar instanceof Tgh) {
                    new StringBuilder("Processing stateless call: ").append(hzH);
                    return Qhi(hzH, (Tgh) cJVar, ror);
                } else if (cJVar instanceof ac) {
                    new StringBuilder("Processing raw call: ").append(hzH);
                    return Qhi(hzH, (ac) cJVar, cJ);
                }
            } catch (EBS.Qhi unused) {
                new StringBuilder("No remote permission config fetched, call pending: ").append(hzH);
                this.fl.add(hzH);
                return new Qhi(false, CQU.Qhi());
            }
        }
        fl.cJ cJVar2 = this.CJ.get(hzH.CJ);
        if (cJVar2 != null) {
            fl Qhi2 = cJVar2.Qhi();
            Qhi2.Qhi(hzH.CJ);
            Dww cJ2 = cJ(ror.cJ, Qhi2);
            ror.CJ = cJ2;
            if (cJ2 == null) {
                new StringBuilder("Permission denied, call: ").append(hzH);
                Qhi2.CJ();
                throw new tP(-1);
            }
            new StringBuilder("Processing stateful call: ").append(hzH);
            return Qhi(hzH, Qhi2, ror);
        }
        new StringBuilder("Received call: ").append(hzH);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(String str, Tgh<?, ?> tgh) {
        tgh.Qhi(str);
        this.ac.put(str, tgh);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(String str, fl.cJ cJVar) {
        this.CJ.put(str, cJVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi() {
        for (fl flVar : this.Tgh) {
            flVar.fl();
        }
        this.Tgh.clear();
        this.ac.clear();
        this.CJ.clear();
        this.cJ.cJ(this);
    }

    private Qhi Qhi(HzH hzH, Tgh tgh, ROR ror) throws Exception {
        return new Qhi(true, CQU.Qhi(this.Qhi.Qhi((hm) tgh.Qhi(Qhi(hzH.fl, (cJ) tgh), ror))));
    }

    private Qhi Qhi(final HzH hzH, final fl flVar, ROR ror) throws Exception {
        this.Tgh.add(flVar);
        flVar.Qhi(Qhi(hzH.fl, flVar), ror, new fl.Qhi() { // from class: com.bytedance.sdk.component.Qhi.Sf.1
            @Override // com.bytedance.sdk.component.Qhi.fl.Qhi
            public void Qhi(Object obj) {
                if (Sf.this.WAv == null) {
                    return;
                }
                Sf.this.WAv.cJ(CQU.Qhi(Sf.this.Qhi.Qhi((hm) obj)), hzH);
                Sf.this.Tgh.remove(flVar);
            }

            @Override // com.bytedance.sdk.component.Qhi.fl.Qhi
            public void Qhi(Throwable th) {
                if (Sf.this.WAv == null) {
                    return;
                }
                Sf.this.WAv.cJ(CQU.Qhi(th), hzH);
                Sf.this.Tgh.remove(flVar);
            }
        });
        return new Qhi(false, CQU.Qhi());
    }

    private Qhi Qhi(final HzH hzH, ac acVar, Dww dww) throws Exception {
        new MQ(hzH.CJ, dww, new MQ.Qhi() { // from class: com.bytedance.sdk.component.Qhi.Sf.2
        });
        return new Qhi(false, CQU.Qhi());
    }

    private Object Qhi(String str, cJ cJVar) throws JSONException {
        return this.Qhi.Qhi(str, Qhi(cJVar)[0]);
    }

    private Dww cJ(String str, cJ cJVar) {
        if (this.hm) {
            return Dww.PRIVATE;
        }
        return this.cJ.Qhi(this.Sf, str, cJVar);
    }

    private static Type[] Qhi(Object obj) {
        Type genericSuperclass = obj.getClass().getGenericSuperclass();
        if (genericSuperclass == null) {
            throw new IllegalStateException("Method is not parameterized?!");
        }
        return ((ParameterizedType) genericSuperclass).getActualTypeArguments();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CallHandler.java */
    /* loaded from: classes2.dex */
    public static final class Qhi {
        boolean Qhi;
        String cJ;

        private Qhi(boolean z, String str) {
            this.Qhi = z;
            this.cJ = str;
        }
    }
}
