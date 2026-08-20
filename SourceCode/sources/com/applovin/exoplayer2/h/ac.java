package com.applovin.exoplayer2.h;

import android.os.Bundle;
import com.applovin.exoplayer2.g;
import com.google.android.exoplayer2.C;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class ac implements com.applovin.exoplayer2.g {

    /* renamed from: b  reason: collision with root package name */
    public static final g.a<ac> f3004b = new g.a() { // from class: com.applovin.exoplayer2.h.ac$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.g.a
        public final com.applovin.exoplayer2.g fromBundle(Bundle bundle) {
            ac a2;
            a2 = ac.a(bundle);
            return a2;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final int f3005a;

    /* renamed from: c  reason: collision with root package name */
    private final com.applovin.exoplayer2.v[] f3006c;

    /* renamed from: d  reason: collision with root package name */
    private int f3007d;

    public ac(com.applovin.exoplayer2.v... vVarArr) {
        com.applovin.exoplayer2.l.a.a(vVarArr.length > 0);
        this.f3006c = vVarArr;
        this.f3005a = vVarArr.length;
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ac a(Bundle bundle) {
        return new ac((com.applovin.exoplayer2.v[]) com.applovin.exoplayer2.l.c.a(com.applovin.exoplayer2.v.F, bundle.getParcelableArrayList(b(0)), com.applovin.exoplayer2.common.a.s.g()).toArray(new com.applovin.exoplayer2.v[0]));
    }

    private static String a(String str) {
        return (str == null || str.equals(C.LANGUAGE_UNDETERMINED)) ? "" : str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0037, code lost:
        a(r2, r0, r1, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003a, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a() {
        /*
            r6 = this;
            com.applovin.exoplayer2.v[] r0 = r6.f3006c
            r1 = 0
            r0 = r0[r1]
            java.lang.String r0 = r0.f4180c
            java.lang.String r0 = a(r0)
            com.applovin.exoplayer2.v[] r2 = r6.f3006c
            r2 = r2[r1]
            int r2 = r2.f4182e
            int r2 = c(r2)
            r3 = 1
        L16:
            com.applovin.exoplayer2.v[] r4 = r6.f3006c
            int r5 = r4.length
            if (r3 >= r5) goto L61
            r4 = r4[r3]
            java.lang.String r4 = r4.f4180c
            java.lang.String r4 = a(r4)
            boolean r4 = r0.equals(r4)
            if (r4 != 0) goto L3b
            com.applovin.exoplayer2.v[] r0 = r6.f3006c
            r0 = r0[r1]
            java.lang.String r0 = r0.f4180c
            com.applovin.exoplayer2.v[] r1 = r6.f3006c
            r1 = r1[r3]
            java.lang.String r1 = r1.f4180c
            java.lang.String r2 = "languages"
        L37:
            a(r2, r0, r1, r3)
            return
        L3b:
            com.applovin.exoplayer2.v[] r4 = r6.f3006c
            r4 = r4[r3]
            int r4 = r4.f4182e
            int r4 = c(r4)
            if (r2 == r4) goto L5e
            com.applovin.exoplayer2.v[] r0 = r6.f3006c
            r0 = r0[r1]
            int r0 = r0.f4182e
            java.lang.String r0 = java.lang.Integer.toBinaryString(r0)
            com.applovin.exoplayer2.v[] r1 = r6.f3006c
            r1 = r1[r3]
            int r1 = r1.f4182e
            java.lang.String r1 = java.lang.Integer.toBinaryString(r1)
            java.lang.String r2 = "role flags"
            goto L37
        L5e:
            int r3 = r3 + 1
            goto L16
        L61:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.h.ac.a():void");
    }

    private static void a(String str, String str2, String str3, int i) {
        com.applovin.exoplayer2.l.q.c("TrackGroup", "", new IllegalStateException("Different " + str + " combined in one TrackGroup: '" + str2 + "' (track 0) and '" + str3 + "' (track " + i + ")"));
    }

    private static String b(int i) {
        return Integer.toString(i, 36);
    }

    private static int c(int i) {
        return i | 16384;
    }

    public int a(com.applovin.exoplayer2.v vVar) {
        int i = 0;
        while (true) {
            com.applovin.exoplayer2.v[] vVarArr = this.f3006c;
            if (i >= vVarArr.length) {
                return -1;
            }
            if (vVar == vVarArr[i]) {
                return i;
            }
            i++;
        }
    }

    public com.applovin.exoplayer2.v a(int i) {
        return this.f3006c[i];
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ac acVar = (ac) obj;
        return this.f3005a == acVar.f3005a && Arrays.equals(this.f3006c, acVar.f3006c);
    }

    public int hashCode() {
        if (this.f3007d == 0) {
            this.f3007d = IronSourceError.ERROR_NON_EXISTENT_INSTANCE + Arrays.hashCode(this.f3006c);
        }
        return this.f3007d;
    }
}
