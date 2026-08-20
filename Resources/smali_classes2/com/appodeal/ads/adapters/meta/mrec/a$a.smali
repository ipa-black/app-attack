.class public final Lcom/appodeal/ads/adapters/meta/mrec/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/meta/mrec/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/appodeal/ads/unified/UnifiedMrecCallback;

.field public final synthetic b:Lcom/appodeal/ads/adapters/meta/mrec/a;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/adapters/meta/mrec/a;Lcom/appodeal/ads/unified/UnifiedMrecCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/adapters/meta/mrec/a$a;->b:Lcom/appodeal/ads/adapters/meta/mrec/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/appodeal/ads/adapters/meta/mrec/a$a;->a:Lcom/appodeal/ads/unified/UnifiedMrecCallback;

    return-void
.end method


# virtual methods
.method public final onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0

    iget-object p1, p0, Lcom/appodeal/ads/adapters/meta/mrec/a$a;->a:Lcom/appodeal/ads/unified/UnifiedMrecCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedMrecCallback;->onAdClicked()V

    return-void
.end method

.method public final onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 1

    iget-object p1, p0, Lcom/appodeal/ads/adapters/meta/mrec/a$a;->a:Lcom/appodeal/ads/unified/UnifiedMrecCallback;

    iget-object v0, p0, Lcom/appodeal/ads/adapters/meta/mrec/a$a;->b:Lcom/appodeal/ads/adapters/meta/mrec/a;

    invoke-static {v0}, Lcom/appodeal/ads/adapters/meta/mrec/a;->a(Lcom/appodeal/ads/adapters/meta/mrec/a;)Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appodeal/ads/unified/UnifiedMrecCallback;->onAdLoaded(Landroid/view/View;)V

    return-void
.end method

.method public final onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->destroy()V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/appodeal/ads/adapters/meta/mrec/a$a;->a:Lcom/appodeal/ads/unified/UnifiedMrecCallback;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/appodeal/ads/unified/UnifiedMrecCallback;->printError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/appodeal/ads/adapters/meta/mrec/a$a;->a:Lcom/appodeal/ads/unified/UnifiedMrecCallback;

    invoke-static {p2}, Lcom/appodeal/ads/adapters/meta/MetaNetwork;->mapError(Lcom/facebook/ads/AdError;)Lcom/appodeal/ads/networking/LoadingError;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/unified/UnifiedMrecCallback;->onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public final onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    return-void
.end method
