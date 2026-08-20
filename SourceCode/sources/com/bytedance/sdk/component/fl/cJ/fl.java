package com.bytedance.sdk.component.fl.cJ;

import com.bytedance.sdk.component.fl.ROR;
import com.bytedance.sdk.component.fl.Sf;
import java.util.Map;
/* compiled from: HttpResponse.java */
/* loaded from: classes2.dex */
public class fl<T> implements ROR {
    private String CJ;
    Map<String, String> Qhi;
    private T ac;
    private int cJ;
    private Sf fl;

    public fl(int i, T t, String str) {
        this.cJ = i;
        this.ac = t;
        this.CJ = str;
    }

    public fl(int i, T t, String str, Map<String, String> map) {
        this(i, t, str);
        this.Qhi = map;
    }

    @Override // com.bytedance.sdk.component.fl.ROR
    public Sf Qhi() {
        return this.fl;
    }

    public void Qhi(Sf sf) {
        this.fl = sf;
    }

    @Override // com.bytedance.sdk.component.fl.ROR
    public int cJ() {
        return this.cJ;
    }

    @Override // com.bytedance.sdk.component.fl.ROR
    public T ac() {
        return this.ac;
    }

    @Override // com.bytedance.sdk.component.fl.ROR
    public String CJ() {
        return this.CJ;
    }

    @Override // com.bytedance.sdk.component.fl.ROR
    public Map<String, String> fl() {
        return this.Qhi;
    }
}
