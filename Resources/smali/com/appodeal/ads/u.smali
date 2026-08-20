.class public abstract Lcom/appodeal/ads/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/u$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdObjectType:",
        "Lcom/appodeal/ads/l;",
        "AdRequestType:",
        "Lcom/appodeal/ads/r<",
        "TAdObjectType;>;RequestParamsType:",
        "Lcom/appodeal/ads/s;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final synthetic E:Z = true


# instance fields
.field public A:F

.field public B:I

.field public final C:Lcom/appodeal/ads/u$a;

.field public D:Lcom/appodeal/ads/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestParamsType;"
        }
    .end annotation
.end field

.field public final a:Ljava/util/concurrent/LinkedBlockingQueue;

.field public b:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final c:Lcom/appodeal/ads/modules/libs/network/NetworkStatus;

.field public final d:Lcom/appodeal/ads/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/b0<",
            "TAdObjectType;TAdRequestType;*>;"
        }
    .end annotation
.end field

.field public final e:Lcom/appodeal/ads/i;

.field public final f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

.field public final g:Ljava/util/ArrayList;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Lcom/appodeal/ads/segments/g;

.field public m:Ljava/lang/String;

.field public n:Lcom/appodeal/ads/waterfall_filter/a;

.field public o:J

.field public p:Ljava/lang/Integer;

.field public q:I

.field public r:Ljava/lang/String;

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Lcom/appodeal/ads/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdRequestType;"
        }
    .end annotation
.end field

.field public y:Lcom/appodeal/ads/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdRequestType;"
        }
    .end annotation
.end field

.field public z:F


# direct methods
.method public static synthetic $r8$lambda$FeGQiDq4qRs2RRSVN8Dyjb4Yq0A(Lcom/appodeal/ads/u;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/u;->a(Z)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/appodeal/ads/b0;Lcom/appodeal/ads/modules/common/internal/adtype/AdType;Lcom/appodeal/ads/segments/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/b0<",
            "TAdObjectType;TAdRequestType;*>;",
            "Lcom/appodeal/ads/modules/common/internal/adtype/AdType;",
            "Lcom/appodeal/ads/segments/g;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/u;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v0, Lcom/appodeal/ads/modules/libs/network/NetworkStatus;->INSTANCE:Lcom/appodeal/ads/modules/libs/network/NetworkStatus;

    iput-object v0, p0, Lcom/appodeal/ads/u;->c:Lcom/appodeal/ads/modules/libs/network/NetworkStatus;

    invoke-virtual {p0}, Lcom/appodeal/ads/u;->c()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/appodeal/ads/u;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/appodeal/ads/u;->h:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/u;->i:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/u;->j:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/appodeal/ads/u;->k:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/appodeal/ads/u;->o:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/appodeal/ads/u;->p:Ljava/lang/Integer;

    iput v1, p0, Lcom/appodeal/ads/u;->q:I

    iput-boolean v1, p0, Lcom/appodeal/ads/u;->s:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/u;->u:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/u;->v:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/u;->w:Z

    const v1, 0x3f99999a    # 1.2f

    iput v1, p0, Lcom/appodeal/ads/u;->z:F

    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Lcom/appodeal/ads/u;->A:F

    const/16 v1, 0x1388

    iput v1, p0, Lcom/appodeal/ads/u;->B:I

    new-instance v1, Lcom/appodeal/ads/u$a;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/u$a;-><init>(Lcom/appodeal/ads/u;)V

    iput-object v1, p0, Lcom/appodeal/ads/u;->C:Lcom/appodeal/ads/u$a;

    iput-object v2, p0, Lcom/appodeal/ads/u;->D:Lcom/appodeal/ads/s;

    iput-object p1, p0, Lcom/appodeal/ads/u;->d:Lcom/appodeal/ads/b0;

    iput-object p2, p0, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    iput-object p3, p0, Lcom/appodeal/ads/u;->l:Lcom/appodeal/ads/segments/g;

    invoke-static {p2}, Lcom/appodeal/ads/i;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)Lcom/appodeal/ads/i;

    move-result-object p2

    iput-object p2, p0, Lcom/appodeal/ads/u;->e:Lcom/appodeal/ads/i;

    invoke-virtual {p1, p0}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/u;)V

    new-instance p1, Lcom/appodeal/ads/u$b;

    invoke-direct {p1, p0}, Lcom/appodeal/ads/u$b;-><init>(Lcom/appodeal/ads/u;)V

    invoke-static {p1}, Lcom/appodeal/ads/segments/n;->a(Lcom/appodeal/ads/u$b;)V

    new-instance p1, Lcom/appodeal/ads/u$c;

    invoke-direct {p1, p0}, Lcom/appodeal/ads/u$c;-><init>(Lcom/appodeal/ads/u;)V

    invoke-static {p1}, Lcom/appodeal/ads/segments/h;->a(Lcom/appodeal/ads/u$c;)V

    new-instance p1, Lcom/appodeal/ads/u$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/appodeal/ads/u$$ExternalSyntheticLambda0;-><init>(Lcom/appodeal/ads/u;)V

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/modules/libs/network/NetworkStatus;->subscribe(Lcom/appodeal/ads/modules/libs/network/NetworkStateObserver$ConnectionListener;)V

    return-void
