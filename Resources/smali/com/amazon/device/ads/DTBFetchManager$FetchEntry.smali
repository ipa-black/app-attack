.class Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;
.super Ljava/lang/Object;
.source "DTBFetchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/DTBFetchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FetchEntry"
.end annotation


# instance fields
.field response:Lcom/amazon/device/ads/DTBAdResponse;

.field final synthetic this$0:Lcom/amazon/device/ads/DTBFetchManager;

.field timestamp:J


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/DTBFetchManager;Lcom/amazon/device/ads/DTBAdResponse;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;->this$0:Lcom/amazon/device/ads/DTBFetchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p2, p0, Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;->response:Lcom/amazon/device/ads/DTBAdResponse;

    .line 136
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;->timestamp:J

    return-void
.end method
