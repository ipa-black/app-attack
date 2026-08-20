.class public final Lcom/appodeal/ads/modules/libs/network/state/a$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/modules/libs/network/state/a;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/modules/libs/network/state/a;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/modules/libs/network/state/a;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/modules/libs/network/state/a$a;->a:Lcom/appodeal/ads/modules/libs/network/state/a;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    iget-object p1, p0, Lcom/appodeal/ads/modules/libs/network/state/a$a;->a:Lcom/appodeal/ads/modules/libs/network/state/a;

    invoke-static {p1}, Lcom/appodeal/ads/modules/libs/network/state/a;->a(Lcom/appodeal/ads/modules/libs/network/state/a;)V

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    iget-object p1, p0, Lcom/appodeal/ads/modules/libs/network/state/a$a;->a:Lcom/appodeal/ads/modules/libs/network/state/a;

    invoke-static {p1}, Lcom/appodeal/ads/modules/libs/network/state/a;->a(Lcom/appodeal/ads/modules/libs/network/state/a;)V

    return-void
.end method

.method public final onUnavailable()V
    .locals 1

    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    iget-object v0, p0, Lcom/appodeal/ads/modules/libs/network/state/a$a;->a:Lcom/appodeal/ads/modules/libs/network/state/a;

    invoke-static {v0}, Lcom/appodeal/ads/modules/libs/network/state/a;->a(Lcom/appodeal/ads/modules/libs/network/state/a;)V

    return-void
.end method
