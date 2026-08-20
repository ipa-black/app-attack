.class public final Lcom/appodeal/ads/b5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;


# instance fields
.field public final a:Lcom/appodeal/ads/services/c;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/services/g;->b()Lcom/appodeal/ads/services/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appodeal/ads/b5;-><init>(Lcom/appodeal/ads/services/c;)V

    return-void
.end method

.method public constructor <init>(Lcom/appodeal/ads/services/c;)V
    .locals 1

    const-string v0, "servicesSolution"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/b5;->a:Lcom/appodeal/ads/services/c;

    return-void
.end method


# virtual methods
.method public final getPartnerParams()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/b5;->a:Lcom/appodeal/ads/services/c;

    invoke-interface {v0}, Lcom/appodeal/ads/services/c;->getServicesData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/appodeal/ads/modules/common/internal/service/ServiceData;

    instance-of v3, v3, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Firebase;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    instance-of v0, v1, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Firebase;

    if-eqz v0, :cond_2

    check-cast v1, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Firebase;

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_3

    move-object v0, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Firebase;->getKeywordsAsString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/16 v1, 0x8

    new-array v1, v1, [Lkotlin/Pair;

    invoke-static {}, Lcom/appodeal/ads/Appodeal;->getFrameworkName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "appodeal_framework"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {}, Lcom/appodeal/ads/Appodeal;->getEngineVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "appodeal_framework_version"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    invoke-static {}, Lcom/appodeal/ads/Appodeal;->getPluginVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "appodeal_plugin_version"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v1, v4

    invoke-static {}, Lcom/appodeal/ads/Appodeal;->getVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "appodeal_sdk_version"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    invoke-static {}, Lcom/appodeal/ads/Appodeal;->getSegmentId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "appodeal_segment_id"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v1, v4

    invoke-static {}, Lcom/appodeal/ads/q4;->m()Lcom/appodeal/ads/utils/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appodeal/ads/utils/x;->j()Ljava/lang/String;

    move-result-object v3

    const-string v4, "appodeal_session_uuid"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v1, v4

    invoke-static {}, Lcom/appodeal/ads/x2;->f()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "appodeal_token"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v1, v4

    const-string v3, "firebase_keywords"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x7

    aput-object v0, v1, v3

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    move-object v3, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    :goto_4
    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final onServiceDataUpdated(Lcom/appodeal/ads/modules/common/internal/service/ServiceData;)V
    .locals 2

    const-string v0, "serviceData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Adjust;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Adjust;

    invoke-virtual {p1}, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Adjust;->getConversionData()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/appodeal/ads/q4;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$AppsFlyer;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$AppsFlyer;

    invoke-virtual {p1}, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$AppsFlyer;->getConversionData()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/appodeal/ads/q4;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    instance-of v0, p1, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Firebase;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Firebase;

    invoke-virtual {p1}, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Firebase;->getAppInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "FirebaseService"

    const-string v1, "appInstanceId is null or empty"

    invoke-static {v0, v1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Firebase;->getKeywordsAsString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "keywords"

    invoke-static {v0, p1}, Lcom/appodeal/ads/q4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    instance-of p1, p1, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$FacebookAnalytics;

    :cond_4
    :goto_2
    return-void
.end method
