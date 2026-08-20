.class public final Lcom/appodeal/ads/d1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/d1;->initialize(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/AdUnit;Lcom/appodeal/ads/AdNetworkMediationParams;Lcom/appodeal/ads/NetworkInitializationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;

.field public final synthetic b:Lcom/appodeal/ads/r;

.field public final synthetic c:Lcom/appodeal/ads/u;

.field public final synthetic d:Lcom/appodeal/ads/NetworkInitializationListener;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/r;Lcom/appodeal/ads/u;Lcom/appodeal/ads/NetworkInitializationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/d1$a;->a:Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;

    iput-object p2, p0, Lcom/appodeal/ads/d1$a;->b:Lcom/appodeal/ads/r;

    iput-object p3, p0, Lcom/appodeal/ads/d1$a;->c:Lcom/appodeal/ads/u;

    iput-object p4, p0, Lcom/appodeal/ads/d1$a;->d:Lcom/appodeal/ads/NetworkInitializationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/d1$a;->a:Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;

    invoke-interface {v0}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getTopActivityFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/appodeal/ads/d1$a;->b:Lcom/appodeal/ads/r;

    new-instance v2, Lcom/appodeal/ads/d1$a$a;

    invoke-direct {v2, p0}, Lcom/appodeal/ads/d1$a$a;-><init>(Lcom/appodeal/ads/d1$a;)V

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/c1;->a(Landroid/app/Activity;Lcom/appodeal/ads/r;Lcom/appodeal/ads/d1$a$a;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/d1$a;->d:Lcom/appodeal/ads/NetworkInitializationListener;

    sget-object v1, Lcom/appodeal/ads/networking/LoadingError;->InternalError:Lcom/appodeal/ads/networking/LoadingError;

    invoke-interface {v0, v1}, Lcom/appodeal/ads/NetworkInitializationListener;->onInitializationFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    :goto_0
    return-void
.end method
