.class public final synthetic Lcom/amazon/device/ads/DTBAdView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/amazon/device/ads/DTBAdView;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/amazon/device/ads/DTBAdView;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdView$$ExternalSyntheticLambda1;->f$0:Lcom/amazon/device/ads/DTBAdView;

    iput-object p2, p0, Lcom/amazon/device/ads/DTBAdView$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView$$ExternalSyntheticLambda1;->f$0:Lcom/amazon/device/ads/DTBAdView;

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBAdView;->lambda$loadUrl$1$com-amazon-device-ads-DTBAdView(Ljava/lang/String;)V

    return-void
.end method
