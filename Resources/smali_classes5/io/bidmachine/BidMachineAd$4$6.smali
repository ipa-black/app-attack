.class Lio/bidmachine/BidMachineAd$4$6;
.super Ljava/lang/Object;
.source "BidMachineAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/BidMachineAd$4;->processFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/bidmachine/BidMachineAd$4;


# direct methods
.method constructor <init>(Lio/bidmachine/BidMachineAd$4;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lio/bidmachine/BidMachineAd$4$6;->this$1:Lio/bidmachine/BidMachineAd$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 439
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4$6;->this$1:Lio/bidmachine/BidMachineAd$4;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$100(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdListener;

    move-result-object v0

    instance-of v0, v0, Lio/bidmachine/AdRewardedListener;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4$6;->this$1:Lio/bidmachine/BidMachineAd$4;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    const-string v1, "notify AdRewarded"

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4$6;->this$1:Lio/bidmachine/BidMachineAd$4;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$100(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdListener;

    move-result-object v0

    check-cast v0, Lio/bidmachine/AdRewardedListener;

    iget-object v1, p0, Lio/bidmachine/BidMachineAd$4$6;->this$1:Lio/bidmachine/BidMachineAd$4;

    iget-object v1, v1, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-interface {v0, v1}, Lio/bidmachine/AdRewardedListener;->onAdRewarded(Lio/bidmachine/IAd;)V

    :cond_0
    return-void
.end method