.end method

.method private synthetic a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/appodeal/ads/u;->t()V

    :cond_0
    return-void
.end method

.method public static b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/appodeal/ads/r;->v()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/appodeal/ads/r;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/appodeal/ads/r;->a:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object p0, p0, Lcom/appodeal/ads/r;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lorg/json/JSONObject;

    :cond_1
    if-eqz v0, :cond_2

    .line 4
    const-string p0, "ecpm"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 5
    iget-object p0, p1, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    .line 6
    invoke-interface {p0}, Lcom/appodeal/ads/AdUnit;->getEcpm()D

    move-result-wide p0

    cmpl-double p0, v2, p0

    if-lez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;TAdObjectType;Z)I"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public abstract a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/AdNetwork;Lcom/appodeal/ads/d0;)Lcom/appodeal/ads/l;
.end method

.method public abstract a(Lcom/appodeal/ads/s;)Lcom/appodeal/ads/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestParamsType;)TAdRequestType;"
        }
    .end annotation
.end method

.method public a(Landroid/app/Activity;Lcom/appodeal/ads/utils/app/AppState;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/appodeal/ads/u;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/appodeal/ads/utils/app/b;->b:Lcom/appodeal/ads/utils/app/b;

    iget-object v1, p0, Lcom/appodeal/ads/u;->C:Lcom/appodeal/ads/u$a;

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/utils/app/b;->a(Lcom/appodeal/ads/utils/app/a;)V

    iget-object v0, p0, Lcom/appodeal/ads/u;->e:Lcom/appodeal/ads/i;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/i;->a(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/appodeal/ads/u;->i:Z

    .line 3
    iget-object p1, p0, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    .line 4
    invoke-virtual {p1}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Initialize"

    const-string v1, "done"

    invoke-static {p1, v0, v1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Landroid/content/Context;Lcom/appodeal/ads/s;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TRequestParamsType;)V"
        }
    .end annotation

    sget-object p1, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/q4;->p()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 14
    iget-boolean p2, p0, Lcom/appodeal/ads/u;->h:Z

    .line 15
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {}, Lcom/appodeal/ads/segments/n;->c()Lcom/appodeal/ads/segments/k;

    move-result-object v0

    .line 16
    iget-object v0, v0, Lcom/appodeal/ads/segments/k;->b:Lcom/appodeal/ads/segments/k$a;

    .line 17
    iget-object v1, p0, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/segments/k$a;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "paused: %s, disabled: %s, disabled by segment: %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Request Failed"

    invoke-virtual {p0, p2, p1}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/appodeal/ads/r;IZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;IZZ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/u;->c:Lcom/appodeal/ads/modules/libs/network/NetworkStatus;

    invoke-virtual {v0}, Lcom/appodeal/ads/modules/libs/network/NetworkStatus;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/appodeal/ads/u;->d:Lcom/appodeal/ads/b0;

    sget-object p3, Lcom/appodeal/ads/networking/LoadingError;->ConnectionError:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p2, p1, v1, v1, p3}, Lcom/appodeal/ads/b0;->b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;Lcom/appodeal/ads/networking/LoadingError;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/r;I)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1, p2, p3, p4}, Lcom/appodeal/ads/r;->a(IZZ)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/appodeal/ads/u;->d:Lcom/appodeal/ads/b0;

    sget-object p3, Lcom/appodeal/ads/networking/LoadingError;->InternalError:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p2, p1, v1, v1, p3}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/f5;Lcom/appodeal/ads/networking/LoadingError;)V

    return-void

    :cond_3
    invoke-static {p2, p3}, Lcom/appodeal/ads/d0;->a(Lorg/json/JSONObject;Z)Lcom/appodeal/ads/d0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/d0;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p2, p0, Lcom/appodeal/ads/u;->d:Lcom/appodeal/ads/b0;

    sget-object p3, Lcom/appodeal/ads/networking/LoadingError;->IncorrectAdunit:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p2, p1, v1, p3}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/networking/LoadingError;)V

    return-void

    :cond_4
    invoke-virtual {p1, v0}, Lcom/appodeal/ads/r;->a(Lcom/appodeal/ads/d0;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/appodeal/ads/u;->l()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/appodeal/ads/r;->h()Lcom/appodeal/ads/l;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/appodeal/ads/l;->getEcpm()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/appodeal/ads/d0;->getEcpm()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-ltz v3, :cond_5

    const-string p2, "Load Skipped"

    invoke-virtual {p0, p2, v0, v1}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;Lcom/appodeal/ads/AdUnit;Lcom/appodeal/ads/networking/LoadingError;)V

    invoke-virtual {p1, v2}, Lcom/appodeal/ads/r;->b(Lcom/appodeal/ads/l;)V

    invoke-virtual {p1, v0}, Lcom/appodeal/ads/r;->b(Lcom/appodeal/ads/d0;)V

    invoke-virtual {v2}, Lcom/appodeal/ads/l;->b()V

    iget-object p2, p0, Lcom/appodeal/ads/u;->d:Lcom/appodeal/ads/b0;

    invoke-virtual {p2, p1, v2}, Lcom/appodeal/ads/b0;->n(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    return-void

    :cond_5
    const-string v2, "target_placements"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_8

    move v4, v3

    move v5, v4

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_7

    invoke-virtual {p1}, Lcom/appodeal/ads/r;->i()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    add-int/lit8 v5, v5, 0x1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ne v5, v2, :cond_8

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/u;->b(Lcom/appodeal/ads/r;)V

    return-void

    :cond_8
    iget-object v2, p0, Lcom/appodeal/ads/u;->e:Lcom/appodeal/ads/i;

    invoke-virtual {v0}, Lcom/appodeal/ads/d0;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/appodeal/ads/i;->b(Ljava/lang/String;)Lcom/appodeal/ads/AdNetwork;

    move-result-object v2

    invoke-virtual {v0}, Lcom/appodeal/ads/d0;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, p2, v4, p4}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/AdNetwork;Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p1, v0}, Lcom/appodeal/ads/r;->b(Lcom/appodeal/ads/d0;)V

    return-void

    :cond_9
    if-eqz v2, :cond_11

    invoke-virtual {p0, p1, v2, v0}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/AdNetwork;Lcom/appodeal/ads/d0;)Lcom/appodeal/ads/l;

    move-result-object v9

    if-eqz v9, :cond_10

    invoke-virtual {p0}, Lcom/appodeal/ads/u;->a()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v9, p2}, Lcom/appodeal/ads/l;->a(Lorg/json/JSONObject;)V

    :cond_a
    invoke-virtual {p0, p1, v9}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)Z

    move-result p2

    if-eqz p2, :cond_f

    if-eqz p3, :cond_b

    invoke-virtual {p1, v9}, Lcom/appodeal/ads/r;->c(Lcom/appodeal/ads/l;)V

    goto :goto_1

    :cond_b
    invoke-virtual {p1, v9}, Lcom/appodeal/ads/r;->b(Lcom/appodeal/ads/l;)V

    :goto_1
    invoke-static {}, Lcom/appodeal/ads/q4;->i()Lcom/appodeal/ads/utils/Log$LogLevel;

    move-result-object p2

    sget-object v4, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    if-ne p2, v4, :cond_c

    const/4 v3, 0x1

    :cond_c
    invoke-virtual {v2, v3}, Lcom/appodeal/ads/AdNetwork;->setLogging(Z)V

    invoke-virtual {p1, v9}, Lcom/appodeal/ads/r;->a(Lcom/appodeal/ads/l;)V

    invoke-virtual {p0, p1, v9, p3}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Z)I

    move-result v6

    .line 5
    new-instance p2, Lcom/appodeal/ads/v;

    move-object v2, p2

    move-object v3, p0

    move-object v4, p1

    move-object v5, v9

    move-object v7, v9

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/appodeal/ads/v;-><init>(Lcom/appodeal/ads/u;Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;ILcom/appodeal/ads/l;Lcom/appodeal/ads/r;)V

    if-nez p4, :cond_d

    .line 6
    invoke-virtual {p1}, Lcom/appodeal/ads/r;->t()Z

    move-result p3

    if-nez p3, :cond_d

    invoke-virtual {v9}, Lcom/appodeal/ads/l;->isAsync()Z

    move-result p3

    if-eqz p3, :cond_d

    .line 7
    iget-object p3, p0, Lcom/appodeal/ads/u;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p3, p2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    invoke-virtual {p1}, Lcom/appodeal/ads/r;->a()I

    move-result p2

    if-lez p2, :cond_e

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/u;->b(Lcom/appodeal/ads/r;)V

    goto :goto_2

    .line 8
    :cond_d
    sget-object p3, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {p3, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    :cond_e
    :goto_2
    new-instance p2, Lcom/appodeal/ads/u$d;

    invoke-direct {p2, p0, p1, v9}, Lcom/appodeal/ads/u$d;-><init>(Lcom/appodeal/ads/u;Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    invoke-virtual {v9}, Lcom/appodeal/ads/l;->getLoadingTimeout()I

    move-result p3

    int-to-long p3, p3

    invoke-static {p2, p3, p4}, Lcom/appodeal/ads/h5;->a(Ljava/lang/Runnable;J)V

    goto :goto_4

    :cond_f
    iget-object p2, p0, Lcom/appodeal/ads/u;->d:Lcom/appodeal/ads/b0;

    sget-object p3, Lcom/appodeal/ads/networking/LoadingError;->NoFill:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p2, p1, v9, v0, p3}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/f5;Lcom/appodeal/ads/networking/LoadingError;)V

    goto :goto_4

    :cond_10
    iget-object p2, p0, Lcom/appodeal/ads/u;->d:Lcom/appodeal/ads/b0;

    sget-object p3, Lcom/appodeal/ads/networking/LoadingError;->AdTypeNotSupportedInAdapter:Lcom/appodeal/ads/networking/LoadingError;

    goto :goto_3

    :cond_11
    iget-object p2, p0, Lcom/appodeal/ads/u;->d:Lcom/appodeal/ads/b0;

    sget-object p3, Lcom/appodeal/ads/networking/LoadingError;->AdapterNotFound:Lcom/appodeal/ads/networking/LoadingError;

    :goto_3
    invoke-virtual {p2, p1, v1, v0, p3}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/f5;Lcom/appodeal/ads/networking/LoadingError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p2

    invoke-static {p2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    iget-object p2, p0, Lcom/appodeal/ads/u;->d:Lcom/appodeal/ads/b0;

    sget-object p3, Lcom/appodeal/ads/networking/LoadingError;->InternalError:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p2, p1, v1, v0, p3}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/f5;Lcom/appodeal/ads/networking/LoadingError;)V

    :goto_4
    return-void
