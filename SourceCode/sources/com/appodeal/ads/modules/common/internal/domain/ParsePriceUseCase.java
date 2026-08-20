package com.appodeal.ads.modules.common.internal.domain;

import kotlin.Metadata;
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\b\u0010\tJ&\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0086\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcom/appodeal/ads/modules/common/internal/domain/ParsePriceUseCase;", "", "", "price", "currency", "", "invoke", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;", "<init>", "()V", "apd_internal"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes2.dex */
public final class ParsePriceUseCase {
    /* JADX WARN: Removed duplicated region for block: B:32:0x0084 A[Catch: all -> 0x008d, TryCatch #0 {all -> 0x008d, blocks: (B:6:0x0006, B:9:0x000e, B:16:0x003c, B:19:0x0049, B:27:0x005e, B:30:0x0068, B:32:0x0084, B:22:0x0051, B:29:0x0065, B:26:0x005b, B:28:0x0062, B:36:0x008f), top: B:41:0x0006 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Double invoke(java.lang.String r9, java.lang.String r10) {
        /*
            r8 = this;
            if (r9 != 0) goto L4
            r9 = 0
            return r9
        L4:
            if (r10 == 0) goto L8f
            int r0 = r10.length()     // Catch: java.lang.Throwable -> L8d
            if (r0 != 0) goto Le
            goto L8f
        Le:
            java.text.DecimalFormat r0 = new java.text.DecimalFormat     // Catch: java.lang.Throwable -> L8d
            r0.<init>()     // Catch: java.lang.Throwable -> L8d
            java.util.Currency r10 = java.util.Currency.getInstance(r10)     // Catch: java.lang.Throwable -> L8d
            r0.setCurrency(r10)     // Catch: java.lang.Throwable -> L8d
            r5 = 6
            r6 = 0
            r2 = 46
            r3 = 0
            r4 = 0
            r1 = r9
            int r1 = kotlin.text.StringsKt.indexOf$default(r1, r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L8d
            r6 = 6
            r7 = 0
            r3 = 44
            r4 = 0
            r5 = 0
            r2 = r9
            int r2 = kotlin.text.StringsKt.indexOf$default(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L8d
            r3 = 1
            r4 = 0
            r5 = -1
            if (r1 <= r5) goto L37
            r6 = r3
            goto L38
        L37:
            r6 = r4
        L38:
            if (r2 <= r5) goto L3b
            goto L3c
        L3b:
            r3 = r4
        L3c:
            java.text.DecimalFormatSymbols r4 = new java.text.DecimalFormatSymbols     // Catch: java.lang.Throwable -> L8d
            r4.<init>()     // Catch: java.lang.Throwable -> L8d
            r5 = 44
            r7 = 46
            if (r6 == 0) goto L4d
            if (r3 != 0) goto L4d
            r4.setDecimalSeparator(r7)     // Catch: java.lang.Throwable -> L8d
            goto L5e
        L4d:
            if (r6 != 0) goto L55
            if (r3 == 0) goto L55
            r4.setDecimalSeparator(r5)     // Catch: java.lang.Throwable -> L8d
            goto L65
        L55:
            if (r6 == 0) goto L68
            if (r3 == 0) goto L68
            if (r1 <= r2) goto L62
            r4.setDecimalSeparator(r7)     // Catch: java.lang.Throwable -> L8d
        L5e:
            r4.setGroupingSeparator(r5)     // Catch: java.lang.Throwable -> L8d
            goto L68
        L62:
            r4.setDecimalSeparator(r5)     // Catch: java.lang.Throwable -> L8d
        L65:
            r4.setGroupingSeparator(r7)     // Catch: java.lang.Throwable -> L8d
        L68:
            r0.setDecimalFormatSymbols(r4)     // Catch: java.lang.Throwable -> L8d
            java.lang.String r2 = r10.getSymbol()     // Catch: java.lang.Throwable -> L8d
            java.lang.String r10 = "formatCurrency.symbol"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r10)     // Catch: java.lang.Throwable -> L8d
            java.lang.String r3 = ""
            r5 = 4
            r6 = 0
            r4 = 0
            r1 = r9
            java.lang.String r10 = kotlin.text.StringsKt.replace$default(r1, r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L8d
            java.lang.Number r10 = r0.parse(r10)     // Catch: java.lang.Throwable -> L8d
            if (r10 == 0) goto L97
            double r0 = r10.doubleValue()     // Catch: java.lang.Throwable -> L8d
            java.lang.Double r9 = java.lang.Double.valueOf(r0)     // Catch: java.lang.Throwable -> L8d
            return r9
        L8d:
            r10 = move-exception
            goto L94
        L8f:
            java.lang.Double r9 = kotlin.text.StringsKt.toDoubleOrNull(r9)     // Catch: java.lang.Throwable -> L8d
            return r9
        L94:
            r10.printStackTrace()
        L97:
            java.lang.Double r9 = kotlin.text.StringsKt.toDoubleOrNull(r9)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.modules.common.internal.domain.ParsePriceUseCase.invoke(java.lang.String, java.lang.String):java.lang.Double");
    }
}
