.class public final synthetic Lcom/amazon/device/ads/DTBAdView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/amazon/device/ads/DTBAdView;


# direct methods
.method public synthetic constructor <init>(Lcom/amazon/device/ads/DTBAdView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdView$$ExternalSyntheticLambda0;->f$0:Lcom/amazon/device/ads/DTBAdView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView$$ExternalSyntheticLambda0;->f$0:Lcom/amazon/device/ads/DTBAdView;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/DTBAdView;->lambda$commonInit$0$com-amazon-device-ads-DTBAdView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
