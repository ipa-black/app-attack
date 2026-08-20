.class Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$1;
.super Ljava/lang/Object;
.source "IronSourceNetwork.java"

# interfaces
.implements Lcom/appodeal/ads/unified/UnifiedAppStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppStateChanged(Landroid/app/Activity;Lcom/appodeal/ads/utils/app/AppState;Z)V
    .locals 0

    if-nez p3, :cond_2

    .line 64
    sget-object p3, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$3;->$SwitchMap$com$appodeal$ads$utils$app$AppState:[I

    invoke-virtual {p2}, Lcom/appodeal/ads/utils/app/AppState;->ordinal()I

    move-result p2

    aget p2, p3, p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_1

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->onPause(Landroid/app/Activity;)V

    goto :goto_0

    .line 66
    :cond_1
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->onResume(Landroid/app/Activity;)V

    :cond_2
    :goto_0
    return-void
.end method
