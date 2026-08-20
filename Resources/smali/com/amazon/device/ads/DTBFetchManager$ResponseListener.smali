.class Lcom/amazon/device/ads/DTBFetchManager$ResponseListener;
.super Ljava/lang/Object;
.source "DTBFetchManager.java"

# interfaces
.implements Lcom/amazon/device/ads/DTBAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/DTBFetchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResponseListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/DTBFetchManager;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/DTBFetchManager;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/amazon/device/ads/DTBFetchManager$ResponseListener;->this$0:Lcom/amazon/device/ads/DTBFetchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/amazon/device/ads/AdError;)V
    .locals 3

    .line 163
    iget-object p1, p0, Lcom/amazon/device/ads/DTBFetchManager$ResponseListener;->this$0:Lcom/amazon/device/ads/DTBFetchManager;

    new-instance v0, Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;

    iget-object v1, p0, Lcom/amazon/device/ads/DTBFetchManager$ResponseListener;->this$0:Lcom/amazon/device/ads/DTBFetchManager;

    new-instance v2, Lcom/amazon/device/ads/DTBAdResponse;

    invoke-direct {v2}, Lcom/amazon/device/ads/DTBAdResponse;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;-><init>(Lcom/amazon/device/ads/DTBFetchManager;Lcom/amazon/device/ads/DTBAdResponse;)V

    invoke-static {p1, v0}, Lcom/amazon/device/ads/DTBFetchManager;->access$100(Lcom/amazon/device/ads/DTBFetchManager;Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;)V

    .line 164
    iget-object p1, p0, Lcom/amazon/device/ads/DTBFetchManager$ResponseListener;->this$0:Lcom/amazon/device/ads/DTBFetchManager;

    invoke-static {p1}, Lcom/amazon/device/ads/DTBFetchManager;->access$200(Lcom/amazon/device/ads/DTBFetchManager;)V

    return-void
.end method

.method public onSuccess(Lcom/amazon/device/ads/DTBAdResponse;)V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/amazon/device/ads/DTBFetchManager$ResponseListener;->this$0:Lcom/amazon/device/ads/DTBFetchManager;

    new-instance v1, Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;

    iget-object v2, p0, Lcom/amazon/device/ads/DTBFetchManager$ResponseListener;->this$0:Lcom/amazon/device/ads/DTBFetchManager;

    invoke-direct {v1, v2, p1}, Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;-><init>(Lcom/amazon/device/ads/DTBFetchManager;Lcom/amazon/device/ads/DTBAdResponse;)V

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DTBFetchManager;->access$100(Lcom/amazon/device/ads/DTBFetchManager;Lcom/amazon/device/ads/DTBFetchManager$FetchEntry;)V

    .line 169
    iget-object p1, p0, Lcom/amazon/device/ads/DTBFetchManager$ResponseListener;->this$0:Lcom/amazon/device/ads/DTBFetchManager;

    invoke-static {p1}, Lcom/amazon/device/ads/DTBFetchManager;->access$200(Lcom/amazon/device/ads/DTBFetchManager;)V

    return-void
.end method
