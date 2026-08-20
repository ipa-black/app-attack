.class public final Lcom/appodeal/ads/adapters/nast/native_ad/b;
.super Lcom/appodeal/ads/unified/UnifiedNative;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/adapters/nast/native_ad/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/unified/UnifiedNative<",
        "Lcom/appodeal/ads/adapters/nast/NASTNetwork$RequestParams;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedNative;-><init>()V

    return-void
.end method


# virtual methods
.method public final load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 1

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedNativeParams;

    check-cast p3, Lcom/appodeal/ads/adapters/nast/NASTNetwork$RequestParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    .line 1
    invoke-interface {p1}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p3, Lcom/appodeal/ads/adapters/nast/NASTNetwork$RequestParams;->url:Ljava/lang/String;

    iget-object p3, p3, Lcom/appodeal/ads/adapters/nast/NASTNetwork$RequestParams;->restrictedData:Lcom/appodeal/ads/RestrictedData;

    new-instance v0, Lcom/appodeal/ads/adapters/nast/native_ad/a;

    invoke-direct {v0, p4}, Lcom/appodeal/ads/adapters/nast/native_ad/a;-><init>(Lcom/appodeal/ads/unified/UnifiedNativeCallback;)V

    invoke-static {p1, p2, p3, p4, v0}, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->requestNast(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/ads/RestrictedData;Lcom/appodeal/ads/unified/UnifiedAdCallback;Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    return-void
.end method
