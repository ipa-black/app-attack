.class public abstract Lcom/appodeal/ads/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/c0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdRequestType:",
        "Lcom/appodeal/ads/r;",
        "UnifiedAdType:",
        "Lcom/appodeal/ads/unified/UnifiedAd;",
        "UnifiedAdParamsType::",
        "Lcom/appodeal/ads/unified/UnifiedAdParams;",
        "UnifiedAdCallbackType:",
        "Lcom/appodeal/ads/unified/UnifiedAdCallback;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/appodeal/ads/c0;"
    }
.end annotation


# instance fields
.field public final a:Lcom/appodeal/ads/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdRequestType;"
        }
    .end annotation
.end field

.field public final b:Lcom/appodeal/ads/AdNetwork;

.field public c:Lcom/appodeal/ads/f5;

.field public d:Ljava/lang/String;

.field public final e:Ljava/util/ArrayList;

.field public f:Lcom/appodeal/ads/unified/UnifiedAd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TUnifiedAdType;"
        }
    .end annotation
.end field

.field public g:Lcom/appodeal/ads/unified/UnifiedAdParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TUnifiedAdParamsType;"
        }
    .end annotation
.end field

.field public h:Lcom/appodeal/ads/unified/UnifiedAdCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TUnifiedAdCallbackType;"
        }
    .end annotation
.end field

.field public i:Lcom/appodeal/ads/utils/ExchangeAd;

.field public j:Lcom/appodeal/ads/utils/campaign_frequency/b;

.field public k:Lorg/json/JSONObject;

.field public l:I

.field public final m:I

.field public n:J

.field public o:J

.field public p:J

.field public q:J

.field public r:Z


# direct methods
.method public static synthetic $r8$lambda$qrQFKplFjNZT_k54-WJT_OweqLs(Lcom/appodeal/ads/l;)V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/l;->g()V

    return-void
.end method

.method public constructor <init>(Lcom/appodeal/ads/r;Lcom/appodeal/ads/AdNetwork;Lcom/appodeal/ads/d0;I)V
    .locals 1
    .param p3    # Lcom/appodeal/ads/d0;
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/l;->e:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/appodeal/ads/l;->l:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/l;->r:Z

    iput-object p1, p0, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    iput-object p2, p0, Lcom/appodeal/ads/l;->b:Lcom/appodeal/ads/AdNetwork;

    iput-object p3, p0, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-virtual {p2}, Lcom/appodeal/ads/AdNetwork;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/l;->d:Ljava/lang/String;

    iput p4, p0, Lcom/appodeal/ads/l;->m:I

    return-void
.end method

.method private synthetic g()V
    .locals 0

    invoke-virtual {p0}, Lcom/appodeal/ads/l;->i()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/appodeal/ads/AdNetwork;)Lcom/appodeal/ads/unified/UnifiedAd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/AdNetwork;",
            ")TUnifiedAdType;"
        }
    .end annotation
.end method

.method public abstract a(I)Lcom/appodeal/ads/unified/UnifiedAdParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TUnifiedAdParamsType;"
        }
    .end annotation
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "exchange_ad"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/utils/ExchangeAd;

    iput-object v0, p0, Lcom/appodeal/ads/l;->i:Lcom/appodeal/ads/utils/ExchangeAd;

    :cond_1
    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1
    iget-object v1, p0, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v1, v0}, Lcom/appodeal/ads/c0;->a(Ljava/lang/String;)V

    .line 2
    :cond_2
    const-string v0, "demand_source"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/appodeal/ads/l;->d:Ljava/lang/String;

    .line 4
    :cond_3
    const-string v0, "ecpm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v2, v0, v1}, Lcom/appodeal/ads/c0;->a(D)V

    .line 6
    :cond_4
    const-string v0, "additional_stats"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/appodeal/ads/l;->k:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final a(Lcom/appodeal/ads/context/b;Lcom/appodeal/ads/r;ILcom/appodeal/ads/n$a;)V
    .locals 7

    iget-object v0, p0, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v0}, Lcom/appodeal/ads/AdUnit;->getJsonData()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "freq"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v1}, Lcom/appodeal/ads/AdUnit;->getJsonData()Lorg/json/JSONObject;

    move-result-object v1

    .line 8
    const-string v2, "package"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appodeal/ads/utils/campaign_frequency/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/appodeal/ads/utils/campaign_frequency/b;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/l;->j:Lcom/appodeal/ads/utils/campaign_frequency/b;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/appodeal/ads/context/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/utils/campaign_frequency/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0}, Lcom/appodeal/ads/r;->d(Lcom/appodeal/ads/l;)V

    sget-object p1, Lcom/appodeal/ads/networking/LoadingError;->Canceled:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p4, p1}, Lcom/appodeal/ads/n$a;->a(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/l;->l()Lcom/appodeal/ads/networking/LoadingError;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/l;->b:Lcom/appodeal/ads/AdNetwork;

    invoke-virtual {p2}, Lcom/appodeal/ads/r;->n()Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/AdNetwork;->verifyLoadAvailability(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)Lcom/appodeal/ads/networking/LoadingError;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p4, v0}, Lcom/appodeal/ads/n$a;->a(Lcom/appodeal/ads/networking/LoadingError;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/appodeal/ads/k;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p2

    move v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/appodeal/ads/k;-><init>(Lcom/appodeal/ads/l;Lcom/appodeal/ads/n$a;Lcom/appodeal/ads/r;ILcom/appodeal/ads/context/b;)V

    new-instance p3, Lcom/appodeal/ads/h;

    new-instance p4, Lcom/appodeal/ads/u2;

    iget-object v1, p0, Lcom/appodeal/ads/l;->b:Lcom/appodeal/ads/AdNetwork;

    invoke-virtual {v1}, Lcom/appodeal/ads/AdNetwork;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p4, v1}, Lcom/appodeal/ads/u2;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, p2, p4}, Lcom/appodeal/ads/h;-><init>(Lcom/appodeal/ads/r;Lcom/appodeal/ads/j4;)V

    .line 9
    iget-object p2, p0, Lcom/appodeal/ads/l;->b:Lcom/appodeal/ads/AdNetwork;

    .line 10
    invoke-virtual {p2, p1, p0, p3, v0}, Lcom/appodeal/ads/AdNetwork;->initialize(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/AdUnit;Lcom/appodeal/ads/AdNetworkMediationParams;Lcom/appodeal/ads/NetworkInitializationListener;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;Lcom/appodeal/ads/unified/UnifiedAd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;",
            "TUnifiedAdParamsType;",
            "Ljava/lang/Object;",
            "TUnifiedAdCallbackType;TUnifiedAdType;)V"
        }
    .end annotation

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/UnifiedAd;->load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V

    return-void
