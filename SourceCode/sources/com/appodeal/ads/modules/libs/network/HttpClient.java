package com.appodeal.ads.modules.libs.network;

import androidx.browser.trusted.sharing.ShareTarget;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.modules.libs.network.httpclients.a;
import com.appodeal.ads.modules.libs.network.httpclients.b;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0004\u0007\b\t\n¨\u0006\u000b"}, d2 = {"Lcom/appodeal/ads/modules/libs/network/HttpClient;", "Lcom/appodeal/ads/modules/libs/network/Networking;", "Json", "Method", "Proto", "Zip", "ZipBase64", "Lcom/appodeal/ads/modules/libs/network/HttpClient$Json;", "Lcom/appodeal/ads/modules/libs/network/HttpClient$Zip;", "Lcom/appodeal/ads/modules/libs/network/HttpClient$ZipBase64;", "Lcom/appodeal/ads/modules/libs/network/HttpClient$Proto;", "apd_network"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public interface HttpClient extends Networking {

    @Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u00012\u00020\u0002Jr\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0011\"\u0004\b\u0000\u0010\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2%\u0010\u000e\u001a!\u0012\u0015\u0012\u0013\u0018\u00010\b¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0006\u0012\u0004\u0018\u00018\u00000\n2\b\b\u0002\u0010\u0010\u001a\u00020\u000fH\u0096\u0001ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0012\u0010\u0013\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006\u0015"}, d2 = {"Lcom/appodeal/ads/modules/libs/network/HttpClient$Json;", "Lcom/appodeal/ads/modules/libs/network/HttpClient;", "Lcom/appodeal/ads/modules/libs/network/Networking;", LogConstants.EVENT_RESPONSE, "Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;", FirebaseAnalytics.Param.METHOD, "", "url", "", TtmlNode.TAG_BODY, "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "response", "parser", "", "useUniqueRequestId", "Lkotlin/Result;", "enqueue-yxL6bBk", "(Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;Ljava/lang/String;[BLkotlin/jvm/functions/Function1;Z)Ljava/lang/Object;", "enqueue", "apd_network"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class Json implements HttpClient, Networking {
        public static final Json INSTANCE = new Json();

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ a f6974a = b.a();

        @Override // com.appodeal.ads.modules.libs.network.Networking
        /* renamed from: enqueue-yxL6bBk  reason: not valid java name */
        public <Response> Object mo148enqueueyxL6bBk(Method method, String url, byte[] bArr, Function1<? super byte[], ? extends Response> parser, boolean z) {
            Intrinsics.checkNotNullParameter(method, "method");
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(parser, "parser");
            return this.f6974a.mo148enqueueyxL6bBk(method, url, bArr, parser, z);
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;", "", ShareTarget.METHOD_GET, ShareTarget.METHOD_POST, "PUT", "DELETE", "apd_network"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public enum Method {
        GET,
        POST,
        PUT,
        DELETE
    }

    @Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u00012\u00020\u0002Jr\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0011\"\u0004\b\u0000\u0010\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2%\u0010\u000e\u001a!\u0012\u0015\u0012\u0013\u0018\u00010\b¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0006\u0012\u0004\u0018\u00018\u00000\n2\b\b\u0002\u0010\u0010\u001a\u00020\u000fH\u0096\u0001ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0012\u0010\u0013\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006\u0015"}, d2 = {"Lcom/appodeal/ads/modules/libs/network/HttpClient$Proto;", "Lcom/appodeal/ads/modules/libs/network/HttpClient;", "Lcom/appodeal/ads/modules/libs/network/Networking;", LogConstants.EVENT_RESPONSE, "Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;", FirebaseAnalytics.Param.METHOD, "", "url", "", TtmlNode.TAG_BODY, "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "response", "parser", "", "useUniqueRequestId", "Lkotlin/Result;", "enqueue-yxL6bBk", "(Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;Ljava/lang/String;[BLkotlin/jvm/functions/Function1;Z)Ljava/lang/Object;", "enqueue", "apd_network"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class Proto implements HttpClient, Networking {
        public static final Proto INSTANCE = new Proto();

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ a f6976a = b.b();

        @Override // com.appodeal.ads.modules.libs.network.Networking
        /* renamed from: enqueue-yxL6bBk */
        public <Response> Object mo148enqueueyxL6bBk(Method method, String url, byte[] bArr, Function1<? super byte[], ? extends Response> parser, boolean z) {
            Intrinsics.checkNotNullParameter(method, "method");
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(parser, "parser");
            return this.f6976a.mo148enqueueyxL6bBk(method, url, bArr, parser, z);
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u00012\u00020\u0002Jr\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0011\"\u0004\b\u0000\u0010\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2%\u0010\u000e\u001a!\u0012\u0015\u0012\u0013\u0018\u00010\b¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0006\u0012\u0004\u0018\u00018\u00000\n2\b\b\u0002\u0010\u0010\u001a\u00020\u000fH\u0096\u0001ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0012\u0010\u0013\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006\u0015"}, d2 = {"Lcom/appodeal/ads/modules/libs/network/HttpClient$Zip;", "Lcom/appodeal/ads/modules/libs/network/HttpClient;", "Lcom/appodeal/ads/modules/libs/network/Networking;", LogConstants.EVENT_RESPONSE, "Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;", FirebaseAnalytics.Param.METHOD, "", "url", "", TtmlNode.TAG_BODY, "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "response", "parser", "", "useUniqueRequestId", "Lkotlin/Result;", "enqueue-yxL6bBk", "(Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;Ljava/lang/String;[BLkotlin/jvm/functions/Function1;Z)Ljava/lang/Object;", "enqueue", "apd_network"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class Zip implements HttpClient, Networking {
        public static final Zip INSTANCE = new Zip();

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ a f6977a = b.d();

        @Override // com.appodeal.ads.modules.libs.network.Networking
        /* renamed from: enqueue-yxL6bBk */
        public <Response> Object mo148enqueueyxL6bBk(Method method, String url, byte[] bArr, Function1<? super byte[], ? extends Response> parser, boolean z) {
            Intrinsics.checkNotNullParameter(method, "method");
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(parser, "parser");
            return this.f6977a.mo148enqueueyxL6bBk(method, url, bArr, parser, z);
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u00012\u00020\u0002Jr\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0011\"\u0004\b\u0000\u0010\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2%\u0010\u000e\u001a!\u0012\u0015\u0012\u0013\u0018\u00010\b¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0006\u0012\u0004\u0018\u00018\u00000\n2\b\b\u0002\u0010\u0010\u001a\u00020\u000fH\u0096\u0001ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0012\u0010\u0013\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006\u0015"}, d2 = {"Lcom/appodeal/ads/modules/libs/network/HttpClient$ZipBase64;", "Lcom/appodeal/ads/modules/libs/network/HttpClient;", "Lcom/appodeal/ads/modules/libs/network/Networking;", LogConstants.EVENT_RESPONSE, "Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;", FirebaseAnalytics.Param.METHOD, "", "url", "", TtmlNode.TAG_BODY, "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "response", "parser", "", "useUniqueRequestId", "Lkotlin/Result;", "enqueue-yxL6bBk", "(Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;Ljava/lang/String;[BLkotlin/jvm/functions/Function1;Z)Ljava/lang/Object;", "enqueue", "apd_network"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class ZipBase64 implements HttpClient, Networking {
        public static final ZipBase64 INSTANCE = new ZipBase64();

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ a f6978a = b.c();

        @Override // com.appodeal.ads.modules.libs.network.Networking
        /* renamed from: enqueue-yxL6bBk */
        public <Response> Object mo148enqueueyxL6bBk(Method method, String url, byte[] bArr, Function1<? super byte[], ? extends Response> parser, boolean z) {
            Intrinsics.checkNotNullParameter(method, "method");
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(parser, "parser");
            return this.f6978a.mo148enqueueyxL6bBk(method, url, bArr, parser, z);
        }
    }
}
