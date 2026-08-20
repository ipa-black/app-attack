package com.appodeal.ads.modules.libs.network.httpclients.ext;
/* loaded from: classes2.dex */
public final class b {
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0149, code lost:
        if (r0 == null) goto L53;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0192 A[Catch: all -> 0x01b9, TryCatch #8 {all -> 0x01b9, blocks: (B:3:0x000a, B:5:0x001a, B:10:0x002d, B:11:0x0039, B:13:0x003f, B:14:0x0064, B:67:0x014f, B:94:0x0186, B:66:0x014c, B:122:0x01b8, B:106:0x019e, B:103:0x0198, B:100:0x0192, B:86:0x0176, B:92:0x0182, B:89:0x017c, B:17:0x006c, B:20:0x007b, B:118:0x01af, B:121:0x01b5, B:9:0x0022), top: B:135:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0198 A[Catch: all -> 0x01b9, TryCatch #8 {all -> 0x01b9, blocks: (B:3:0x000a, B:5:0x001a, B:10:0x002d, B:11:0x0039, B:13:0x003f, B:14:0x0064, B:67:0x014f, B:94:0x0186, B:66:0x014c, B:122:0x01b8, B:106:0x019e, B:103:0x0198, B:100:0x0192, B:86:0x0176, B:92:0x0182, B:89:0x017c, B:17:0x006c, B:20:0x007b, B:118:0x01af, B:121:0x01b5, B:9:0x0022), top: B:135:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x019e A[Catch: all -> 0x01b9, TRY_LEAVE, TryCatch #8 {all -> 0x01b9, blocks: (B:3:0x000a, B:5:0x001a, B:10:0x002d, B:11:0x0039, B:13:0x003f, B:14:0x0064, B:67:0x014f, B:94:0x0186, B:66:0x014c, B:122:0x01b8, B:106:0x019e, B:103:0x0198, B:100:0x0192, B:86:0x0176, B:92:0x0182, B:89:0x017c, B:17:0x006c, B:20:0x007b, B:118:0x01af, B:121:0x01b5, B:9:0x0022), top: B:135:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0176 A[Catch: all -> 0x01b9, TRY_ENTER, TryCatch #8 {all -> 0x01b9, blocks: (B:3:0x000a, B:5:0x001a, B:10:0x002d, B:11:0x0039, B:13:0x003f, B:14:0x0064, B:67:0x014f, B:94:0x0186, B:66:0x014c, B:122:0x01b8, B:106:0x019e, B:103:0x0198, B:100:0x0192, B:86:0x0176, B:92:0x0182, B:89:0x017c, B:17:0x006c, B:20:0x007b, B:118:0x01af, B:121:0x01b5, B:9:0x0022), top: B:135:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x017c A[Catch: all -> 0x01b9, TryCatch #8 {all -> 0x01b9, blocks: (B:3:0x000a, B:5:0x001a, B:10:0x002d, B:11:0x0039, B:13:0x003f, B:14:0x0064, B:67:0x014f, B:94:0x0186, B:66:0x014c, B:122:0x01b8, B:106:0x019e, B:103:0x0198, B:100:0x0192, B:86:0x0176, B:92:0x0182, B:89:0x017c, B:17:0x006c, B:20:0x007b, B:118:0x01af, B:121:0x01b5, B:9:0x0022), top: B:135:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0182 A[Catch: all -> 0x01b9, TryCatch #8 {all -> 0x01b9, blocks: (B:3:0x000a, B:5:0x001a, B:10:0x002d, B:11:0x0039, B:13:0x003f, B:14:0x0064, B:67:0x014f, B:94:0x0186, B:66:0x014c, B:122:0x01b8, B:106:0x019e, B:103:0x0198, B:100:0x0192, B:86:0x0176, B:92:0x0182, B:89:0x017c, B:17:0x006c, B:20:0x007b, B:118:0x01af, B:121:0x01b5, B:9:0x0022), top: B:135:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0191  */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.io.OutputStream, java.io.ByteArrayOutputStream] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.io.OutputStream, java.io.ByteArrayOutputStream] */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.io.OutputStream, java.io.ByteArrayOutputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object a(java.net.URLConnection r13, com.appodeal.ads.modules.libs.network.httpclients.c r14) {
        /*
            Method dump skipped, instructions count: 453
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.modules.libs.network.httpclients.ext.b.a(java.net.URLConnection, com.appodeal.ads.modules.libs.network.httpclients.c):java.lang.Object");
    }
}
