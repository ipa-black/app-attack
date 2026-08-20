.class public final Lcom/appodeal/ads/utils/n$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/utils/n;-><init>(Landroid/content/Context;Lcom/appodeal/ads/utils/n$b;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/utils/n;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/utils/n;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/utils/n$a;->a:Lcom/appodeal/ads/utils/n;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/utils/n$a;->a:Lcom/appodeal/ads/utils/n;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/utils/n;->b:Lcom/appodeal/ads/utils/n$b;

    if-eqz v0, :cond_2

    .line 2
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/explorestack/iab/vast/VastRequest;

    invoke-interface {v0, v1, p1}, Lcom/appodeal/ads/utils/n$b;->a(Landroid/net/Uri;Lcom/explorestack/iab/vast/VastRequest;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/appodeal/ads/utils/n$b;->a()V

    :cond_2
    :goto_0
    return-void
.end method
