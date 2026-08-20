package com.bytedance.adsdk.Qhi.cJ.ac.Qhi;
/* compiled from: RightParenParser.java */
/* loaded from: classes2.dex */
public class WAv extends ROR {
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0036, code lost:
        if (r0.Qhi() != com.bytedance.adsdk.Qhi.cJ.CJ.fl.METHOD) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0038, code lost:
        r0 = (com.bytedance.adsdk.Qhi.cJ.cJ.Qhi.Gm) r0;
        r1 = new java.util.LinkedList();
        r2 = new java.util.LinkedList();
        r10 = r10.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004c, code lost:
        if (r10.hasNext() == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004e, code lost:
        r3 = (com.bytedance.adsdk.Qhi.cJ.cJ.Qhi) r10.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005a, code lost:
        if (r3.Qhi() != com.bytedance.adsdk.Qhi.cJ.CJ.ROR.COMMA) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005c, code lost:
        r1.add(com.bytedance.adsdk.Qhi.cJ.fl.cJ.Qhi(r2, r7, r8));
        r2.clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006a, code lost:
        r2.addLast(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0072, code lost:
        if (r2.isEmpty() != false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0074, code lost:
        r1.add(com.bytedance.adsdk.Qhi.cJ.fl.cJ.Qhi(r2, r7, r8));
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007d, code lost:
        r0.Qhi((com.bytedance.adsdk.Qhi.cJ.cJ.Qhi[]) r1.toArray(new com.bytedance.adsdk.Qhi.cJ.cJ.Qhi[r1.size()]));
        r8 = r8 + 1;
        r9.push(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0092, code lost:
        r9.push(com.bytedance.adsdk.Qhi.cJ.fl.cJ.Qhi(r10, r7, r8));
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x009e, code lost:
        return r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:?, code lost:
        return r8;
     */
    @Override // com.bytedance.adsdk.Qhi.cJ.ac.Qhi.ROR
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int Qhi(java.lang.String r7, int r8, java.util.Deque<com.bytedance.adsdk.Qhi.cJ.cJ.Qhi> r9, com.bytedance.adsdk.Qhi.cJ.ac.Qhi r10) {
        /*
            r6 = this;
            r0 = 41
            char r1 = r6.Qhi(r8, r7)
            if (r0 == r1) goto Ld
            int r7 = r10.Qhi(r7, r8, r9)
            return r7
        Ld:
            java.util.LinkedList r10 = new java.util.LinkedList
            r10.<init>()
        L12:
            java.lang.Object r0 = r9.pollFirst()
            com.bytedance.adsdk.Qhi.cJ.cJ.Qhi r0 = (com.bytedance.adsdk.Qhi.cJ.cJ.Qhi) r0
            if (r0 == 0) goto L2e
            com.bytedance.adsdk.Qhi.cJ.CJ.Sf r1 = r0.Qhi()
            com.bytedance.adsdk.Qhi.cJ.CJ.fl r2 = com.bytedance.adsdk.Qhi.cJ.CJ.fl.METHOD
            if (r1 == r2) goto L2e
            com.bytedance.adsdk.Qhi.cJ.CJ.Sf r1 = r0.Qhi()
            com.bytedance.adsdk.Qhi.cJ.CJ.ROR r2 = com.bytedance.adsdk.Qhi.cJ.CJ.ROR.LEFT_PAREN
            if (r1 == r2) goto L2e
            r10.addFirst(r0)
            goto L12
        L2e:
            if (r0 == 0) goto L9f
            com.bytedance.adsdk.Qhi.cJ.CJ.Sf r1 = r0.Qhi()
            com.bytedance.adsdk.Qhi.cJ.CJ.fl r2 = com.bytedance.adsdk.Qhi.cJ.CJ.fl.METHOD
            if (r1 != r2) goto L92
            com.bytedance.adsdk.Qhi.cJ.cJ.Qhi.Gm r0 = (com.bytedance.adsdk.Qhi.cJ.cJ.Qhi.Gm) r0
            java.util.LinkedList r1 = new java.util.LinkedList
            r1.<init>()
            java.util.LinkedList r2 = new java.util.LinkedList
            r2.<init>()
            java.util.Iterator r10 = r10.iterator()
        L48:
            boolean r3 = r10.hasNext()
            if (r3 == 0) goto L6e
            java.lang.Object r3 = r10.next()
            com.bytedance.adsdk.Qhi.cJ.cJ.Qhi r3 = (com.bytedance.adsdk.Qhi.cJ.cJ.Qhi) r3
            com.bytedance.adsdk.Qhi.cJ.CJ.Sf r4 = r3.Qhi()
            com.bytedance.adsdk.Qhi.cJ.CJ.ROR r5 = com.bytedance.adsdk.Qhi.cJ.CJ.ROR.COMMA
            if (r4 != r5) goto L6a
            r3 = r2
            java.util.LinkedList r3 = (java.util.LinkedList) r3
            com.bytedance.adsdk.Qhi.cJ.cJ.Qhi r3 = com.bytedance.adsdk.Qhi.cJ.fl.cJ.Qhi(r2, r7, r8)
            r1.add(r3)
            r2.clear()
            goto L48
        L6a:
            r2.addLast(r3)
            goto L48
        L6e:
            boolean r10 = r2.isEmpty()
            if (r10 != 0) goto L7d
            java.util.List r2 = (java.util.List) r2
            com.bytedance.adsdk.Qhi.cJ.cJ.Qhi r7 = com.bytedance.adsdk.Qhi.cJ.fl.cJ.Qhi(r2, r7, r8)
            r1.add(r7)
        L7d:
            int r7 = r1.size()
            com.bytedance.adsdk.Qhi.cJ.cJ.Qhi[] r7 = new com.bytedance.adsdk.Qhi.cJ.cJ.Qhi[r7]
            java.lang.Object[] r7 = r1.toArray(r7)
            com.bytedance.adsdk.Qhi.cJ.cJ.Qhi[] r7 = (com.bytedance.adsdk.Qhi.cJ.cJ.Qhi[]) r7
            r0.Qhi(r7)
            int r8 = r8 + 1
            r9.push(r0)
            goto L9e
        L92:
            r0 = r10
            java.util.LinkedList r0 = (java.util.LinkedList) r0
            com.bytedance.adsdk.Qhi.cJ.cJ.Qhi r7 = com.bytedance.adsdk.Qhi.cJ.fl.cJ.Qhi(r10, r7, r8)
            r9.push(r7)
            int r8 = r8 + 1
        L9e:
            return r8
        L9f:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            r10 = 0
            java.lang.String r7 = r7.substring(r10, r8)
            r9.<init>(r7)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.Qhi.cJ.ac.Qhi.WAv.Qhi(java.lang.String, int, java.util.Deque, com.bytedance.adsdk.Qhi.cJ.ac.Qhi):int");
    }
}
