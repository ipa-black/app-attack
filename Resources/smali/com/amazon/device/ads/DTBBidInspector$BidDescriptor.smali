.class Lcom/amazon/device/ads/DTBBidInspector$BidDescriptor;
.super Ljava/lang/Object;
.source "DTBBidInspector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/DTBBidInspector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BidDescriptor"
.end annotation


# instance fields
.field bidId:Ljava/lang/String;

.field bidTime:J

.field final synthetic this$0:Lcom/amazon/device/ads/DTBBidInspector;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/DTBBidInspector;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/amazon/device/ads/DTBBidInspector$BidDescriptor;->this$0:Lcom/amazon/device/ads/DTBBidInspector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