.end method

.method public final a(Ljava/lang/String;D)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l;->f:Lcom/appodeal/ads/unified/UnifiedAd;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appodeal/ads/l;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/appodeal/ads/l;->r:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appodeal/ads/l;->r:Z

    iget-object v0, p0, Lcom/appodeal/ads/l;->f:Lcom/appodeal/ads/unified/UnifiedAd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/appodeal/ads/unified/UnifiedAd;->onMediationLoss(Ljava/lang/String;D)V

    :cond_0
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "target_placements"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object v0, p0, Lcom/appodeal/ads/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/appodeal/ads/l;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v0}, Lcom/appodeal/ads/c0;->b()V

    return-void
.end method

.method public final b(I)V
    .locals 6

    iget-object v0, p0, Lcom/appodeal/ads/l;->i:Lcom/appodeal/ads/utils/ExchangeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/utils/ExchangeAd;->trackImpression(I)V

    :cond_0
    iget-object p1, p0, Lcom/appodeal/ads/l;->j:Lcom/appodeal/ads/utils/campaign_frequency/b;

    if-eqz p1, :cond_8

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    .line 3
    :try_start_0
    iget-object v0, p1, Lcom/appodeal/ads/utils/campaign_frequency/b;->a:Lcom/appodeal/ads/utils/campaign_frequency/a;

    .line 4
    sget-object v1, Lcom/appodeal/ads/utils/campaign_frequency/a;->b:Lcom/appodeal/ads/storage/o;

    .line 5
    iget-object v0, v0, Lcom/appodeal/ads/utils/campaign_frequency/a;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v0}, Lcom/appodeal/ads/storage/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v1, :cond_3

    :try_start_1
    sget-boolean v1, Lcom/appodeal/ads/utils/campaign_frequency/a;->c:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_4

    .line 7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_4
    :try_start_3
    iget-object v0, p1, Lcom/appodeal/ads/utils/campaign_frequency/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/appodeal/ads/utils/campaign_frequency/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_2

    :cond_5
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    iget-object v2, p1, Lcom/appodeal/ads/utils/campaign_frequency/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :goto_3
    iget-object v0, p1, Lcom/appodeal/ads/utils/campaign_frequency/b;->a:Lcom/appodeal/ads/utils/campaign_frequency/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 8
    :try_start_5
    sget-object v2, Lcom/appodeal/ads/utils/campaign_frequency/a;->b:Lcom/appodeal/ads/storage/o;

    iget-object v0, v0, Lcom/appodeal/ads/utils/campaign_frequency/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/appodeal/ads/storage/o;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    :try_start_6
    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    .line 9
    :goto_4
    sget-object v0, Lcom/appodeal/ads/utils/campaign_frequency/b;->l:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/appodeal/ads/utils/campaign_frequency/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/appodeal/ads/utils/campaign_frequency/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    goto :goto_5

    :cond_6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p1, Lcom/appodeal/ads/utils/campaign_frequency/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :goto_5
    if-eqz v0, :cond_7

    iget-object v1, p1, Lcom/appodeal/ads/utils/campaign_frequency/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/appodeal/ads/utils/campaign_frequency/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    add-int/lit8 v1, v1, 0x1

    iget-object p1, p1, Lcom/appodeal/ads/utils/campaign_frequency/b;->d:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_7

    :catch_3
    move-exception p1

    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    .line 10
    :cond_8
    :goto_7
    iget-object p1, p0, Lcom/appodeal/ads/l;->f:Lcom/appodeal/ads/unified/UnifiedAd;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedAd;->onImpression()V

    :cond_9
    iget-wide v0, p0, Lcom/appodeal/ads/l;->p:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appodeal/ads/l;->p:J

    :cond_a
    return-void
