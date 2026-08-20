.class Lio/bidmachine/BidMachineAd$4$3;
.super Ljava/lang/Object;
.source "BidMachineAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/BidMachineAd$4;->processShowFail(Lio/bidmachine/utils/BMError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/bidmachine/BidMachineAd$4;

.field final synthetic val$error:Lio/bidmachine/utils/BMError;


# direct methods
.method constructor <init>(Lio/bidmachine/BidMachineAd$4;Lio/bidmachine/utils/BMError;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lio/bidmachine/BidMachineAd$4$3;->this$1:Lio/bidmachine/BidMachineAd$4;

    iput-object p2, p0, Lio/bidmachine/BidMachineAd$4$3;->val$error:Lio/bidmachine/utils/BMError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 369
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4$3;->this$1:Lio/bidmachine/BidMachineAd$4;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$100(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdListener;

    move-result-object v0

    instance-of v0, v0, Lio/bidmachine/AdFullScreenListener;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4$3;->this$1:Lio/bidmachine/BidMachineAd$4;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    const-string v1, "notify AdShowFailed"

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4$3;->this$1:Lio/bidmachine/BidMachineAd$4;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$100(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdListener;

    move-result-object v0

    check-cast v0, Lio/bidmachine/AdFullScreenListener;

    iget-object v1, p0, Lio/bidmachine/BidMachineAd$4$3;->this$1:Lio/bidmachine/BidMachineAd$4;

    iget-object v1, v1, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    iget-object v2, p0, Lio/bidmachine/BidMachineAd$4$3;->val$error:Lio/bidmachine/utils/BMError;

    invoke-interface {v0, v1, v2}, Lio/bidmachine/AdFullScreenListener;->onAdShowFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V

    :cond_0
    return-void
.end method
