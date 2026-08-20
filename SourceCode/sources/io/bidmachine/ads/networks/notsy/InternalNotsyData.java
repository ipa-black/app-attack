package io.bidmachine.ads.networks.notsy;

import android.text.TextUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class InternalNotsyData {
    private final String adUnitId;
    private final float price;
    private final float score;

    /* JADX INFO: Access modifiers changed from: package-private */
    public InternalNotsyData(String str, float f2, float f3) {
        this.adUnitId = str;
        this.score = f2;
        this.price = f3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getAdUnitId() {
        return this.adUnitId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getScore() {
        return this.score;
    }

    float getPrice() {
        return this.price;
    }

    public String toString() {
        return String.format("InternalNotsyData(adUnitId - %s, score - %s, price - %s)", this.adUnitId, Float.valueOf(this.score), Float.valueOf(this.price));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        InternalNotsyData internalNotsyData = (InternalNotsyData) obj;
        return this.adUnitId.equals(internalNotsyData.adUnitId) && Float.compare(internalNotsyData.score, this.score) == 0 && Float.compare(internalNotsyData.price, this.price) == 0;
    }

    public int hashCode() {
        return (((this.adUnitId.hashCode() * 31) + Float.floatToIntBits(this.score)) * 31) + Float.floatToIntBits(this.price);
    }

    /* loaded from: classes5.dex */
    static class Factory {
        static final /* synthetic */ boolean $assertionsDisabled = false;

        Factory() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static InternalNotsyData create(Map<String, String> map) {
            if (map == null || map.isEmpty()) {
                return null;
            }
            String str = map.get("ad_unit_id");
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            String str2 = map.get(FirebaseAnalytics.Param.SCORE);
            if (TextUtils.isEmpty(str2)) {
                return null;
            }
            String str3 = map.get("price");
            if (TextUtils.isEmpty(str3)) {
                return null;
            }
            return create(str, str2, str3);
        }

        static InternalNotsyData create(String str, String str2, String str3) {
            return new InternalNotsyData(str, Float.parseFloat(str2), Float.parseFloat(str3));
        }
    }
}
