.class public final Lcom/appodeal/ads/d1;
.super Lcom/appodeal/ads/AdNetwork;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/d1$c;,
        Lcom/appodeal/ads/d1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/AdNetwork<",
        "Lcom/appodeal/ads/d1$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/AdNetworkBuilder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/AdNetwork;-><init>(Lcom/appodeal/ads/AdNetworkBuilder;)V

    return-void
.end method


# virtual methods
.method public final getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method

.method public final initialize(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/AdUnit;Lcom/appodeal/ads/AdNetworkMediationParams;Lcom/appodeal/ads/NetworkInitializationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;",
            "Lcom/appodeal/ads/AdUnit;",
            "Lcom/appodeal/ads/AdNetworkMediationParams;",
            "Lcom/appodeal/ads/NetworkInitializationListener<",
            "Lcom/appodeal/ads/d1$b;",
            ">;)V"
        }
    .end annotation

    instance-of p2, p3, Lcom/appodeal/ads/h;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    check-cast p3, Lcom/appodeal/ads/h;

    iget-object p2, p3, Lcom/appodeal/ads/h;->a:Lcom/appodeal/ads/r;

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-nez p2, :cond_1

    sget-object p1, Lcom/appodeal/ads/networking/LoadingError;->AdTypeNotSupportedInAdapter:Lcom/appodeal/ads/networking/LoadingError;

    invoke-interface {p4, p1}, Lcom/appodeal/ads/NetworkInitializationListener;->onInitializationFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void

    :cond_1
    instance-of p3, p2, Lcom/appodeal/ads/r1;

    if-eqz p3, :cond_2

    invoke-static {}, Lcom/appodeal/ads/o1;->a()Lcom/appodeal/ads/o1$a;

    move-result-object v0

    goto :goto_1

    :cond_2
    instance-of p3, p2, Lcom/appodeal/ads/w0;

    if-eqz p3, :cond_3

    invoke-static {}, Lcom/appodeal/ads/t0;->a()Lcom/appodeal/ads/t0$b;

    move-result-object v0

    goto :goto_1

    :cond_3
    instance-of p3, p2, Lcom/appodeal/ads/t2;

    if-eqz p3, :cond_4

    invoke-static {}, Lcom/appodeal/ads/Native;->a()Lcom/appodeal/ads/Native$a;

    move-result-object v0

    goto :goto_1

    :cond_4
    instance-of p3, p2, Lcom/appodeal/ads/k2;

    if-eqz p3, :cond_5

    invoke-static {}, Lcom/appodeal/ads/h2;->a()Lcom/appodeal/ads/h2$b;

    move-result-object v0

    goto :goto_1

    :cond_5
    instance-of p3, p2, Lcom/appodeal/ads/q5;

    if-eqz p3, :cond_6

    invoke-static {}, Lcom/appodeal/ads/w2;->a()Lcom/appodeal/ads/w2$b;

    move-result-object v0

    goto :goto_1

    :cond_6
    instance-of p3, p2, Lcom/appodeal/ads/n4;

    if-eqz p3, :cond_7

    invoke-static {}, Lcom/appodeal/ads/o4;->a()Lcom/appodeal/ads/o4$b;

    move-result-object v0

    :cond_7
    :goto_1
    if-nez v0, :cond_8

    sget-object p1, Lcom/appodeal/ads/networking/LoadingError;->AdTypeNotSupportedInAdapter:Lcom/appodeal/ads/networking/LoadingError;

    invoke-interface {p4, p1}, Lcom/appodeal/ads/NetworkInitializationListener;->onInitializationFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    goto :goto_2

    :cond_8
    new-instance p3, Lcom/appodeal/ads/d1$a;

    invoke-direct {p3, p1, p2, v0, p4}, Lcom/appodeal/ads/d1$a;-><init>(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/r;Lcom/appodeal/ads/u;Lcom/appodeal/ads/NetworkInitializationListener;)V

    .line 1
    sget-object p1, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2
    new-instance p1, Lcom/appodeal/ads/d1$b;

    invoke-direct {p1}, Lcom/appodeal/ads/d1$b;-><init>()V

    invoke-interface {p4, p1}, Lcom/appodeal/ads/NetworkInitializationListener;->onInitializationFinished(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public final setLogging(Z)V
    .locals 0

    return-void
.end method