.end method

.method public final a(Lcom/appodeal/ads/r;Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    const-string v0, "main_id"

    const-string v1, "message"

    const-string v2, "skip postbid request"

    const-string v3, "Request Failed"

    const/4 v4, 0x0

    if-eqz p2, :cond_3

    .line 18
    :try_start_0
    iget-boolean v5, p1, Lcom/appodeal/ads/r;->F:Z

    if-nez v5, :cond_3

    .line 19
    iget-boolean v5, p1, Lcom/appodeal/ads/r;->C:Z

    if-nez v5, :cond_3

    .line 20
    iget-object v5, p1, Lcom/appodeal/ads/r;->s:Lcom/appodeal/ads/l;

    if-eqz v5, :cond_3

    .line 21
    iget-object v5, v5, Lcom/appodeal/ads/l;->a:Lcom/appodeal/ads/r;

    .line 22
    iget-boolean v6, v5, Lcom/appodeal/ads/r;->F:Z

    if-nez v6, :cond_3

    .line 23
    iget-boolean v5, v5, Lcom/appodeal/ads/r;->C:Z

    if-nez v5, :cond_3

    .line 24
    iget-object v5, p0, Lcom/appodeal/ads/u;->x:Lcom/appodeal/ads/r;

    if-eqz v5, :cond_3

    if-ne v5, p1, :cond_3

    .line 25
    const-string v5, "ads"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/appodeal/ads/u;->D:Lcom/appodeal/ads/s;

    invoke-virtual {p0, v1}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/s;)Lcom/appodeal/ads/r;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    iput-object p1, v1, Lcom/appodeal/ads/r;->H:Lcom/appodeal/ads/r;

    .line 27
    iget-object v2, p0, Lcom/appodeal/ads/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Lcom/appodeal/ads/u;->x:Lcom/appodeal/ads/r;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 28
    invoke-virtual {v1, v3, v2}, Lcom/appodeal/ads/r;->a(ZZ)V

    .line 29
    new-instance v2, Lcom/appodeal/ads/waterfall_filter/a;

    invoke-virtual {p1}, Lcom/appodeal/ads/r;->n()Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Lcom/appodeal/ads/waterfall_filter/a;-><init>(Lorg/json/JSONObject;Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)V

    invoke-virtual {v2, p1}, Lcom/appodeal/ads/waterfall_filter/a;->a(Lcom/appodeal/ads/r;)V

    .line 30
    iget-object p1, v2, Lcom/appodeal/ads/waterfall_filter/a;->e:Lcom/appodeal/ads/waterfall_filter/d;

    .line 31
    iget-object v2, p1, Lcom/appodeal/ads/waterfall_filter/d;->b:Ljava/util/ArrayList;

    .line 32
    iput-object v2, v1, Lcom/appodeal/ads/r;->a:Ljava/util/ArrayList;

    .line 33
    iget-object p1, p1, Lcom/appodeal/ads/waterfall_filter/d;->a:Ljava/util/ArrayList;

    .line 34
    iput-object p1, v1, Lcom/appodeal/ads/r;->b:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36
    iput-object p1, v1, Lcom/appodeal/ads/r;->j:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/appodeal/ads/segments/n;->c()Lcom/appodeal/ads/segments/k;

    move-result-object p1

    .line 38
    iget-wide p1, p1, Lcom/appodeal/ads/segments/k;->a:J

    .line 39
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 40
    iput-object p1, v1, Lcom/appodeal/ads/r;->k:Ljava/lang/Long;

    .line 41
    invoke-virtual {p0, v1}, Lcom/appodeal/ads/u;->b(Lcom/appodeal/ads/r;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v3, p2}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p2, p0, Lcom/appodeal/ads/u;->d:Lcom/appodeal/ads/b0;

    invoke-virtual {p2, p1}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;)V

    invoke-virtual {p0, v3, v2}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p2, p0, Lcom/appodeal/ads/u;->d:Lcom/appodeal/ads/b0;

    invoke-virtual {p2, p1}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;)V

    invoke-virtual {p0, v3, v2}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    move-object v1, v4

    :goto_1
    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/appodeal/ads/u;->d:Lcom/appodeal/ads/b0;

    sget-object p2, Lcom/appodeal/ads/networking/LoadingError;->InternalError:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p1, v1, v4, v4, p2}, Lcom/appodeal/ads/b0;->b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;Lcom/appodeal/ads/networking/LoadingError;)V

    :goto_2
    return-void
