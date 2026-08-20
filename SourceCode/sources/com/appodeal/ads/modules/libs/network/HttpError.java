package com.appodeal.ads.modules.libs.network;

import com.google.firebase.messaging.Constants;
import com.onesignal.NotificationBundleProcessor;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
@Metadata(bv = {}, d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0010\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001dR\u0014\u0010\u0005\u001a\u00020\u00028&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00068&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f\u0082\u0001\u0010\u001e\u001f !\"#$%&'()*+,-¨\u0006."}, d2 = {"Lcom/appodeal/ads/modules/libs/network/HttpError;", "", "", "getDescription", "()Ljava/lang/String;", "description", "", "getRawResponse", "()[B", "rawResponse", "", "getCode", "()I", "code", "AdTypeNotSupportedInAdapter", "AdapterNotFound", "Canceled", "ConnectionError", "IncorrectAdUnit", "IncorrectCreative", "InternalError", "InvalidAssets", "NoFill", "RequestError", "RequestVerificationFailed", "SdkVersionNotSupported", "ServerError", "ShowFailed", "TimeoutError", "UncaughtException", "Lcom/appodeal/ads/modules/libs/network/HttpError$NoFill;", "Lcom/appodeal/ads/modules/libs/network/HttpError$InternalError;", "Lcom/appodeal/ads/modules/libs/network/HttpError$TimeoutError;", "Lcom/appodeal/ads/modules/libs/network/HttpError$ConnectionError;", "Lcom/appodeal/ads/modules/libs/network/HttpError$RequestError;", "Lcom/appodeal/ads/modules/libs/network/HttpError$ServerError;", "Lcom/appodeal/ads/modules/libs/network/HttpError$RequestVerificationFailed;", "Lcom/appodeal/ads/modules/libs/network/HttpError$SdkVersionNotSupported;", "Lcom/appodeal/ads/modules/libs/network/HttpError$InvalidAssets;", "Lcom/appodeal/ads/modules/libs/network/HttpError$AdapterNotFound;", "Lcom/appodeal/ads/modules/libs/network/HttpError$AdTypeNotSupportedInAdapter;", "Lcom/appodeal/ads/modules/libs/network/HttpError$Canceled;", "Lcom/appodeal/ads/modules/libs/network/HttpError$IncorrectAdUnit;", "Lcom/appodeal/ads/modules/libs/network/HttpError$IncorrectCreative;", "Lcom/appodeal/ads/modules/libs/network/HttpError$ShowFailed;", "Lcom/appodeal/ads/modules/libs/network/HttpError$UncaughtException;", "apd_network"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes2.dex */
public abstract class HttpError extends Throwable {

    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\r\u001a\u00020\b8\u0016X\u0096D¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\u0013\u001a\u00020\u000e8\u0016X\u0096D¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/appodeal/ads/modules/libs/network/HttpError$AdTypeNotSupportedInAdapter;", "Lcom/appodeal/ads/modules/libs/network/HttpError;", "", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "[B", "getRawResponse", "()[B", "rawResponse", "", "b", "Ljava/lang/String;", "getDescription", "()Ljava/lang/String;", "description", "", "c", "I", "getCode", "()I", "code", "<init>", "([B)V", "apd_network"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class AdTypeNotSupportedInAdapter extends HttpError {

        /* renamed from: a  reason: collision with root package name */
        public final byte[] f6979a;

        /* renamed from: b  reason: collision with root package name */
        public final String f6980b;

        /* renamed from: c  reason: collision with root package name */
        public final int f6981c;

        public AdTypeNotSupportedInAdapter(byte[] bArr) {
            super(null);
            this.f6979a = bArr;
            this.f6980b = "ad type not supported in adapter";
            this.f6981c = 9;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public int getCode() {
            return this.f6981c;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public String getDescription() {
            return this.f6980b;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public byte[] getRawResponse() {
            return this.f6979a;
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\r\u001a\u00020\b8\u0016X\u0096D¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\u0013\u001a\u00020\u000e8\u0016X\u0096D¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/appodeal/ads/modules/libs/network/HttpError$AdapterNotFound;", "Lcom/appodeal/ads/modules/libs/network/HttpError;", "", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "[B", "getRawResponse", "()[B", "rawResponse", "", "b", "Ljava/lang/String;", "getDescription", "()Ljava/lang/String;", "description", "", "c", "I", "getCode", "()I", "code", "<init>", "([B)V", "apd_network"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class AdapterNotFound extends HttpError {

        /* renamed from: a  reason: collision with root package name */
        public final byte[] f6982a;

        /* renamed from: b  reason: collision with root package name */
        public final String f6983b;

        /* renamed from: c  reason: collision with root package name */
        public final int f6984c;

        public AdapterNotFound(byte[] bArr) {
            super(null);
            this.f6982a = bArr;
            this.f6983b = "adapter not found";
            this.f6984c = 8;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public int getCode() {
            return this.f6984c;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public String getDescription() {
            return this.f6983b;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public byte[] getRawResponse() {
            return this.f6982a;
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\r\u001a\u00020\b8\u0016X\u0096D¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\u0013\u001a\u00020\u000e8\u0016X\u0096D¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/appodeal/ads/modules/libs/network/HttpError$Canceled;", "Lcom/appodeal/ads/modules/libs/network/HttpError;", "", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "[B", "getRawResponse", "()[B", "rawResponse", "", "b", "Ljava/lang/String;", "getDescription", "()Ljava/lang/String;", "description", "", "c", "I", "getCode", "()I", "code", "<init>", "([B)V", "apd_network"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class Canceled extends HttpError {

        /* renamed from: a  reason: collision with root package name */
        public final byte[] f6985a;

        /* renamed from: b  reason: collision with root package name */
        public final String f6986b;

        /* renamed from: c  reason: collision with root package name */
        public final int f6987c;

        public Canceled(byte[] bArr) {
            super(null);
            this.f6985a = bArr;
            this.f6986b = "ad request canceled";
            this.f6987c = 2;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public int getCode() {
            return this.f6987c;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public String getDescription() {
            return this.f6986b;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public byte[] getRawResponse() {
            return this.f6985a;
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\r\u001a\u00020\b8\u0016X\u0096D¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\u0013\u001a\u00020\u000e8\u0016X\u0096D¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/appodeal/ads/modules/libs/network/HttpError$ConnectionError;", "Lcom/appodeal/ads/modules/libs/network/HttpError;", "", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "[B", "getRawResponse", "()[B", "rawResponse", "", "b", "Ljava/lang/String;", "getDescription", "()Ljava/lang/String;", "description", "", "c", "I", "getCode", "()I", "code", "<init>", "([B)V", "apd_network"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class ConnectionError extends HttpError {

        /* renamed from: a  reason: collision with root package name */
        public final byte[] f6988a;

        /* renamed from: b  reason: collision with root package name */
        public final String f6989b;

        /* renamed from: c  reason: collision with root package name */
        public final int f6990c;

        public ConnectionError(byte[] bArr) {
            super(null);
            this.f6988a = bArr;
            this.f6989b = "connection error";
            this.f6990c = 4;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public int getCode() {
            return this.f6990c;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public String getDescription() {
            return this.f6989b;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public byte[] getRawResponse() {
            return this.f6988a;
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\r\u001a\u00020\b8\u0016X\u0096D¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\u0013\u001a\u00020\u000e8\u0016X\u0096D¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/appodeal/ads/modules/libs/network/HttpError$IncorrectAdUnit;", "Lcom/appodeal/ads/modules/libs/network/HttpError;", "", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "[B", "getRawResponse", "()[B", "rawResponse", "", "b", "Ljava/lang/String;", "getDescription", "()Ljava/lang/String;", "description", "", "c", "I", "getCode", "()I", "code", "<init>", "([B)V", "apd_network"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class IncorrectAdUnit extends HttpError {

        /* renamed from: a  reason: collision with root package name */
        public final byte[] f6991a;

        /* renamed from: b  reason: collision with root package name */
        public final String f6992b;

        /* renamed from: c  reason: collision with root package name */
        public final int f6993c;

        public IncorrectAdUnit(byte[] bArr) {
            super(null);
            this.f6991a = bArr;
            this.f6992b = "incorrect adunit";
            this.f6993c = 2;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public int getCode() {
            return this.f6993c;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public String getDescription() {
            return this.f6992b;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public byte[] getRawResponse() {
            return this.f6991a;
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\r\u001a\u00020\b8\u0016X\u0096D¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\u0013\u001a\u00020\u000e8\u0016X\u0096D¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/appodeal/ads/modules/libs/network/HttpError$IncorrectCreative;", "Lcom/appodeal/ads/modules/libs/network/HttpError;", "", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "[B", "getRawResponse", "()[B", "rawResponse", "", "b", "Ljava/lang/String;", "getDescription", "()Ljava/lang/String;", "description", "", "c", "I", "getCode", "()I", "code", "<init>", "([B)V", "apd_network"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class IncorrectCreative extends HttpError {

        /* renamed from: a  reason: collision with root package name */
        public final byte[] f6994a;

        /* renamed from: b  reason: collision with root package name */
        public final String f6995b;

        /* renamed from: c  reason: collision with root package name */
        public final int f6996c;

        public IncorrectCreative(byte[] bArr) {
            super(null);
            this.f6994a = bArr;
            this.f6995b = "incorrect creative";
            this.f6996c = 4;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public int getCode() {
            return this.f6996c;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public String getDescription() {
            return this.f6995b;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public byte[] getRawResponse() {
            return this.f6994a;
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001R\u001a\u0010\u0007\u001a\u00020\u00028\u0016X\u0096D¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\r\u001a\u00020\b8\u0016X\u0096D¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/appodeal/ads/modules/libs/network/HttpError$InternalError;", "Lcom/appodeal/ads/modules/libs/network/HttpError;", "", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "Ljava/lang/String;", "getDescription", "()Ljava/lang/String;", "description", "", "b", "I", "getCode", "()I", "code", "", "rawResponse", "[B", "getRawResponse", "()[B", "apd_network"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class InternalError extends HttpError {
        public static final InternalError INSTANCE = new InternalError();

        /* renamed from: a  reason: collision with root package name */
        public static final String f6997a = "internal error";

        /* renamed from: b  reason: collision with root package name */
        public static final int f6998b = 4;

        public InternalError() {
            super(null);
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public int getCode() {
            return f6998b;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public String getDescription() {
            return f6997a;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public byte[] getRawResponse() {
            return null;
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\r\u001a\u00020\b8\u0016X\u0096D¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\u0013\u001a\u00020\u000e8\u0016X\u0096D¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/appodeal/ads/modules/libs/network/HttpError$InvalidAssets;", "Lcom/appodeal/ads/modules/libs/network/HttpError;", "", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "[B", "getRawResponse", "()[B", "rawResponse", "", "b", "Ljava/lang/String;", "getDescription", "()Ljava/lang/String;", "description", "", "c", "I", "getCode", "()I", "code", "<init>", "([B)V", "apd_network"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class InvalidAssets extends HttpError {

        /* renamed from: a  reason: collision with root package name */
        public final byte[] f6999a;

        /* renamed from: b  reason: collision with root package name */
        public final String f7000b;

        /* renamed from: c  reason: collision with root package name */
        public final int f7001c;

        public InvalidAssets(byte[] bArr) {
            super(null);
            this.f6999a = bArr;
            this.f7000b = "invalid assets";
            this.f7001c = 7;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public int getCode() {
            return this.f7001c;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public String getDescription() {
            return this.f7000b;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public byte[] getRawResponse() {
            return this.f6999a;
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001R\u001a\u0010\u0007\u001a\u00020\u00028\u0016X\u0096D¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\r\u001a\u00020\b8\u0016X\u0096D¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/appodeal/ads/modules/libs/network/HttpError$NoFill;", "Lcom/appodeal/ads/modules/libs/network/HttpError;", "", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "Ljava/lang/String;", "getDescription", "()Ljava/lang/String;", "description", "", "b", "I", "getCode", "()I", "code", "", "rawResponse", "[B", "getRawResponse", "()[B", "apd_network"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class NoFill extends HttpError {
        public static final NoFill INSTANCE = new NoFill();

        /* renamed from: a  reason: collision with root package name */
        public static final String f7002a = "no fill";

        /* renamed from: b  reason: collision with root package name */
        public static final int f7003b = 2;

        public NoFill() {
            super(null);
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public int getCode() {
            return f7003b;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public String getDescription() {
            return f7002a;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public byte[] getRawResponse() {
            return null;
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001R\u001a\u0010\u0007\u001a\u00020\u00028\u0016X\u0096D¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\r\u001a\u00020\b8\u0016X\u0096D¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/appodeal/ads/modules/libs/network/HttpError$RequestError;", "Lcom/appodeal/ads/modules/libs/network/HttpError;", "", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "Ljava/lang/String;", "getDescription", "()Ljava/lang/String;", "description", "", "b", "I", "getCode", "()I", "code", "", "rawResponse", "[B", "getRawResponse", "()[B", "apd_network"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class RequestError extends HttpError {
        public static final RequestError INSTANCE = new RequestError();

        /* renamed from: a  reason: collision with root package name */
        public static final String f7004a = "request error";

        /* renamed from: b  reason: collision with root package name */
        public static final int f7005b = 4;

        public RequestError() {
            super(null);
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public int getCode() {
            return f7005b;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public String getDescription() {
            return f7004a;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public byte[] getRawResponse() {
            return null;
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\r\u001a\u00020\b8\u0016X\u0096D¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\u0013\u001a\u00020\u000e8\u0016X\u0096D¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/appodeal/ads/modules/libs/network/HttpError$RequestVerificationFailed;", "Lcom/appodeal/ads/modules/libs/network/HttpError;", "", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "[B", "getRawResponse", "()[B", "rawResponse", "", "b", "Ljava/lang/String;", "getDescription", "()Ljava/lang/String;", "description", "", "c", "I", "getCode", "()I", "code", "<init>", "([B)V", "apd_network"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class RequestVerificationFailed extends HttpError {

        /* renamed from: a  reason: collision with root package name */
        public final byte[] f7006a;

        /* renamed from: b  reason: collision with root package name */
        public final String f7007b;

        /* renamed from: c  reason: collision with root package name */
        public final int f7008c;

        public RequestVerificationFailed(byte[] bArr) {
            super(null);
            this.f7006a = bArr;
            this.f7007b = "request verification failed";
            this.f7008c = 4;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public int getCode() {
            return this.f7008c;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public String getDescription() {
            return this.f7007b;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public byte[] getRawResponse() {
            return this.f7006a;
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\r\u001a\u00020\b8\u0016X\u0096D¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\u0013\u001a\u00020\u000e8\u0016X\u0096D¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/appodeal/ads/modules/libs/network/HttpError$SdkVersionNotSupported;", "Lcom/appodeal/ads/modules/libs/network/HttpError;", "", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "[B", "getRawResponse", "()[B", "rawResponse", "", "b", "Ljava/lang/String;", "getDescription", "()Ljava/lang/String;", "description", "", "c", "I", "getCode", "()I", "code", "<init>", "([B)V", "apd_network"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class SdkVersionNotSupported extends HttpError {

        /* renamed from: a  reason: collision with root package name */
        public final byte[] f7009a;

        /* renamed from: b  reason: collision with root package name */
        public final String f7010b;

        /* renamed from: c  reason: collision with root package name */
        public final int f7011c;

        public SdkVersionNotSupported(byte[] bArr) {
            super(null);
            this.f7009a = bArr;
            this.f7010b = "sdk version not supported";
            this.f7011c = 4;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public int getCode() {
            return this.f7011c;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public String getDescription() {
            return this.f7010b;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public byte[] getRawResponse() {
            return this.f7009a;
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001R\u001a\u0010\u0007\u001a\u00020\u00028\u0016X\u0096D¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\r\u001a\u00020\b8\u0016X\u0096D¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/appodeal/ads/modules/libs/network/HttpError$ServerError;", "Lcom/appodeal/ads/modules/libs/network/HttpError;", "", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "Ljava/lang/String;", "getDescription", "()Ljava/lang/String;", "description", "", "b", "I", "getCode", "()I", "code", "", "rawResponse", "[B", "getRawResponse", "()[B", "apd_network"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class ServerError extends HttpError {
        public static final ServerError INSTANCE = new ServerError();

        /* renamed from: a  reason: collision with root package name */
        public static final String f7012a = "server error";

        /* renamed from: b  reason: collision with root package name */
        public static final int f7013b = 4;

        public ServerError() {
            super(null);
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public int getCode() {
            return f7013b;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public String getDescription() {
            return f7012a;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public byte[] getRawResponse() {
            return null;
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\r\u001a\u00020\b8\u0016X\u0096D¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\u0013\u001a\u00020\u000e8\u0016X\u0096D¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/appodeal/ads/modules/libs/network/HttpError$ShowFailed;", "Lcom/appodeal/ads/modules/libs/network/HttpError;", "", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "[B", "getRawResponse", "()[B", "rawResponse", "", "b", "Ljava/lang/String;", "getDescription", "()Ljava/lang/String;", "description", "", "c", "I", "getCode", "()I", "code", "<init>", "([B)V", "apd_network"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class ShowFailed extends HttpError {

        /* renamed from: a  reason: collision with root package name */
        public final byte[] f7014a;

        /* renamed from: b  reason: collision with root package name */
        public final String f7015b;

        /* renamed from: c  reason: collision with root package name */
        public final int f7016c;

        public ShowFailed(byte[] bArr) {
            super(null);
            this.f7014a = bArr;
            this.f7015b = "show failed";
            this.f7016c = 4;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public int getCode() {
            return this.f7016c;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public String getDescription() {
            return this.f7015b;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public byte[] getRawResponse() {
            return this.f7014a;
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001R\u001a\u0010\u0007\u001a\u00020\u00028\u0016X\u0096D¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\r\u001a\u00020\b8\u0016X\u0096D¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/appodeal/ads/modules/libs/network/HttpError$TimeoutError;", "Lcom/appodeal/ads/modules/libs/network/HttpError;", "", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "Ljava/lang/String;", "getDescription", "()Ljava/lang/String;", "description", "", "b", "I", "getCode", "()I", "code", "", "rawResponse", "[B", "getRawResponse", "()[B", "apd_network"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class TimeoutError extends HttpError {
        public static final TimeoutError INSTANCE = new TimeoutError();

        /* renamed from: a  reason: collision with root package name */
        public static final String f7017a = "timeout error";

        /* renamed from: b  reason: collision with root package name */
        public static final int f7018b = 3;

        public TimeoutError() {
            super(null);
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public int getCode() {
            return f7018b;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public String getDescription() {
            return f7017a;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public byte[] getRawResponse() {
            return null;
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\u0019\u0010\u001aR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\r\u001a\u00020\b8\u0016X\u0096D¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\u0013\u001a\u00020\u000e8\u0016X\u0096D¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001b"}, d2 = {"Lcom/appodeal/ads/modules/libs/network/HttpError$UncaughtException;", "Lcom/appodeal/ads/modules/libs/network/HttpError;", "", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "Ljava/lang/Throwable;", "getError", "()Ljava/lang/Throwable;", Constants.IPC_BUNDLE_KEY_SEND_ERROR, "", "b", "Ljava/lang/String;", "getDescription", "()Ljava/lang/String;", "description", "", "c", "I", "getCode", "()I", "code", "", "rawResponse", "[B", "getRawResponse", "()[B", "<init>", "(Ljava/lang/Throwable;)V", "apd_network"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class UncaughtException extends HttpError {

        /* renamed from: a  reason: collision with root package name */
        public final Throwable f7019a;

        /* renamed from: b  reason: collision with root package name */
        public final String f7020b;

        /* renamed from: c  reason: collision with root package name */
        public final int f7021c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UncaughtException(Throwable error) {
            super(null);
            Intrinsics.checkNotNullParameter(error, "error");
            this.f7019a = error;
            this.f7020b = "";
            this.f7021c = -1;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public int getCode() {
            return this.f7021c;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public String getDescription() {
            return this.f7020b;
        }

        public final Throwable getError() {
            return this.f7019a;
        }

        @Override // com.appodeal.ads.modules.libs.network.HttpError
        public byte[] getRawResponse() {
            return null;
        }
    }

    public HttpError() {
    }

    public /* synthetic */ HttpError(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract int getCode();

    public abstract String getDescription();

    public abstract byte[] getRawResponse();
}
