package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
class An extends tn<F2> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public An(Bn bn, F2 f2) {
        super(f2);
    }

    @Override // com.yandex.metrica.impl.ob.tn
    protected boolean a(tn<F2> tnVar) {
        F2 f2 = (F2) this.f15792a;
        if (f2.f12917a == null ? tnVar.f15792a.f12917a == null : f2.f12917a.equals(tnVar.f15792a.f12917a)) {
            F2 f22 = (F2) this.f15792a;
            if (f22.f12918b != null) {
                return f22.f12918b.equals(tnVar.f15792a.f12918b);
            }
            return tnVar.f15792a.f12918b == null;
        }
        return false;
    }

    public int hashCode() {
        F2 f2 = (F2) this.f15792a;
        int hashCode = (f2.f12917a != null ? f2.f12917a.hashCode() : 0) * 31;
        F2 f22 = (F2) this.f15792a;
        return hashCode + (f22.f12918b != null ? f22.f12918b.hashCode() : 0);
    }
}
