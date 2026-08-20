package com.bytedance.sdk.component.Sf;
/* compiled from: TTBaseExecutor.java */
/* loaded from: classes2.dex */
public class Tgh {
    private static Gm Qhi = new Gm() { // from class: com.bytedance.sdk.component.Sf.Tgh.1
        @Override // com.bytedance.sdk.component.Sf.Gm
        public WAv createThreadFactory(int i, String str) {
            return new WAv(i, str);
        }
    };

    public static void Qhi(Gm gm) {
        Qhi = gm;
    }

    public static Gm Qhi() {
        return Qhi;
    }
}
