package com.bytedance.sdk.component.Qhi;
/* compiled from: BaseStatefulMethod.java */
/* loaded from: classes2.dex */
public abstract class fl<P, R> extends com.bytedance.sdk.component.Qhi.cJ<P, R> {
    private boolean Qhi = true;
    private ROR ac;
    private Qhi cJ;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseStatefulMethod.java */
    /* loaded from: classes2.dex */
    public interface Qhi {
        void Qhi(Object obj);

        void Qhi(Throwable th);
    }

    /* compiled from: BaseStatefulMethod.java */
    /* loaded from: classes2.dex */
    public interface cJ {
        fl Qhi();
    }

    protected abstract void Qhi(P p, ROR ror) throws Exception;

    @Override // com.bytedance.sdk.component.Qhi.cJ
    public /* bridge */ /* synthetic */ String Qhi() {
        return super.Qhi();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void Qhi(R r) {
        if (Tgh()) {
            this.cJ.Qhi(r);
            CJ();
        }
    }

    protected final void Qhi(Throwable th) {
        if (Tgh()) {
            this.cJ.Qhi(th);
            CJ();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void ac() {
        Qhi((Throwable) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void CJ() {
        this.Qhi = false;
        this.ac = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(P p, ROR ror, Qhi qhi) throws Exception {
        this.ac = ror;
        this.cJ = qhi;
        Qhi(p, ror);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void fl() {
        CJ();
    }

    private boolean Tgh() {
        if (this.Qhi) {
            return true;
        }
        WAv.Qhi(new IllegalStateException("Jsb async call already finished: " + Qhi() + ", hashcode: " + hashCode()));
        return false;
    }
}