.end method

.method public final a(Lcom/appodeal/ads/segments/g;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/u;->l:Lcom/appodeal/ads/segments/g;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/u;->m:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/appodeal/ads/AdUnit;Lcom/appodeal/ads/networking/LoadingError;)V
    .locals 8

    sget-object v0, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    .line 10
    sget-object v0, Lcom/appodeal/ads/r0;->d:Lcom/appodeal/ads/utils/Log$LogLevel;

    .line 11
    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->none:Lcom/appodeal/ads/utils/Log$LogLevel;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_2

    if-nez p3, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/appodeal/ads/networking/LoadingError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/appodeal/ads/networking/LoadingError;->getCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "%s (%s)"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_3

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

    :cond_3
    move-object v7, v0

    if-nez p3, :cond_4

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/n5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getEcpm()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->isPrecache()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getExpTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {v0, v1, v2, p2, v7}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%s - eCPM: %.2f, precache: %s, expTime: %s, id: %s"

    invoke-static {p3, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_4
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appodeal/ads/n5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/appodeal/ads/networking/LoadingError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/appodeal/ads/networking/LoadingError;->getCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getEcpm()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->isPrecache()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getExpTime()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "%s - %s (%s) - eCPM: %.2f, precache: %s, expTime: %s, id: %s"

    invoke-static {v0, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    :goto_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    .line 13
    invoke-virtual {v0}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract a(Lorg/json/JSONObject;)V
.end method

.method public a()Z
    .locals 1

    instance-of v0, p0, Lcom/appodeal/ads/Native$a;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public a(Lcom/appodeal/ads/AdNetwork;Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/appodeal/ads/r;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/appodeal/ads/r;->b:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public a(Lcom/appodeal/ads/r;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;I)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;TAdObjectType;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/u;->l:Lcom/appodeal/ads/segments/g;

    iget-object v1, p0, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/appodeal/ads/r;->a(Lcom/appodeal/ads/l;Lcom/appodeal/ads/segments/g;Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/appodeal/ads/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/appodeal/ads/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/r;

    if-eqz v1, :cond_0

    .line 1
    iget-boolean v2, v1, Lcom/appodeal/ads/r;->E:Z

    if-nez v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/appodeal/ads/u;->x:Lcom/appodeal/ads/r;

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/appodeal/ads/u;->y:Lcom/appodeal/ads/r;

    if-eq v1, v2, :cond_0

    invoke-virtual {v1}, Lcom/appodeal/ads/r;->c()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract b(Landroid/content/Context;)V
.end method

.method public final b(Landroid/content/Context;Lcom/appodeal/ads/s;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TRequestParamsType;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/appodeal/ads/u;->D:Lcom/appodeal/ads/s;

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/appodeal/ads/u;->i:Z

    if-nez v1, :cond_0

    const-string p1, "Request Failed"

    const-string p2, "isn\'t initialized"

    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/appodeal/ads/u;->c:Lcom/appodeal/ads/modules/libs/network/NetworkStatus;

    invoke-virtual {v1}, Lcom/appodeal/ads/modules/libs/network/NetworkStatus;->isConnected()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iput-boolean v2, p0, Lcom/appodeal/ads/u;->v:Z

    iget-object p1, p0, Lcom/appodeal/ads/u;->d:Lcom/appodeal/ads/b0;

    sget-object p2, Lcom/appodeal/ads/networking/LoadingError;->ConnectionError:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p1, v0, v0, v0, p2}, Lcom/appodeal/ads/b0;->b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;Lcom/appodeal/ads/networking/LoadingError;)V

    return-void

    :cond_1
    sget-object v1, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/q4;->p()Z

    move-result v1

    if-nez v1, :cond_d

    .line 14
    iget-boolean v1, p0, Lcom/appodeal/ads/u;->h:Z

    if-nez v1, :cond_d

    .line 15
    invoke-static {}, Lcom/appodeal/ads/segments/n;->c()Lcom/appodeal/ads/segments/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/segments/k;->c()Lcom/appodeal/ads/segments/k$a;

    move-result-object v1

    iget-object v3, p0, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    invoke-virtual {v1, v3}, Lcom/appodeal/ads/segments/k$a;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_7

    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v3, "isDebug: %s, isLoaded: %s, isLoading: %s"

    const-string v4, "Cache"

    if-nez v1, :cond_3

    :try_start_1
    invoke-virtual {p2}, Lcom/appodeal/ads/s;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v1, v5, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/appodeal/ads/s;->b()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1}, Lcom/appodeal/ads/r;->p()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1}, Lcom/appodeal/ads/r;->u()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/appodeal/ads/u;->v()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/appodeal/ads/r;->h()Lcom/appodeal/ads/l;

    move-result-object v3

    invoke-static {v3}, Lcom/appodeal/ads/utils/o;->b(Lcom/appodeal/ads/l;)V

    invoke-virtual {v1}, Lcom/appodeal/ads/r;->i()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/appodeal/ads/utils/o;->a(Ljava/util/Collection;)V

    :cond_4
    :goto_0
    invoke-virtual {p0, p2}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/s;)Lcom/appodeal/ads/r;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v3, p0, Lcom/appodeal/ads/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Lcom/appodeal/ads/u;->x:Lcom/appodeal/ads/r;

    invoke-virtual {v1}, Lcom/appodeal/ads/r;->z()V

    iget-object v3, p0, Lcom/appodeal/ads/u;->r:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/appodeal/ads/r;->b(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/appodeal/ads/segments/n;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/appodeal/ads/q4;->l()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/appodeal/ads/r;->a(Ljava/lang/Long;)V

    invoke-virtual {v1}, Lcom/appodeal/ads/r;->q()Z

    move-result v3

    if-nez v3, :cond_c

    iget-wide v3, p0, Lcom/appodeal/ads/u;->o:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/appodeal/ads/u;->p:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/appodeal/ads/r0;->a(JI)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_5

    :cond_5
    iget-object p1, p0, Lcom/appodeal/ads/u;->n:Lcom/appodeal/ads/waterfall_filter/a;

    if-eqz p1, :cond_b

    invoke-virtual {v1}, Lcom/appodeal/ads/r;->o()Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    sget-boolean v3, Lcom/appodeal/ads/u;->E:Z

    if-nez v3, :cond_8

    if-eqz p2, :cond_7

    goto :goto_1

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_1
    iget-object v3, p0, Lcom/appodeal/ads/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_2
    if-ltz v3, :cond_a

    iget-object v2, p0, Lcom/appodeal/ads/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/r;

    .line 17
    iget-boolean v4, v2, Lcom/appodeal/ads/r;->B:Z

    if-eqz v4, :cond_9

    .line 18
    iget-object v4, v2, Lcom/appodeal/ads/r;->j:Ljava/lang/String;

    .line 19
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_a
    :goto_3
    move-object v2, v0

    .line 20
    :goto_4
    invoke-virtual {p1, v2}, Lcom/appodeal/ads/waterfall_filter/a;->a(Lcom/appodeal/ads/r;)V

    iget-object p1, p0, Lcom/appodeal/ads/u;->n:Lcom/appodeal/ads/waterfall_filter/a;

    invoke-virtual {v1, p1}, Lcom/appodeal/ads/r;->a(Lcom/appodeal/ads/waterfall_filter/a;)V

    :cond_b
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/appodeal/ads/u;->j:Z

    invoke-virtual {p0, v1}, Lcom/appodeal/ads/u;->b(Lcom/appodeal/ads/r;)V

    goto :goto_6

    :cond_c
    :goto_5
    new-instance v2, Lcom/appodeal/ads/u$e;

    invoke-virtual {p0}, Lcom/appodeal/ads/u;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v1, v3}, Lcom/appodeal/ads/u$e;-><init>(Lcom/appodeal/ads/u;Lcom/appodeal/ads/r;Ljava/lang/String;)V

    invoke-static {p1, p0, v1, p2, v2}, Lcom/appodeal/ads/k0;->a(Landroid/content/Context;Lcom/appodeal/ads/u;Lcom/appodeal/ads/r;Lcom/appodeal/ads/s;Lcom/appodeal/ads/u$e;)V

    :goto_6
    invoke-virtual {p0}, Lcom/appodeal/ads/u;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    :catch_0
    move-exception p1

    goto :goto_8

    :cond_d
    :goto_7
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/u;->a(Landroid/content/Context;Lcom/appodeal/ads/s;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception p1

    move-object v1, v0

    :goto_8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/appodeal/ads/u;->d:Lcom/appodeal/ads/b0;

    sget-object p2, Lcom/appodeal/ads/networking/LoadingError;->InternalError:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p1, v1, v0, v0, p2}, Lcom/appodeal/ads/b0;->b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;Lcom/appodeal/ads/networking/LoadingError;)V

    :goto_9
    return-void
