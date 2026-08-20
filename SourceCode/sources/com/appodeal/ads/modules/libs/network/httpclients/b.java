package com.appodeal.ads.modules.libs.network.httpclients;

import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final Lazy f7032a = LazyKt.lazy(a.f7036a);

    /* renamed from: b  reason: collision with root package name */
    public static final Lazy f7033b = LazyKt.lazy(d.f7039a);

    /* renamed from: c  reason: collision with root package name */
    public static final Lazy f7034c = LazyKt.lazy(c.f7038a);

    /* renamed from: d  reason: collision with root package name */
    public static final Lazy f7035d = LazyKt.lazy(C0127b.f7037a);

    /* loaded from: classes2.dex */
    public static final class a extends Lambda implements Function0<com.appodeal.ads.modules.libs.network.httpclients.a> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f7036a = new a();

        public a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final com.appodeal.ads.modules.libs.network.httpclients.a invoke() {
            return new com.appodeal.ads.modules.libs.network.httpclients.a(MapsKt.mapOf(TuplesKt.to("Content-Type", CollectionsKt.listOf("application/json; charset=UTF-8"))), CollectionsKt.emptyList(), CollectionsKt.emptyList());
        }
    }

    /* renamed from: com.appodeal.ads.modules.libs.network.httpclients.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0127b extends Lambda implements Function0<com.appodeal.ads.modules.libs.network.httpclients.a> {

        /* renamed from: a  reason: collision with root package name */
        public static final C0127b f7037a = new C0127b();

        public C0127b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final com.appodeal.ads.modules.libs.network.httpclients.a invoke() {
            Map mapOf = MapsKt.mapOf(TuplesKt.to("Content-Type", CollectionsKt.listOf("application/x-protobuf")));
            com.appodeal.ads.modules.libs.network.encoders.b bVar = com.appodeal.ads.modules.libs.network.encoders.b.f7025a;
            return new com.appodeal.ads.modules.libs.network.httpclients.a(mapOf, CollectionsKt.listOf(bVar), CollectionsKt.listOf(bVar));
        }
    }

    /* loaded from: classes2.dex */
    public static final class c extends Lambda implements Function0<com.appodeal.ads.modules.libs.network.httpclients.a> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f7038a = new c();

        public c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final com.appodeal.ads.modules.libs.network.httpclients.a invoke() {
            Map mapOf = MapsKt.mapOf(TuplesKt.to("Content-Type", CollectionsKt.listOf("text/plain; charset=UTF-8")));
            com.appodeal.ads.modules.libs.network.encoders.b bVar = com.appodeal.ads.modules.libs.network.encoders.b.f7025a;
            return new com.appodeal.ads.modules.libs.network.httpclients.a(mapOf, CollectionsKt.listOf(bVar, com.appodeal.ads.modules.libs.network.encoders.a.f7024a), CollectionsKt.listOf(bVar));
        }
    }

    /* loaded from: classes2.dex */
    public static final class d extends Lambda implements Function0<com.appodeal.ads.modules.libs.network.httpclients.a> {

        /* renamed from: a  reason: collision with root package name */
        public static final d f7039a = new d();

        public d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final com.appodeal.ads.modules.libs.network.httpclients.a invoke() {
            Map mapOf = MapsKt.mapOf(TuplesKt.to("Content-Type", CollectionsKt.listOf("text/plain; charset=UTF-8")));
            com.appodeal.ads.modules.libs.network.encoders.b bVar = com.appodeal.ads.modules.libs.network.encoders.b.f7025a;
            return new com.appodeal.ads.modules.libs.network.httpclients.a(mapOf, CollectionsKt.listOf(bVar), CollectionsKt.listOf(bVar));
        }
    }

    public static final com.appodeal.ads.modules.libs.network.httpclients.a a() {
        return (com.appodeal.ads.modules.libs.network.httpclients.a) f7032a.getValue();
    }

    public static final com.appodeal.ads.modules.libs.network.httpclients.a b() {
        return (com.appodeal.ads.modules.libs.network.httpclients.a) f7035d.getValue();
    }

    public static final com.appodeal.ads.modules.libs.network.httpclients.a c() {
        return (com.appodeal.ads.modules.libs.network.httpclients.a) f7034c.getValue();
    }

    public static final com.appodeal.ads.modules.libs.network.httpclients.a d() {
        return (com.appodeal.ads.modules.libs.network.httpclients.a) f7033b.getValue();
    }
}
