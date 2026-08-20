.class public final Lcom/appodeal/ads/l4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/k4;


# instance fields
.field public final a:Lcom/appodeal/ads/modules/libs/network/AppodealEndpoint;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/modules/libs/network/AppodealEndpoints;->INSTANCE:Lcom/appodeal/ads/modules/libs/network/AppodealEndpoints;

    invoke-direct {p0, v0}, Lcom/appodeal/ads/l4;-><init>(Lcom/appodeal/ads/modules/libs/network/AppodealEndpoint;)V

    return-void
.end method

.method public constructor <init>(Lcom/appodeal/ads/modules/libs/network/AppodealEndpoint;)V
    .locals 1

    const-string v0, "appodealEndpoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/l4;->a:Lcom/appodeal/ads/modules/libs/network/AppodealEndpoint;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l4;->a:Lcom/appodeal/ads/modules/libs/network/AppodealEndpoint;

    invoke-interface {v0}, Lcom/appodeal/ads/modules/libs/network/AppodealEndpoint;->popNextEndpoint()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
