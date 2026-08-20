.class public final Lcom/appodeal/ads/u$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final a:Lcom/appodeal/ads/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdRequestType;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final synthetic c:Lcom/appodeal/ads/u;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/u;Lcom/appodeal/ads/r;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/u$e;->c:Lcom/appodeal/ads/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/appodeal/ads/u$e;->a:Lcom/appodeal/ads/r;

    iput-object p3, p0, Lcom/appodeal/ads/u$e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/appodeal/ads/networking/LoadingError;)V
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/u$e;->c:Lcom/appodeal/ads/u;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/u;->d:Lcom/appodeal/ads/b0;

    .line 2
    iget-object v1, p0, Lcom/appodeal/ads/u$e;->a:Lcom/appodeal/ads/r;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/appodeal/ads/b0;->b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "waterfall_cache_timeout"

    const-string v1, "rri"

    const-string v2, "message"

    const-string v3, "main_id"

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :try_start_0
    sget-object p1, Lcom/appodeal/ads/networking/LoadingError;->RequestError:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/u$e;->a(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/appodeal/ads/u$e;->c:Lcom/appodeal/ads/u;

    .line 3
    iget-boolean v5, v5, Lcom/appodeal/ads/u;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "Request Failed"

    if-nez v5, :cond_a

    .line 4
    :try_start_1
    iget-object v5, p0, Lcom/appodeal/ads/u$e;->b:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static {}, Lcom/appodeal/ads/segments/n;->c()Lcom/appodeal/ads/segments/k;

    move-result-object v5

    .line 5
    iget-object v5, v5, Lcom/appodeal/ads/segments/k;->b:Lcom/appodeal/ads/segments/k$a;

    .line 6
    iget-object v7, p0, Lcom/appodeal/ads/u$e;->c:Lcom/appodeal/ads/u;

    .line 7
    iget-object v7, v7, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    .line 8
    invoke-virtual {v5, v7}, Lcom/appodeal/ads/segments/k$a;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v5, "ads"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/appodeal/ads/u$e;->c:Lcom/appodeal/ads/u;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/appodeal/ads/u;->o:J

    iget-object v2, p0, Lcom/appodeal/ads/u$e;->c:Lcom/appodeal/ads/u;

    const-string v5, "afd"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 9
    iput v5, v2, Lcom/appodeal/ads/u;->q:I

    .line 10
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/appodeal/ads/u$e;->c:Lcom/appodeal/ads/u;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 11
    iput-object v3, v2, Lcom/appodeal/ads/u;->r:Ljava/lang/String;

    .line 12
    :cond_3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/appodeal/ads/u$e;->c:Lcom/appodeal/ads/u;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 13
    iput-boolean v1, v2, Lcom/appodeal/ads/u;->s:Z

    .line 14
    :cond_4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/appodeal/ads/u$e;->c:Lcom/appodeal/ads/u;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 15
    iput-object v0, v1, Lcom/appodeal/ads/u;->p:Ljava/lang/Integer;

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/appodeal/ads/u$e;->c:Lcom/appodeal/ads/u;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/u;->a(Lorg/json/JSONObject;)V

    invoke-static {p1}, Lcom/appodeal/ads/r0;->c(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/appodeal/ads/u$e;->c:Lcom/appodeal/ads/u;

    new-instance v1, Lcom/appodeal/ads/waterfall_filter/a;

    .line 17
    iget-object v2, v0, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    .line 18
    invoke-direct {v1, p1, v2}, Lcom/appodeal/ads/waterfall_filter/a;-><init>(Lorg/json/JSONObject;Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)V

    .line 19
    iput-object v1, v0, Lcom/appodeal/ads/u;->n:Lcom/appodeal/ads/waterfall_filter/a;

    .line 20
    iget-object p1, p0, Lcom/appodeal/ads/u$e;->c:Lcom/appodeal/ads/u;

    .line 21
    iget-object p1, p1, Lcom/appodeal/ads/u;->n:Lcom/appodeal/ads/waterfall_filter/a;

    .line 22
    invoke-virtual {p1, v4}, Lcom/appodeal/ads/waterfall_filter/a;->a(Lcom/appodeal/ads/r;)V

    iget-object p1, p0, Lcom/appodeal/ads/u$e;->a:Lcom/appodeal/ads/r;

    iget-object v0, p0, Lcom/appodeal/ads/u$e;->c:Lcom/appodeal/ads/u;

    .line 23
    iget-object v0, v0, Lcom/appodeal/ads/u;->n:Lcom/appodeal/ads/waterfall_filter/a;

    .line 24
    invoke-virtual {p1, v0}, Lcom/appodeal/ads/r;->a(Lcom/appodeal/ads/waterfall_filter/a;)V

    iget-object p1, p0, Lcom/appodeal/ads/u$e;->a:Lcom/appodeal/ads/r;

    iget-object v0, p0, Lcom/appodeal/ads/u$e;->c:Lcom/appodeal/ads/u;

    .line 25
    iget-object v0, v0, Lcom/appodeal/ads/u;->r:Ljava/lang/String;

    .line 26
    iput-object v0, p1, Lcom/appodeal/ads/r;->j:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    .line 28
    invoke-static {}, Lcom/appodeal/ads/segments/n;->c()Lcom/appodeal/ads/segments/k;

    move-result-object v0

    .line 29
    iget-wide v0, v0, Lcom/appodeal/ads/segments/k;->a:J

    .line 30
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 31
    iput-object v0, p1, Lcom/appodeal/ads/r;->k:Ljava/lang/Long;

    .line 32
    iget-object p1, p0, Lcom/appodeal/ads/u$e;->a:Lcom/appodeal/ads/r;

    .line 33
    iget-boolean v0, p1, Lcom/appodeal/ads/r;->h:Z

    if-eqz v0, :cond_7

    .line 34
    iget-boolean p1, p1, Lcom/appodeal/ads/r;->i:Z

    if-eqz p1, :cond_6

    .line 35
    sget-object p1, Lcom/appodeal/ads/q4;->d:Lcom/appodeal/ads/TestActivity;

    if-eqz p1, :cond_6

    new-instance p1, Lcom/appodeal/ads/u$e$a;

    invoke-direct {p1}, Lcom/appodeal/ads/u$e$a;-><init>()V

    .line 36
    sget-object v0, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 37
    :cond_6
    new-instance p1, Lcom/appodeal/ads/u$e$b;

    invoke-direct {p1, p0}, Lcom/appodeal/ads/u$e$b;-><init>(Lcom/appodeal/ads/u$e;)V

    .line 38
    sget-object v0, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    iget-object p1, p0, Lcom/appodeal/ads/u$e;->c:Lcom/appodeal/ads/u;

    .line 40
    iget-object p1, p1, Lcom/appodeal/ads/u;->e:Lcom/appodeal/ads/i;

    .line 41
    const-string v0, "debug"

    invoke-virtual {p1, v0}, Lcom/appodeal/ads/i;->b(Ljava/lang/String;)Lcom/appodeal/ads/AdNetwork;

    move-result-object p1

    if-eqz p1, :cond_b

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    new-instance v1, Lcom/appodeal/ads/d0;

    invoke-direct {v1}, Lcom/appodeal/ads/d0;-><init>()V

    new-instance v2, Lcom/appodeal/ads/h;

    iget-object v3, p0, Lcom/appodeal/ads/u$e;->a:Lcom/appodeal/ads/r;

    sget-object v5, Lcom/appodeal/ads/j4;->a:Lcom/appodeal/ads/j4;

    invoke-direct {v2, v3, v5}, Lcom/appodeal/ads/h;-><init>(Lcom/appodeal/ads/r;Lcom/appodeal/ads/j4;)V

    new-instance v3, Lcom/appodeal/ads/u$e$c;

    invoke-direct {v3}, Lcom/appodeal/ads/u$e$c;-><init>()V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/appodeal/ads/AdNetwork;->initialize(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/AdUnit;Lcom/appodeal/ads/AdNetworkMediationParams;Lcom/appodeal/ads/NetworkInitializationListener;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/appodeal/ads/u$e;->c:Lcom/appodeal/ads/u;

    .line 42
    invoke-virtual {v0, p1}, Lcom/appodeal/ads/u;->b(Lcom/appodeal/ads/r;)V

    goto :goto_2

    .line 43
    :cond_8
    :goto_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/appodeal/ads/u$e;->c:Lcom/appodeal/ads/u;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v6, p1}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object p1, p0, Lcom/appodeal/ads/u$e;->c:Lcom/appodeal/ads/u;

    .line 44
    iget-object p1, p1, Lcom/appodeal/ads/u;->d:Lcom/appodeal/ads/b0;

    .line 45
    iget-object v0, p0, Lcom/appodeal/ads/u$e;->a:Lcom/appodeal/ads/r;

    sget-object v1, Lcom/appodeal/ads/networking/LoadingError;->RequestError:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p1, v0, v4, v4, v1}, Lcom/appodeal/ads/b0;->b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;Lcom/appodeal/ads/networking/LoadingError;)V

    return-void

    :cond_a
    :goto_1
    iget-object p1, p0, Lcom/appodeal/ads/u$e;->c:Lcom/appodeal/ads/u;

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p1, Lcom/appodeal/ads/u;->h:Z

    .line 47
    const-string v0, "disabled"

    invoke-virtual {p1, v6, v0}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/appodeal/ads/u$e;->c:Lcom/appodeal/ads/u;

    .line 48
    iget-object p1, p1, Lcom/appodeal/ads/u;->d:Lcom/appodeal/ads/b0;

    .line 49
    iget-object v0, p0, Lcom/appodeal/ads/u$e;->a:Lcom/appodeal/ads/r;

    sget-object v1, Lcom/appodeal/ads/networking/LoadingError;->InternalError:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p1, v0, v4, v4, v1}, Lcom/appodeal/ads/b0;->b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;Lcom/appodeal/ads/networking/LoadingError;)V

    :cond_b
    :goto_2
    return-void
.end method
