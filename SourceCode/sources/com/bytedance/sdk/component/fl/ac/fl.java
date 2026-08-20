package com.bytedance.sdk.component.fl.ac;

import com.bytedance.sdk.component.fl.zc;
import java.util.Map;
/* compiled from: ImageResponse.java */
/* loaded from: classes2.dex */
public class fl<T> implements zc {
    private T CJ;
    private int Gm;
    private String Qhi;
    private Map<String, String> ROR;
    private boolean Sf;
    private int Tgh;
    private com.bytedance.sdk.component.fl.Sf WAv;
    private T ac;
    private String cJ;
    private int fl;
    private boolean hm;

    public fl Qhi(ac acVar, T t) {
        this.ac = t;
        this.Qhi = acVar.fl();
        this.cJ = acVar.Qhi();
        this.fl = acVar.cJ();
        this.Tgh = acVar.ac();
        this.hm = acVar.pA();
        this.WAv = acVar.hpZ();
        this.Gm = acVar.HzH();
        return this;
    }

    public fl Qhi(ac acVar, T t, Map<String, String> map, boolean z) {
        this.ROR = map;
        this.Sf = z;
        return Qhi(acVar, t);
    }

    @Override // com.bytedance.sdk.component.fl.zc
    public String Qhi() {
        return this.cJ;
    }

    @Override // com.bytedance.sdk.component.fl.zc
    public T cJ() {
        return this.ac;
    }

    @Override // com.bytedance.sdk.component.fl.zc
    public T ac() {
        return this.CJ;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bytedance.sdk.component.fl.zc
    public void Qhi(Object obj) {
        this.CJ = this.ac;
        this.ac = obj;
    }

    @Override // com.bytedance.sdk.component.fl.zc
    public Map<String, String> CJ() {
        return this.ROR;
    }

    @Override // com.bytedance.sdk.component.fl.zc
    public boolean fl() {
        return this.Sf;
    }

    @Override // com.bytedance.sdk.component.fl.zc
    public boolean Tgh() {
        return this.hm;
    }

    @Override // com.bytedance.sdk.component.fl.zc
    public int ROR() {
        return this.Gm;
    }
}
