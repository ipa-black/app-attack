package com.yandex.metrica.impl.ob;

import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchaseHistoryRecord;
import com.android.billingclient.api.SkuDetails;
import com.applovin.impl.sdk.utils.JsonUtils;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.yandex.metrica.impl.ob.e  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1497e {

    /* renamed from: a  reason: collision with root package name */
    public static final C1497e f14629a = new C1497e();

    private C1497e() {
    }

    private final int b(SkuDetails skuDetails) {
        String freeTrialPeriod = skuDetails.getFreeTrialPeriod();
        Intrinsics.checkNotNullExpressionValue(freeTrialPeriod, "skuDetails.freeTrialPeriod");
        if (freeTrialPeriod.length() == 0) {
            return skuDetails.getIntroductoryPriceCycles();
        }
        return 1;
    }

    private final com.yandex.metrica.billing_interface.c c(SkuDetails skuDetails) {
        String freeTrialPeriod = skuDetails.getFreeTrialPeriod();
        Intrinsics.checkNotNullExpressionValue(freeTrialPeriod, "skuDetails.freeTrialPeriod");
        if (freeTrialPeriod.length() == 0) {
            return com.yandex.metrica.billing_interface.c.a(skuDetails.getIntroductoryPricePeriod());
        }
        return com.yandex.metrica.billing_interface.c.a(skuDetails.getFreeTrialPeriod());
    }

    public final com.yandex.metrica.billing_interface.d a(PurchaseHistoryRecord purchasesHistoryRecord, SkuDetails skuDetails, Purchase purchase) {
        com.yandex.metrica.billing_interface.e eVar;
        String str;
        Intrinsics.checkNotNullParameter(purchasesHistoryRecord, "purchasesHistoryRecord");
        Intrinsics.checkNotNullParameter(skuDetails, "skuDetails");
        String type = skuDetails.getType();
        Intrinsics.checkNotNullExpressionValue(type, "skuDetails.type");
        Intrinsics.checkNotNullParameter(type, "type");
        int hashCode = type.hashCode();
        if (hashCode != 3541555) {
            if (hashCode == 100343516 && type.equals("inapp")) {
                eVar = com.yandex.metrica.billing_interface.e.INAPP;
            }
            eVar = com.yandex.metrica.billing_interface.e.UNKNOWN;
        } else {
            if (type.equals("subs")) {
                eVar = com.yandex.metrica.billing_interface.e.SUBS;
            }
            eVar = com.yandex.metrica.billing_interface.e.UNKNOWN;
        }
        String sku = skuDetails.getSku();
        int quantity = purchasesHistoryRecord.getQuantity();
        long priceAmountMicros = skuDetails.getPriceAmountMicros();
        String priceCurrencyCode = skuDetails.getPriceCurrencyCode();
        long a2 = a(skuDetails);
        com.yandex.metrica.billing_interface.c c2 = c(skuDetails);
        int b2 = b(skuDetails);
        com.yandex.metrica.billing_interface.c a3 = com.yandex.metrica.billing_interface.c.a(skuDetails.getSubscriptionPeriod());
        String signature = purchasesHistoryRecord.getSignature();
        String purchaseToken = purchasesHistoryRecord.getPurchaseToken();
        long purchaseTime = purchasesHistoryRecord.getPurchaseTime();
        boolean isAutoRenewing = purchase != null ? purchase.isAutoRenewing() : false;
        if (purchase == null || (str = purchase.getOriginalJson()) == null) {
            str = JsonUtils.EMPTY_JSON;
        }
        return new com.yandex.metrica.billing_interface.d(eVar, sku, quantity, priceAmountMicros, priceCurrencyCode, a2, c2, b2, a3, signature, purchaseToken, purchaseTime, isAutoRenewing, str);
    }

    private final long a(SkuDetails skuDetails) {
        String freeTrialPeriod = skuDetails.getFreeTrialPeriod();
        Intrinsics.checkNotNullExpressionValue(freeTrialPeriod, "skuDetails.freeTrialPeriod");
        if (freeTrialPeriod.length() == 0) {
            return skuDetails.getIntroductoryPriceAmountMicros();
        }
        return 0L;
    }
}
