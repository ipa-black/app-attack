.class public final Lcom/appodeal/ads/waterfall_filter/c;
.super Lcom/appodeal/ads/waterfall_filter/e;
.source "SourceFile"


# instance fields
.field public final a:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/waterfall_filter/e;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/waterfall_filter/c;->a:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Lcom/appodeal/ads/r;)V
    .locals 8

    invoke-static {}, Lcom/appodeal/ads/segments/n;->c()Lcom/appodeal/ads/segments/k;

    move-result-object p2

    .line 1
    iget-object p2, p2, Lcom/appodeal/ads/segments/k;->b:Lcom/appodeal/ads/segments/k$a;

    .line 2
    iget-object v0, p0, Lcom/appodeal/ads/waterfall_filter/c;->a:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    :try_start_0
    invoke-static {v0}, Lcom/appodeal/ads/segments/m;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4
    :try_start_1
    iget-object v2, p2, Lcom/appodeal/ads/segments/k$a;->a:Lorg/json/JSONObject;

    const-string v3, "overridden_ecpm"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :cond_1
    const/4 v3, 0x0

    .line 5
    :cond_2
    iget-object v1, p2, Lcom/appodeal/ads/segments/k$a;->a:Lorg/json/JSONObject;

    const-string v2, "price_floor"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/appodeal/ads/segments/m;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 6
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_4
    invoke-virtual {p2, p1, v0}, Lcom/appodeal/ads/segments/k$a;->a(Ljava/util/ArrayList;Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)V

    invoke-static {p1, v1, v3}, Lcom/appodeal/ads/segments/k$a;->a(Ljava/util/ArrayList;Ljava/util/HashSet;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 8
    :try_start_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "ecpm"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v2, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    cmpg-double v0, v2, v4

    if-gez v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    :try_start_4
    invoke-static {p2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    .line 9
    :cond_6
    invoke-static {p1, v1}, Lcom/appodeal/ads/segments/k$a;->a(Ljava/util/ArrayList;Ljava/util/HashSet;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
