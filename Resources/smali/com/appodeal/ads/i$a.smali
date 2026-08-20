.class public final Lcom/appodeal/ads/i$a;
.super Lcom/appodeal/ads/utils/c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/utils/c0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/appodeal/ads/utils/app/AppState;)V
    .locals 3

    .line 6
    sget-object v0, Lcom/appodeal/ads/i;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/unified/UnifiedAppStateChangeListener;

    invoke-static {p1}, Lcom/appodeal/ads/utils/c;->a(Landroid/app/Activity;)Z

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/appodeal/ads/unified/UnifiedAppStateChangeListener;->onAppStateChanged(Landroid/app/Activity;Lcom/appodeal/ads/utils/app/AppState;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    sget-object p1, Lcom/appodeal/ads/i;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/unified/UnifiedAppStateChangeListener;

    sget-object v1, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 3
    iget-object v1, v1, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 4
    invoke-virtual {v1}, Lcom/appodeal/ads/context/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/appodeal/ads/utils/app/AppState;->ConfChanged:Lcom/appodeal/ads/utils/app/AppState;

    invoke-static {v1}, Lcom/appodeal/ads/utils/c;->a(Landroid/app/Activity;)Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/appodeal/ads/unified/UnifiedAppStateChangeListener;->onAppStateChanged(Landroid/app/Activity;Lcom/appodeal/ads/utils/app/AppState;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
