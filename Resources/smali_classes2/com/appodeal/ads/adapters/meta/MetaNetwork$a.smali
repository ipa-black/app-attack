.class public final Lcom/appodeal/ads/adapters/meta/MetaNetwork$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/adapters/meta/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/adapters/meta/MetaNetwork;->initialize(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/AdUnit;Lcom/appodeal/ads/AdNetworkMediationParams;Lcom/appodeal/ads/NetworkInitializationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/NetworkInitializationListener;

.field public final synthetic b:Lcom/appodeal/ads/adapters/meta/MetaNetwork$RequestParams;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/NetworkInitializationListener;Lcom/appodeal/ads/adapters/meta/MetaNetwork$RequestParams;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/adapters/meta/MetaNetwork$a;->a:Lcom/appodeal/ads/NetworkInitializationListener;

    iput-object p2, p0, Lcom/appodeal/ads/adapters/meta/MetaNetwork$a;->b:Lcom/appodeal/ads/adapters/meta/MetaNetwork$RequestParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/adapters/meta/MetaNetwork$a;->a:Lcom/appodeal/ads/NetworkInitializationListener;

    sget-object v1, Lcom/appodeal/ads/networking/LoadingError;->InternalError:Lcom/appodeal/ads/networking/LoadingError;

    invoke-interface {v0, v1}, Lcom/appodeal/ads/NetworkInitializationListener;->onInitializationFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public final b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/adapters/meta/MetaNetwork$a;->a:Lcom/appodeal/ads/NetworkInitializationListener;

    iget-object v1, p0, Lcom/appodeal/ads/adapters/meta/MetaNetwork$a;->b:Lcom/appodeal/ads/adapters/meta/MetaNetwork$RequestParams;

    invoke-interface {v0, v1}, Lcom/appodeal/ads/NetworkInitializationListener;->onInitializationFinished(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/appodeal/ads/adapters/meta/MetaNetwork$a;->a:Lcom/appodeal/ads/NetworkInitializationListener;

    sget-object v1, Lcom/appodeal/ads/networking/LoadingError;->InternalError:Lcom/appodeal/ads/networking/LoadingError;

    invoke-interface {v0, v1}, Lcom/appodeal/ads/NetworkInitializationListener;->onInitializationFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    :goto_0
    return-void
.end method
