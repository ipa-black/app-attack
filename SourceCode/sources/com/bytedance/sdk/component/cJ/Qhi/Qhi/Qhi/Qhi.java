package com.bytedance.sdk.component.cJ.Qhi.Qhi.Qhi;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
/* compiled from: NetCacheDispatcher.java */
/* loaded from: classes2.dex */
public class Qhi extends com.bytedance.sdk.component.cJ.Qhi.fl {
    public static volatile WAv Qhi;
    private ExecutorService CJ;
    private List<com.bytedance.sdk.component.cJ.Qhi.cJ> cJ = new CopyOnWriteArrayList();
    private List<com.bytedance.sdk.component.cJ.Qhi.cJ> ac = new CopyOnWriteArrayList();

    @Override // com.bytedance.sdk.component.cJ.Qhi.fl
    public int Qhi() {
        return 0;
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.fl
    public void Qhi(int i) {
    }

    public Qhi(ExecutorService executorService) {
        this.CJ = executorService;
    }

    public static void Qhi(WAv wAv) {
        Qhi = wAv;
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.fl
    public ExecutorService cJ() {
        ExecutorService Qhi2 = Qhi != null ? Qhi.Qhi() : null;
        return Qhi2 != null ? Qhi2 : this.CJ;
    }

    public boolean fl() {
        return (Qhi == null || Qhi.Qhi() == null) ? false : true;
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.fl
    public List<com.bytedance.sdk.component.cJ.Qhi.cJ> ac() {
        return this.cJ;
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.fl
    public List<com.bytedance.sdk.component.cJ.Qhi.cJ> CJ() {
        return this.ac;
    }
}
