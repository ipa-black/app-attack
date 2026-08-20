package com.bytedance.sdk.component.Qhi;

import com.bytedance.sdk.component.Qhi.EBS;
import com.bytedance.sdk.component.Qhi.bxS;
import com.bytedance.sdk.component.Qhi.zc;
import java.util.LinkedHashSet;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PermissionChecker.java */
/* loaded from: classes2.dex */
public class qMt {
    private final EBS CJ;
    private final Set<String> Qhi;
    private final bxS ac = kYc.Qhi;
    private final Set<String> cJ;
    private zc.Qhi fl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public qMt(EBS ebs, Set<String> set, Set<String> set2) {
        this.CJ = ebs;
        if (set == null || set.isEmpty()) {
            this.Qhi = new LinkedHashSet();
        } else {
            this.Qhi = new LinkedHashSet(set);
        }
        if (set2 == null || set2.isEmpty()) {
            this.cJ = new LinkedHashSet();
        } else {
            this.cJ = new LinkedHashSet(set2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002a A[Catch: all -> 0x0079, TryCatch #0 {, blocks: (B:3:0x0001, B:8:0x000e, B:10:0x001a, B:12:0x001e, B:13:0x0024, B:15:0x002a, B:17:0x003a, B:19:0x004a, B:21:0x004e, B:23:0x0052, B:25:0x0058, B:29:0x0066, B:31:0x006a, B:32:0x006f), top: B:41:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized com.bytedance.sdk.component.Qhi.Dww Qhi(boolean r8, java.lang.String r9, com.bytedance.sdk.component.Qhi.cJ r10) throws com.bytedance.sdk.component.Qhi.EBS.Qhi {
        /*
            r7 = this;
            monitor-enter(r7)
            android.net.Uri r0 = android.net.Uri.parse(r9)     // Catch: java.lang.Throwable -> L79
            java.lang.String r1 = r0.getHost()     // Catch: java.lang.Throwable -> L79
            r2 = 0
            if (r1 != 0) goto Le
            monitor-exit(r7)
            return r2
        Le:
            java.util.Set<java.lang.String> r3 = r7.cJ     // Catch: java.lang.Throwable -> L79
            java.lang.String r4 = r10.Qhi()     // Catch: java.lang.Throwable -> L79
            boolean r3 = r3.contains(r4)     // Catch: java.lang.Throwable -> L79
            if (r3 == 0) goto L1d
            com.bytedance.sdk.component.Qhi.Dww r3 = com.bytedance.sdk.component.Qhi.Dww.PUBLIC     // Catch: java.lang.Throwable -> L79
            goto L1e
        L1d:
            r3 = r2
        L1e:
            java.util.Set<java.lang.String> r4 = r7.Qhi     // Catch: java.lang.Throwable -> L79
            java.util.Iterator r4 = r4.iterator()     // Catch: java.lang.Throwable -> L79
        L24:
            boolean r5 = r4.hasNext()     // Catch: java.lang.Throwable -> L79
            if (r5 == 0) goto L4c
            java.lang.Object r5 = r4.next()     // Catch: java.lang.Throwable -> L79
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Throwable -> L79
            java.lang.String r6 = r0.getHost()     // Catch: java.lang.Throwable -> L79
            boolean r6 = r6.equals(r5)     // Catch: java.lang.Throwable -> L79
            if (r6 != 0) goto L4a
            java.lang.String r6 = "."
            java.lang.String r5 = java.lang.String.valueOf(r5)     // Catch: java.lang.Throwable -> L79
            java.lang.String r5 = r6.concat(r5)     // Catch: java.lang.Throwable -> L79
            boolean r5 = r1.endsWith(r5)     // Catch: java.lang.Throwable -> L79
            if (r5 == 0) goto L24
        L4a:
            com.bytedance.sdk.component.Qhi.Dww r3 = com.bytedance.sdk.component.Qhi.Dww.PRIVATE     // Catch: java.lang.Throwable -> L79
        L4c:
            if (r3 != 0) goto L68
            com.bytedance.sdk.component.Qhi.zc$Qhi r0 = r7.fl     // Catch: java.lang.Throwable -> L79
            if (r0 == 0) goto L68
            boolean r0 = r0.Qhi(r9)     // Catch: java.lang.Throwable -> L79
            if (r0 == 0) goto L68
            com.bytedance.sdk.component.Qhi.zc$Qhi r0 = r7.fl     // Catch: java.lang.Throwable -> L79
            java.lang.String r1 = r10.Qhi()     // Catch: java.lang.Throwable -> L79
            boolean r0 = r0.Qhi(r9, r1)     // Catch: java.lang.Throwable -> L79
            if (r0 == 0) goto L66
            monitor-exit(r7)
            return r2
        L66:
            com.bytedance.sdk.component.Qhi.Dww r3 = com.bytedance.sdk.component.Qhi.Dww.PRIVATE     // Catch: java.lang.Throwable -> L79
        L68:
            if (r8 == 0) goto L6f
            com.bytedance.sdk.component.Qhi.Dww r8 = r7.Qhi(r9, r10)     // Catch: java.lang.Throwable -> L79
            goto L73
        L6f:
            com.bytedance.sdk.component.Qhi.Dww r8 = r7.cJ(r9, r10)     // Catch: java.lang.Throwable -> L79
        L73:
            if (r8 == 0) goto L77
            monitor-exit(r7)
            return r8
        L77:
            monitor-exit(r7)
            return r3
        L79:
            r8 = move-exception
            monitor-exit(r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.Qhi.qMt.Qhi(boolean, java.lang.String, com.bytedance.sdk.component.Qhi.cJ):com.bytedance.sdk.component.Qhi.Dww");
    }

    final synchronized Dww Qhi(String str, cJ cJVar) throws EBS.Qhi {
        return Qhi(str, cJVar, true);
    }

    final synchronized Dww cJ(String str, cJ cJVar) {
        return Qhi(str, cJVar, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(zc.Qhi qhi) {
        this.fl = qhi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(bxS.Qhi qhi) {
        if (this.ac != null) {
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cJ(bxS.Qhi qhi) {
        if (this.ac != null) {
            throw null;
        }
    }

    private Dww Qhi(String str, cJ cJVar, boolean z) {
        if (!z || this.CJ == null) {
            return null;
        }
        throw null;
    }
}