.end method

.method public abstract c()Lcom/appodeal/ads/unified/UnifiedAdCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TUnifiedAdCallbackType;"
        }
    .end annotation
.end method

.method public final d()Lcom/appodeal/ads/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAdRequestType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    return-object v0
.end method

.method public final e()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l;->k:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getAdUnitName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v0}, Lcom/appodeal/ads/AdUnit;->getAdUnitName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getEcpm()D
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v0}, Lcom/appodeal/ads/AdUnit;->getEcpm()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getExpTime()J
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v0}, Lcom/appodeal/ads/AdUnit;->getExpTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v0}, Lcom/appodeal/ads/AdUnit;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getImpressionInterval()I
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v0}, Lcom/appodeal/ads/AdUnit;->getImpressionInterval()I

    move-result v0

    return v0
.end method

.method public final getJsonData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v0}, Lcom/appodeal/ads/AdUnit;->getJsonData()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final getLoadingTimeout()I
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v0}, Lcom/appodeal/ads/AdUnit;->getLoadingTimeout()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/appodeal/ads/l;->m:I

    :goto_0
    return v0
.end method

.method public final getMediatorName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v0}, Lcom/appodeal/ads/AdUnit;->getMediatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestResult()Lcom/appodeal/ads/e0;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v0}, Lcom/appodeal/ads/AdUnit;->getRequestResult()Lcom/appodeal/ads/e0;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v0}, Lcom/appodeal/ads/AdUnit;->getStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 4

    iget-object v0, p0, Lcom/appodeal/ads/l;->i:Lcom/appodeal/ads/utils/ExchangeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/ExchangeAd;->trackClick()V

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/l;->j:Lcom/appodeal/ads/utils/campaign_frequency/b;

    if-eqz v0, :cond_1

    .line 1
    :try_start_0
    iget-object v0, v0, Lcom/appodeal/ads/utils/campaign_frequency/b;->a:Lcom/appodeal/ads/utils/campaign_frequency/a;

    .line 2
    sget-object v1, Lcom/appodeal/ads/utils/campaign_frequency/a;->b:Lcom/appodeal/ads/storage/o;

    .line 3
    iget-object v0, v0, Lcom/appodeal/ads/utils/campaign_frequency/a;->a:Ljava/lang/String;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/appodeal/ads/storage/o;->a(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/appodeal/ads/l;->f:Lcom/appodeal/ads/unified/UnifiedAd;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedAd;->onClicked()V

    :cond_2
    iget-wide v0, p0, Lcom/appodeal/ads/l;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appodeal/ads/l;->o:J

    :cond_3
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/l;->f:Lcom/appodeal/ads/unified/UnifiedAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedAd;->onDestroy()V

    :cond_0
    return-void
.end method

.method public final isAsync()Z
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v0}, Lcom/appodeal/ads/AdUnit;->isAsync()Z

    move-result v0

    return v0
.end method

.method public final isMuted()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v0}, Lcom/appodeal/ads/AdUnit;->isMuted()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final isPrecache()Z
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v0}, Lcom/appodeal/ads/AdUnit;->isPrecache()Z

    move-result v0

    return v0
.end method

.method public final j()V
    .locals 7

    iget-object v0, p0, Lcom/appodeal/ads/l;->f:Lcom/appodeal/ads/unified/UnifiedAd;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/appodeal/ads/l;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/appodeal/ads/l;->r:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appodeal/ads/l;->r:Z

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v0}, Lcom/appodeal/ads/AdUnit;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    .line 4
    invoke-virtual {v1}, Lcom/appodeal/ads/r;->n()Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/appodeal/ads/modules/common/internal/LogConstants;->EVENT_NOTIFY_MEDIATION_RESULT:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 5
    iget-object v4, p0, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v4}, Lcom/appodeal/ads/AdUnit;->getStatus()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {v4}, Lcom/appodeal/ads/n5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    iget-object v5, p0, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v5}, Lcom/appodeal/ads/AdUnit;->getEcpm()D

    move-result-wide v5

    .line 8
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array {v4, v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "(winner): %s - eCPM: %.2f, id: %s"

    invoke-static {v3, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/l;->f:Lcom/appodeal/ads/unified/UnifiedAd;

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedAd;->onMediationWin()V

    :cond_1
    return-void
.end method

.method public final k()V
    .locals 2

    new-instance v0, Lcom/appodeal/ads/l$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/l$$ExternalSyntheticLambda0;-><init>(Lcom/appodeal/ads/l;)V

    .line 1
    sget-object v1, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public l()Lcom/appodeal/ads/networking/LoadingError;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1
    iget-object v1, p0, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    invoke-interface {v1}, Lcom/appodeal/ads/AdUnit;->getId()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
