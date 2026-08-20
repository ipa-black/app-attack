package com.appodeal.ads.inapp;

import com.applovin.sdk.AppLovinEventParameters;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0002\b\u0016\u0018\u0000 %2\u00020\u0001:\u0003$%&B\u0089\u0001\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0014\b\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0011¢\u0006\u0002\u0010\u0012J\b\u0010#\u001a\u00020\u0005H\u0016R\u001d\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0016R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0016R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0016R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0016R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0013\u0010\r\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0016R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0016R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"¨\u0006'"}, d2 = {"Lcom/appodeal/ads/inapp/InAppPurchase;", "", SessionDescription.ATTR_TYPE, "Lcom/appodeal/ads/inapp/InAppPurchase$Type;", "publicKey", "", InAppPurchaseMetaData.KEY_SIGNATURE, "purchaseData", "developerPayload", "price", "currency", AppLovinEventParameters.PRODUCT_IDENTIFIER, "orderId", "purchaseToken", "purchaseTimestamp", "", "additionalParameters", "", "(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V", "getAdditionalParameters", "()Ljava/util/Map;", "getCurrency", "()Ljava/lang/String;", "getDeveloperPayload", "getOrderId", "getPrice", "getPublicKey", "getPurchaseData", "getPurchaseTimestamp", "()J", "getPurchaseToken", "getSignature", "getSku", "getType", "()Lcom/appodeal/ads/inapp/InAppPurchase$Type;", "toString", "Builder", "Companion", "Type", "apd_public"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class InAppPurchase {
    public static final Companion Companion = new Companion(null);
    private final Map<String, String> additionalParameters;
    private final String currency;
    private final String developerPayload;
    private final String orderId;
    private final String price;
    private final String publicKey;
    private final String purchaseData;
    private final long purchaseTimestamp;
    private final String purchaseToken;
    private final String signature;
    private final String sku;
    private final Type type;

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0002\b\"\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u00020\u0001B\u009b\u0001\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0014\b\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0011¢\u0006\u0002\u0010\u0012J\u0006\u00103\u001a\u000204J\u001a\u00105\u001a\u00020\u00002\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0011J\u0010\u00106\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u00107\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\u0010\u00108\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0005J\u0010\u00109\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010:\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010;\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u000e\u0010<\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010=\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010>\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010?\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005R&\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0018\"\u0004\b\u001c\u0010\u001aR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0018\"\u0004\b\u001e\u0010\u001aR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0018\"\u0004\b \u0010\u001aR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u0018\"\u0004\b\"\u0010\u001aR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0018\"\u0004\b$\u0010\u001aR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u0018\"\u0004\b*\u0010\u001aR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0018\"\u0004\b,\u0010\u001aR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010\u0018\"\u0004\b.\u0010\u001aR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102¨\u0006@"}, d2 = {"Lcom/appodeal/ads/inapp/InAppPurchase$Builder;", "", SessionDescription.ATTR_TYPE, "Lcom/appodeal/ads/inapp/InAppPurchase$Type;", "publicKey", "", InAppPurchaseMetaData.KEY_SIGNATURE, "purchaseData", "developerPayload", "price", "currency", AppLovinEventParameters.PRODUCT_IDENTIFIER, "orderId", "purchaseToken", "purchaseTimestamp", "", "additionalParameters", "", "(Lcom/appodeal/ads/inapp/InAppPurchase$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V", "getAdditionalParameters", "()Ljava/util/Map;", "setAdditionalParameters", "(Ljava/util/Map;)V", "getCurrency", "()Ljava/lang/String;", "setCurrency", "(Ljava/lang/String;)V", "getDeveloperPayload", "setDeveloperPayload", "getOrderId", "setOrderId", "getPrice", "setPrice", "getPublicKey", "setPublicKey", "getPurchaseData", "setPurchaseData", "getPurchaseTimestamp", "()J", "setPurchaseTimestamp", "(J)V", "getPurchaseToken", "setPurchaseToken", "getSignature", "setSignature", "getSku", "setSku", "getType", "()Lcom/appodeal/ads/inapp/InAppPurchase$Type;", "setType", "(Lcom/appodeal/ads/inapp/InAppPurchase$Type;)V", "build", "Lcom/appodeal/ads/inapp/InAppPurchase;", "withAdditionalParams", "withCurrency", "withDeveloperPayload", "withOrderId", "withPrice", "withPublicKey", "withPurchaseData", "withPurchaseTimestamp", "withPurchaseToken", "withSignature", "withSku", "apd_public"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Builder {
        private Map<String, String> additionalParameters;
        private String currency;
        private String developerPayload;
        private String orderId;
        private String price;
        private String publicKey;
        private String purchaseData;
        private long purchaseTimestamp;
        private String purchaseToken;
        private String signature;
        private String sku;
        private Type type;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(Type type) {
            this(type, null, null, null, null, null, null, null, null, null, 0L, null, 4094, null);
            Intrinsics.checkNotNullParameter(type, "type");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(Type type, String str) {
            this(type, str, null, null, null, null, null, null, null, null, 0L, null, 4092, null);
            Intrinsics.checkNotNullParameter(type, "type");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(Type type, String str, String str2) {
            this(type, str, str2, null, null, null, null, null, null, null, 0L, null, 4088, null);
            Intrinsics.checkNotNullParameter(type, "type");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(Type type, String str, String str2, String str3) {
            this(type, str, str2, str3, null, null, null, null, null, null, 0L, null, 4080, null);
            Intrinsics.checkNotNullParameter(type, "type");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(Type type, String str, String str2, String str3, String str4) {
            this(type, str, str2, str3, str4, null, null, null, null, null, 0L, null, 4064, null);
            Intrinsics.checkNotNullParameter(type, "type");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(Type type, String str, String str2, String str3, String str4, String str5) {
            this(type, str, str2, str3, str4, str5, null, null, null, null, 0L, null, 4032, null);
            Intrinsics.checkNotNullParameter(type, "type");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(Type type, String str, String str2, String str3, String str4, String str5, String str6) {
            this(type, str, str2, str3, str4, str5, str6, null, null, null, 0L, null, 3968, null);
            Intrinsics.checkNotNullParameter(type, "type");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(Type type, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
            this(type, str, str2, str3, str4, str5, str6, str7, null, null, 0L, null, 3840, null);
            Intrinsics.checkNotNullParameter(type, "type");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(Type type, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
            this(type, str, str2, str3, str4, str5, str6, str7, str8, null, 0L, null, 3584, null);
            Intrinsics.checkNotNullParameter(type, "type");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(Type type, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            this(type, str, str2, str3, str4, str5, str6, str7, str8, str9, 0L, null, 3072, null);
            Intrinsics.checkNotNullParameter(type, "type");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(Type type, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, long j) {
            this(type, str, str2, str3, str4, str5, str6, str7, str8, str9, j, null, 2048, null);
            Intrinsics.checkNotNullParameter(type, "type");
        }

        public Builder(Type type, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, long j, Map<String, String> additionalParameters) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(additionalParameters, "additionalParameters");
            this.type = type;
            this.publicKey = str;
            this.signature = str2;
            this.purchaseData = str3;
            this.developerPayload = str4;
            this.price = str5;
            this.currency = str6;
            this.sku = str7;
            this.orderId = str8;
            this.purchaseToken = str9;
            this.purchaseTimestamp = j;
            this.additionalParameters = additionalParameters;
        }

        public /* synthetic */ Builder(Type type, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, long j, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(type, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : str5, (i & 64) != 0 ? null : str6, (i & 128) != 0 ? null : str7, (i & 256) != 0 ? null : str8, (i & 512) == 0 ? str9 : null, (i & 1024) != 0 ? 0L : j, (i & 2048) != 0 ? MapsKt.emptyMap() : map);
        }

        public final InAppPurchase build() {
            return new InAppPurchase(this.type, this.publicKey, this.signature, this.purchaseData, this.developerPayload, this.price, this.currency, this.sku, this.orderId, this.purchaseToken, this.purchaseTimestamp, this.additionalParameters, null);
        }

        public final Map<String, String> getAdditionalParameters() {
            return this.additionalParameters;
        }

        public final String getCurrency() {
            return this.currency;
        }

        public final String getDeveloperPayload() {
            return this.developerPayload;
        }

        public final String getOrderId() {
            return this.orderId;
        }

        public final String getPrice() {
            return this.price;
        }

        public final String getPublicKey() {
            return this.publicKey;
        }

        public final String getPurchaseData() {
            return this.purchaseData;
        }

        public final long getPurchaseTimestamp() {
            return this.purchaseTimestamp;
        }

        public final String getPurchaseToken() {
            return this.purchaseToken;
        }

        public final String getSignature() {
            return this.signature;
        }

        public final String getSku() {
            return this.sku;
        }

        public final Type getType() {
            return this.type;
        }

        public final void setAdditionalParameters(Map<String, String> map) {
            Intrinsics.checkNotNullParameter(map, "<set-?>");
            this.additionalParameters = map;
        }

        public final void setCurrency(String str) {
            this.currency = str;
        }

        public final void setDeveloperPayload(String str) {
            this.developerPayload = str;
        }

        public final void setOrderId(String str) {
            this.orderId = str;
        }

        public final void setPrice(String str) {
            this.price = str;
        }

        public final void setPublicKey(String str) {
            this.publicKey = str;
        }

        public final void setPurchaseData(String str) {
            this.purchaseData = str;
        }

        public final void setPurchaseTimestamp(long j) {
            this.purchaseTimestamp = j;
        }

        public final void setPurchaseToken(String str) {
            this.purchaseToken = str;
        }

        public final void setSignature(String str) {
            this.signature = str;
        }

        public final void setSku(String str) {
            this.sku = str;
        }

        public final void setType(Type type) {
            Intrinsics.checkNotNullParameter(type, "<set-?>");
            this.type = type;
        }

        public final Builder withAdditionalParams(Map<String, String> additionalParameters) {
            Intrinsics.checkNotNullParameter(additionalParameters, "additionalParameters");
            setAdditionalParameters(additionalParameters);
            return this;
        }

        public final Builder withCurrency(String str) {
            setCurrency(str);
            return this;
        }

        public final Builder withDeveloperPayload(String str) {
            setDeveloperPayload(str);
            return this;
        }

        public final Builder withOrderId(String str) {
            setOrderId(str);
            return this;
        }

        public final Builder withPrice(String str) {
            setPrice(str);
            return this;
        }

        public final Builder withPublicKey(String str) {
            setPublicKey(str);
            return this;
        }

        public final Builder withPurchaseData(String str) {
            setPurchaseData(str);
            return this;
        }

        public final Builder withPurchaseTimestamp(long j) {
            setPurchaseTimestamp(j);
            return this;
        }

        public final Builder withPurchaseToken(String str) {
            setPurchaseToken(str);
            return this;
        }

        public final Builder withSignature(String str) {
            setSignature(str);
            return this;
        }

        public final Builder withSku(String str) {
            setSku(str);
            return this;
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\b\u0010\u0007\u001a\u00020\u0004H\u0007J\b\u0010\b\u001a\u00020\u0004H\u0007¨\u0006\t"}, d2 = {"Lcom/appodeal/ads/inapp/InAppPurchase$Companion;", "", "()V", "newBuilder", "Lcom/appodeal/ads/inapp/InAppPurchase$Builder;", SessionDescription.ATTR_TYPE, "Lcom/appodeal/ads/inapp/InAppPurchase$Type;", "newInAppBuilder", "newSubscriptionBuilder", "apd_public"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final Builder newBuilder(Type type) {
            Intrinsics.checkNotNullParameter(type, "type");
            return new Builder(type, null, null, null, null, null, null, null, null, null, 0L, null, 4094, null);
        }

        @JvmStatic
        public final Builder newInAppBuilder() {
            return newBuilder(Type.InApp);
        }

        @JvmStatic
        public final Builder newSubscriptionBuilder() {
            return newBuilder(Type.Subs);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/appodeal/ads/inapp/InAppPurchase$Type;", "", "(Ljava/lang/String;I)V", "InApp", "Subs", "apd_public"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public enum Type {
        InApp,
        Subs
    }

    private InAppPurchase(Type type, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, long j, Map<String, String> map) {
        this.type = type;
        this.publicKey = str;
        this.signature = str2;
        this.purchaseData = str3;
        this.developerPayload = str4;
        this.price = str5;
        this.currency = str6;
        this.sku = str7;
        this.orderId = str8;
        this.purchaseToken = str9;
        this.purchaseTimestamp = j;
        this.additionalParameters = map;
    }

    public /* synthetic */ InAppPurchase(Type type, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, long j, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(type, str, str2, str3, str4, str5, str6, str7, str8, str9, (i & 1024) != 0 ? 0L : j, (i & 2048) != 0 ? MapsKt.emptyMap() : map);
    }

    public /* synthetic */ InAppPurchase(Type type, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, long j, Map map, DefaultConstructorMarker defaultConstructorMarker) {
        this(type, str, str2, str3, str4, str5, str6, str7, str8, str9, j, map);
    }

    @JvmStatic
    public static final Builder newBuilder(Type type) {
        return Companion.newBuilder(type);
    }

    @JvmStatic
    public static final Builder newInAppBuilder() {
        return Companion.newInAppBuilder();
    }

    @JvmStatic
    public static final Builder newSubscriptionBuilder() {
        return Companion.newSubscriptionBuilder();
    }

    public final Map<String, String> getAdditionalParameters() {
        return this.additionalParameters;
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final String getDeveloperPayload() {
        return this.developerPayload;
    }

    public final String getOrderId() {
        return this.orderId;
    }

    public final String getPrice() {
        return this.price;
    }

    public final String getPublicKey() {
        return this.publicKey;
    }

    public final String getPurchaseData() {
        return this.purchaseData;
    }

    public final long getPurchaseTimestamp() {
        return this.purchaseTimestamp;
    }

    public final String getPurchaseToken() {
        return this.purchaseToken;
    }

    public final String getSignature() {
        return this.signature;
    }

    public final String getSku() {
        return this.sku;
    }

    public final Type getType() {
        return this.type;
    }

    public String toString() {
        return "price='" + ((Object) this.price) + "', currency='" + ((Object) this.currency) + '\'';
    }
}
