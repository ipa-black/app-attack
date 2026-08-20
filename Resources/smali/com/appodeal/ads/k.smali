.class public final Lcom/appodeal/ads/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/NetworkInitializationListener;


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/l$a;

.field public final synthetic b:Lcom/appodeal/ads/r;

.field public final synthetic c:I

.field public final synthetic d:Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;

.field public final synthetic e:Lcom/appodeal/ads/l;


# direct methods
.method public static synthetic $r8$lambda$WfBBhucxKYFGZXnr1gp9yvzjZkI(Lcom/appodeal/ads/k;Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Ljava/lang/Object;Lcom/appodeal/ads/l$a;Lcom/appodeal/ads/r;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/k;->a(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Ljava/lang/Object;Lcom/appodeal/ads/l$a;Lcom/appodeal/ads/r;)V

    return-void
.end method

.method public constructor <init>(Lcom/appodeal/ads/l;Lcom/appodeal/ads/n$a;Lcom/appodeal/ads/r;ILcom/appodeal/ads/context/b;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/k;->e:Lcom/appodeal/ads/l;

    iput-object p2, p0, Lcom/appodeal/ads/k;->a:Lcom/appodeal/ads/l$a;

    iput-object p3, p0, Lcom/appodeal/ads/k;->b:Lcom/appodeal/ads/r;

    iput p4, p0, Lcom/appodeal/ads/k;->c:I

    iput-object p5, p0, Lcom/appodeal/ads/k;->d:Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/appodeal/ads/l$a;Lcom/appodeal/ads/r;)V
    .locals 0

    sget-object p1, Lcom/appodeal/ads/networking/LoadingError;->AdTypeNotSupportedInAdapter:Lcom/appodeal/ads/networking/LoadingError;

    check-cast p0, Lcom/appodeal/ads/n$a;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/n$a;->a(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public static synthetic a(Lcom/appodeal/ads/l$a;Lcom/appodeal/ads/r;Lcom/appodeal/ads/networking/LoadingError;)V
    .locals 0

    check-cast p0, Lcom/appodeal/ads/n$a;

    invoke-virtual {p0, p2}, Lcom/appodeal/ads/n$a;->a(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method private a(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Ljava/lang/Object;Lcom/appodeal/ads/l$a;Lcom/appodeal/ads/r;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/k;->e:Lcom/appodeal/ads/l;

    .line 1
    iget-object v2, v0, Lcom/appodeal/ads/l;->g:Lcom/appodeal/ads/unified/UnifiedAdParams;

    .line 2
    iget-object v4, v0, Lcom/appodeal/ads/l;->h:Lcom/appodeal/ads/unified/UnifiedAdCallback;

    .line 3
    iget-object v5, v0, Lcom/appodeal/ads/l;->f:Lcom/appodeal/ads/unified/UnifiedAd;

    move-object v1, p1

    move-object v3, p2

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/appodeal/ads/l;->a(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;Lcom/appodeal/ads/unified/UnifiedAd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    check-cast p3, Lcom/appodeal/ads/n$a;

    .line 5
    iget-object p2, p3, Lcom/appodeal/ads/n$a;->a:Lcom/appodeal/ads/n;

    .line 6
    iget-object p2, p2, Lcom/appodeal/ads/n;->a:Lcom/appodeal/ads/o;

    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    instance-of p1, p1, Lorg/json/JSONException;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/appodeal/ads/networking/LoadingError;->IncorrectAdunit:Lcom/appodeal/ads/networking/LoadingError;

    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/appodeal/ads/networking/LoadingError;->InternalError:Lcom/appodeal/ads/networking/LoadingError;

    .line 10
    :goto_0
    check-cast p2, Lcom/appodeal/ads/v;

    .line 11
    iget-object p3, p2, Lcom/appodeal/ads/v;->f:Lcom/appodeal/ads/u;

    .line 12
    iget-object p3, p3, Lcom/appodeal/ads/u;->d:Lcom/appodeal/ads/b0;

    .line 13
    iget-object p4, p2, Lcom/appodeal/ads/v;->e:Lcom/appodeal/ads/r;

    iget-object p2, p2, Lcom/appodeal/ads/v;->d:Lcom/appodeal/ads/l;

    invoke-virtual {p3, p4, p2, p1}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/networking/LoadingError;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final onInitializationFailed(Lcom/appodeal/ads/networking/LoadingError;)V
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/k;->a:Lcom/appodeal/ads/l$a;

    iget-object v1, p0, Lcom/appodeal/ads/k;->b:Lcom/appodeal/ads/r;

    new-instance v2, Lcom/appodeal/ads/k$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1, p1}, Lcom/appodeal/ads/k$$ExternalSyntheticLambda0;-><init>(Lcom/appodeal/ads/l$a;Lcom/appodeal/ads/r;Lcom/appodeal/ads/networking/LoadingError;)V

    .line 1
    sget-object p1, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onInitializationFinished(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/appodeal/ads/k;->e:Lcom/appodeal/ads/l;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/l;->c:Lcom/appodeal/ads/f5;

    .line 2
    invoke-interface {v0}, Lcom/appodeal/ads/AdUnit;->getRequestResult()Lcom/appodeal/ads/e0;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/k;->e:Lcom/appodeal/ads/l;

    .line 3
    iget-object v1, v0, Lcom/appodeal/ads/l;->b:Lcom/appodeal/ads/AdNetwork;

    .line 4
    invoke-virtual {v0, v1}, Lcom/appodeal/ads/l;->a(Lcom/appodeal/ads/AdNetwork;)Lcom/appodeal/ads/unified/UnifiedAd;

    move-result-object v1

    .line 5
    iput-object v1, v0, Lcom/appodeal/ads/l;->f:Lcom/appodeal/ads/unified/UnifiedAd;

    .line 6
    iget-object v0, p0, Lcom/appodeal/ads/k;->e:Lcom/appodeal/ads/l;

    .line 7
    iget-object v1, v0, Lcom/appodeal/ads/l;->f:Lcom/appodeal/ads/unified/UnifiedAd;

    if-nez v1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/appodeal/ads/k;->a:Lcom/appodeal/ads/l$a;

    iget-object v0, p0, Lcom/appodeal/ads/k;->b:Lcom/appodeal/ads/r;

    new-instance v1, Lcom/appodeal/ads/k$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, v0}, Lcom/appodeal/ads/k$$ExternalSyntheticLambda1;-><init>(Lcom/appodeal/ads/l$a;Lcom/appodeal/ads/r;)V

    goto :goto_0

    .line 10
    :cond_0
    iget v1, p0, Lcom/appodeal/ads/k;->c:I

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/l;->a(I)Lcom/appodeal/ads/unified/UnifiedAdParams;

    move-result-object v1

    .line 11
    iput-object v1, v0, Lcom/appodeal/ads/l;->g:Lcom/appodeal/ads/unified/UnifiedAdParams;

    .line 12
    iget-object v0, p0, Lcom/appodeal/ads/k;->e:Lcom/appodeal/ads/l;

    invoke-virtual {v0}, Lcom/appodeal/ads/l;->c()Lcom/appodeal/ads/unified/UnifiedAdCallback;

    move-result-object v1

    .line 13
    iput-object v1, v0, Lcom/appodeal/ads/l;->h:Lcom/appodeal/ads/unified/UnifiedAdCallback;

    .line 14
    iget-object v4, p0, Lcom/appodeal/ads/k;->d:Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;

    iget-object v6, p0, Lcom/appodeal/ads/k;->a:Lcom/appodeal/ads/l$a;

    iget-object v7, p0, Lcom/appodeal/ads/k;->b:Lcom/appodeal/ads/r;

    new-instance v1, Lcom/appodeal/ads/k$$ExternalSyntheticLambda2;

    move-object v2, v1

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/appodeal/ads/k$$ExternalSyntheticLambda2;-><init>(Lcom/appodeal/ads/k;Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Ljava/lang/Object;Lcom/appodeal/ads/l$a;Lcom/appodeal/ads/r;)V

    .line 9
    :goto_0
    sget-object p1, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
