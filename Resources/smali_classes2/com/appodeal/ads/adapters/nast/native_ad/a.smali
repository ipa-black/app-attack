.class public final Lcom/appodeal/ads/adapters/nast/native_ad/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/unified/UnifiedNativeCallback;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/unified/UnifiedNativeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/adapters/nast/native_ad/a;->a:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Lcom/appodeal/ads/networking/LoadingError;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/adapters/nast/native_ad/a;->a:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/unified/UnifiedNativeCallback;->onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public final onSuccess(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    .line 1
    invoke-static {p2}, Lcom/appodeal/ads/adapters/nast/native_ad/b$a;->a(Ljava/lang/String;)Lcom/appodeal/ads/adapters/nast/native_ad/b$a;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/appodeal/ads/adapters/nast/native_ad/a;->a:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    sget-object p2, Lcom/appodeal/ads/networking/LoadingError;->InternalError:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/unified/UnifiedNativeCallback;->onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/appodeal/ads/adapters/nast/native_ad/a;->a:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    invoke-virtual {p2, p1}, Lcom/appodeal/ads/unified/UnifiedNativeCallback;->onAdLoaded(Lcom/appodeal/ads/unified/UnifiedNativeAd;)V

    :goto_0
    return-void
.end method
