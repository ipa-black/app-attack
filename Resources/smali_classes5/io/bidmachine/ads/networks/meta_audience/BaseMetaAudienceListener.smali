.class abstract Lio/bidmachine/ads/networks/meta_audience/BaseMetaAudienceListener;
.super Ljava/lang/Object;
.source "BaseMetaAudienceListener.java"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UnifiedAdCallbackType::",
        "Lio/bidmachine/unified/UnifiedAdCallback;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/AdListener;"
    }
.end annotation


# instance fields
.field private final callback:Lio/bidmachine/unified/UnifiedAdCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TUnifiedAdCallbackType;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/bidmachine/unified/UnifiedAdCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUnifiedAdCallbackType;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lio/bidmachine/ads/networks/meta_audience/BaseMetaAudienceListener;->callback:Lio/bidmachine/unified/UnifiedAdCallback;

    return-void
.end method

.method private static mapError(Lcom/facebook/ads/AdError;)Lio/bidmachine/utils/BMError;
    .locals 1

    if-eqz p0, :cond_2

    .line 41
    invoke-virtual {p0}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result p0

    const/16 v0, 0x7d9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xbb9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    .line 43
    :pswitch_0
    sget-object p0, Lio/bidmachine/utils/BMError;->NoConnection:Lio/bidmachine/utils/BMError;

    return-object p0

    .line 50
    :cond_0
    :pswitch_1
    invoke-static {}, Lio/bidmachine/utils/BMError;->noFill()Lio/bidmachine/utils/BMError;

    move-result-object p0

    return-object p0

    .line 52
    :cond_1
    sget-object p0, Lio/bidmachine/utils/BMError;->TimeoutError:Lio/bidmachine/utils/BMError;

    return-object p0

    .line 55
    :cond_2
    :goto_0
    const-string p0, "Unknown error"

    invoke-static {p0}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method getCallback()Lio/bidmachine/unified/UnifiedAdCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TUnifiedAdCallbackType;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lio/bidmachine/ads/networks/meta_audience/BaseMetaAudienceListener;->callback:Lio/bidmachine/unified/UnifiedAdCallback;

    return-object v0
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 35
    iget-object p1, p0, Lio/bidmachine/ads/networks/meta_audience/BaseMetaAudienceListener;->callback:Lio/bidmachine/unified/UnifiedAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdClicked()V

    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lio/bidmachine/ads/networks/meta_audience/BaseMetaAudienceListener;->callback:Lio/bidmachine/unified/UnifiedAdCallback;

    invoke-static {p2}, Lio/bidmachine/ads/networks/meta_audience/BaseMetaAudienceListener;->mapError(Lcom/facebook/ads/AdError;)Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-interface {v0, p2}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    .line 30
    invoke-interface {p1}, Lcom/facebook/ads/Ad;->destroy()V

    return-void
.end method
