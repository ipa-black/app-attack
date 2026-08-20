.class public final Lcom/appodeal/ads/d4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/networking/binders/b;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/networking/binders/b;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/d4;->a:Lcom/appodeal/ads/networking/binders/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;

    .line 1
    const-string v0, "$this$jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/d4;->a:Lcom/appodeal/ads/networking/binders/b;

    check-cast v0, Lcom/appodeal/ads/networking/binders/b$k;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$k;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/modules/common/internal/service/ServiceData;

    instance-of v2, v1, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$AppsFlyer;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/appodeal/ads/y3;

    invoke-direct {v2, v1}, Lcom/appodeal/ads/y3;-><init>(Lcom/appodeal/ads/modules/common/internal/service/ServiceData;)V

    invoke-static {v2}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilderKt;->jsonObject(Lkotlin/jvm/functions/Function1;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "appsflyer"

    :goto_1
    invoke-virtual {p1, v2, v1}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasObject(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Adjust;

    if-eqz v2, :cond_2

    new-instance v2, Lcom/appodeal/ads/a4;

    invoke-direct {v2, v1}, Lcom/appodeal/ads/a4;-><init>(Lcom/appodeal/ads/modules/common/internal/service/ServiceData;)V

    invoke-static {v2}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilderKt;->jsonObject(Lkotlin/jvm/functions/Function1;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "adjust"

    goto :goto_1

    :cond_2
    instance-of v2, v1, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$FacebookAnalytics;

    if-eqz v2, :cond_3

    new-instance v2, Lcom/appodeal/ads/b4;

    invoke-direct {v2, v1}, Lcom/appodeal/ads/b4;-><init>(Lcom/appodeal/ads/modules/common/internal/service/ServiceData;)V

    invoke-static {v2}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilderKt;->jsonObject(Lkotlin/jvm/functions/Function1;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "facebook_analytics"

    goto :goto_1

    :cond_3
    instance-of v2, v1, Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Firebase;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/appodeal/ads/c4;

    invoke-direct {v2, v1}, Lcom/appodeal/ads/c4;-><init>(Lcom/appodeal/ads/modules/common/internal/service/ServiceData;)V

    invoke-static {v2}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilderKt;->jsonObject(Lkotlin/jvm/functions/Function1;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "firebase"

    goto :goto_1

    .line 2
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