.end method

.method public final b(Lcom/appodeal/ads/r;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/r;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/q4;->k()Lcom/appodeal/ads/n0;

    move-result-object v0

    .line 7
    iget-object v3, p0, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    .line 8
    invoke-virtual {v0, v3}, Lcom/appodeal/ads/n0;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)V

    invoke-virtual {p0, p1, v2, v1, v2}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/r;IZZ)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p1, Lcom/appodeal/ads/r;->a:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 11
    invoke-static {}, Lcom/appodeal/ads/q4;->k()Lcom/appodeal/ads/n0;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    .line 13
    invoke-virtual {v0, v1}, Lcom/appodeal/ads/n0;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)V

    invoke-virtual {p0, p1, v2, v2, v2}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/r;IZZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/u;->d:Lcom/appodeal/ads/b0;

    sget-object v1, Lcom/appodeal/ads/networking/LoadingError;->NoFill:Lcom/appodeal/ads/networking/LoadingError;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v2, v1}, Lcom/appodeal/ads/b0;->b(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;Lcom/appodeal/ads/networking/LoadingError;)V

    :goto_0
    return-void
.end method

.method public final c()V
    .locals 8

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v3, v0, 0x2

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/appodeal/ads/u;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v4, 0x0

    move-object v1, v0

    move v2, v3

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/appodeal/ads/u;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcom/appodeal/ads/q4;->b:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/appodeal/ads/u;->u:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/u;->b(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public final d()Lcom/appodeal/ads/modules/common/internal/adtype/AdType;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    return-object v0
.end method

.method public final d(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appodeal/ads/u;->k()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/appodeal/ads/r;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1
    iget-boolean v1, p0, Lcom/appodeal/ads/u;->j:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-boolean p1, v0, Lcom/appodeal/ads/r;->u:Z

    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p0, Lcom/appodeal/ads/u;->d:Lcom/appodeal/ads/b0;

    .line 4
    iget-object v1, v0, Lcom/appodeal/ads/r;->s:Lcom/appodeal/ads/l;

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/appodeal/ads/b0;->g(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/u;->c(Landroid/content/Context;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final e()Lcom/appodeal/ads/segments/g;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/u;->l:Lcom/appodeal/ads/segments/g;

    if-nez v0, :cond_0

    .line 1
    const-string v0, "default"

    invoke-static {v0}, Lcom/appodeal/ads/segments/h;->a(Ljava/lang/String;)Lcom/appodeal/ads/segments/g;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final f()Lcom/appodeal/ads/r;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAdRequestType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/r;

    :goto_0
    if-eqz v0, :cond_1

    .line 1
    iget-object v1, v0, Lcom/appodeal/ads/r;->H:Lcom/appodeal/ads/r;

    if-eqz v1, :cond_1

    .line 2
    iget-wide v2, v1, Lcom/appodeal/ads/r;->t:D

    .line 3
    iget-wide v4, v0, Lcom/appodeal/ads/r;->t:D

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final g()Lcom/appodeal/ads/i;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/u;->e:Lcom/appodeal/ads/i;

    return-object v0
.end method

.method public final h()D
    .locals 4

    invoke-static {}, Lcom/appodeal/ads/segments/n;->c()Lcom/appodeal/ads/segments/k;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/segments/k;->b:Lcom/appodeal/ads/segments/k$a;

    .line 2
    iget-object v1, p0, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    .line 3
    iget-object v0, v0, Lcom/appodeal/ads/segments/k$a;->a:Lorg/json/JSONObject;

    .line 4
    const-string v2, "price_floor"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/appodeal/ads/segments/m;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    :cond_0
    return-wide v2
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/appodeal/ads/u;->i:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/appodeal/ads/u;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appodeal/ads/r;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-boolean v0, v0, Lcom/appodeal/ads/r;->F:Z

    if-nez v0, :cond_1

    .line 4
    :cond_0
    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 5
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 6
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/appodeal/ads/u;->c(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/u;->k:Z

    return v0
.end method

.method public l()Z
    .locals 1

    instance-of v0, p0, Lcom/appodeal/ads/Native$a;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/u;->h:Z

    return v0
.end method

.method public final n()Z
    .locals 2

    invoke-static {}, Lcom/appodeal/ads/segments/n;->c()Lcom/appodeal/ads/segments/k;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/segments/k;->b:Lcom/appodeal/ads/segments/k$a;

    .line 2
    iget-object v1, p0, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/segments/k$a;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)Z

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/u;->i:Z

    return v0
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/u;->j:Z

    return v0
.end method

.method public final q()V
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/u;->i:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/appodeal/ads/u;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/appodeal/ads/u;->w:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/appodeal/ads/u;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appodeal/ads/u;->w:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/u;->u:Z

    invoke-virtual {p0}, Lcom/appodeal/ads/u;->s()V

    :cond_1
    return-void
.end method

.method public final r()Ljava/lang/Long;
    .locals 2

    invoke-virtual {p0}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appodeal/ads/r;->x()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public s()V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/appodeal/ads/u;->c(Landroid/content/Context;)V

    return-void
.end method

.method public t()V
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/u;->v:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appodeal/ads/u;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/u;->v:Z

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/appodeal/ads/u;->c(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/u;->u:Z

    return v0
.end method

.method public v()Z
    .locals 1

    instance-of v0, p0, Lcom/appodeal/ads/Native$a;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
