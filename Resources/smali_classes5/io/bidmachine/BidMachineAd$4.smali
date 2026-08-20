.class Lio/bidmachine/BidMachineAd$4;
.super Ljava/lang/Object;
.source "BidMachineAd.java"

# interfaces
.implements Lio/bidmachine/AdProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/BidMachineAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/BidMachineAd;


# direct methods
.method constructor <init>(Lio/bidmachine/BidMachineAd;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processBeforeStartVisibilityTracker()V
    .locals 0

    return-void
.end method

.method public processClicked()V
    .locals 2

    .line 411
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$State;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd$State;->ordinal()I

    move-result v0

    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Success:Lio/bidmachine/BidMachineAd$State;

    invoke-virtual {v1}, Lio/bidmachine/BidMachineAd$State;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    const-string v1, "processClicked"

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 415
    new-instance v0, Lio/bidmachine/BidMachineAd$4$5;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$4$5;-><init>(Lio/bidmachine/BidMachineAd$4;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public processClosed()V
    .locals 3

    .line 450
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$State;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd$State;->ordinal()I

    move-result v0

    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Success:Lio/bidmachine/BidMachineAd$State;

    invoke-virtual {v1}, Lio/bidmachine/BidMachineAd$State;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$200(Lio/bidmachine/BidMachineAd;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "processClosed (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 454
    new-instance v0, Lio/bidmachine/BidMachineAd$4$7;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$4$7;-><init>(Lio/bidmachine/BidMachineAd$4;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public processDestroy()V
    .locals 2

    .line 487
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    const-string v1, "destroy requested"

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Destroyed:Lio/bidmachine/BidMachineAd$State;

    invoke-static {v0, v1}, Lio/bidmachine/BidMachineAd;->access$002(Lio/bidmachine/BidMachineAd;Lio/bidmachine/BidMachineAd$State;)Lio/bidmachine/BidMachineAd$State;

    .line 490
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {v0, p0}, Lio/bidmachine/AdResponse;->removeCallback(Lio/bidmachine/AdProcessCallback;)V

    .line 494
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    iget-object v1, v0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    invoke-static {v0, v1}, Lio/bidmachine/BidMachineAd;->access$300(Lio/bidmachine/BidMachineAd;Lio/bidmachine/AdRequest;)V

    .line 496
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    invoke-virtual {v0}, Lio/bidmachine/AdRequest;->destroy()V

    .line 497
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    :cond_1
    return-void
.end method

.method public processExpired()V
    .locals 2

    .line 469
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$State;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd$State;->ordinal()I

    move-result v0

    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Success:Lio/bidmachine/BidMachineAd$State;

    invoke-virtual {v1}, Lio/bidmachine/BidMachineAd$State;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    const-string v1, "processExpired"

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Expired:Lio/bidmachine/BidMachineAd$State;

    invoke-static {v0, v1}, Lio/bidmachine/BidMachineAd;->access$002(Lio/bidmachine/BidMachineAd;Lio/bidmachine/BidMachineAd$State;)Lio/bidmachine/BidMachineAd$State;

    .line 474
    new-instance v0, Lio/bidmachine/BidMachineAd$4$8;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$4$8;-><init>(Lio/bidmachine/BidMachineAd$4;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public processFillAd()V
    .locals 2

    .line 356
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$State;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd$State;->ordinal()I

    move-result v0

    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Success:Lio/bidmachine/BidMachineAd$State;

    invoke-virtual {v1}, Lio/bidmachine/BidMachineAd$State;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    const-string v1, "processFillAd"

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    return-void
.end method

.method public processFinished()V
    .locals 2

    .line 428
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$State;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd$State;->ordinal()I

    move-result v0

    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Success:Lio/bidmachine/BidMachineAd$State;

    invoke-virtual {v1}, Lio/bidmachine/BidMachineAd$State;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$200(Lio/bidmachine/BidMachineAd;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 434
    :cond_1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/bidmachine/BidMachineAd;->access$202(Lio/bidmachine/BidMachineAd;Z)Z

    .line 435
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    const-string v1, "processFinished"

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 436
    new-instance v0, Lio/bidmachine/BidMachineAd$4$6;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$4$6;-><init>(Lio/bidmachine/BidMachineAd$4;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public processLoadFail(Lio/bidmachine/utils/BMError;)V
    .locals 3

    .line 336
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    const-string v1, "processLoadFail - %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Failed:Lio/bidmachine/BidMachineAd$State;

    invoke-static {v0, v1}, Lio/bidmachine/BidMachineAd;->access$002(Lio/bidmachine/BidMachineAd;Lio/bidmachine/BidMachineAd$State;)Lio/bidmachine/BidMachineAd$State;

    .line 338
    new-instance v0, Lio/bidmachine/BidMachineAd$4$2;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/BidMachineAd$4$2;-><init>(Lio/bidmachine/BidMachineAd$4;Lio/bidmachine/utils/BMError;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public processLoadSuccess()V
    .locals 2

    .line 317
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$State;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd$State;->ordinal()I

    move-result v0

    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Loading:Lio/bidmachine/BidMachineAd$State;

    invoke-virtual {v1}, Lio/bidmachine/BidMachineAd$State;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    const-string v1, "processLoadSuccess"

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Success:Lio/bidmachine/BidMachineAd$State;

    invoke-static {v0, v1}, Lio/bidmachine/BidMachineAd;->access$002(Lio/bidmachine/BidMachineAd;Lio/bidmachine/BidMachineAd$State;)Lio/bidmachine/BidMachineAd$State;

    .line 322
    new-instance v0, Lio/bidmachine/BidMachineAd$4$1;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$4$1;-><init>(Lio/bidmachine/BidMachineAd$4;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public processShowFail(Lio/bidmachine/utils/BMError;)V
    .locals 3

    .line 365
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    const-string v1, "processShowFail - %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 366
    new-instance v0, Lio/bidmachine/BidMachineAd$4$3;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/BidMachineAd$4$3;-><init>(Lio/bidmachine/BidMachineAd$4;Lio/bidmachine/utils/BMError;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public processShown()V
    .locals 2

    .line 380
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$State;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd$State;->ordinal()I

    move-result v0

    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Success:Lio/bidmachine/BidMachineAd$State;

    invoke-virtual {v1}, Lio/bidmachine/BidMachineAd$State;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    const-string v1, "processShown"

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 384
    new-instance v0, Lio/bidmachine/BidMachineAd$4$4;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$4$4;-><init>(Lio/bidmachine/BidMachineAd$4;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public processVisibilityTrackerImpression()V
    .locals 2

    .line 402
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$State;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd$State;->ordinal()I

    move-result v0

    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Success:Lio/bidmachine/BidMachineAd$State;

    invoke-virtual {v1}, Lio/bidmachine/BidMachineAd$State;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$4;->this$0:Lio/bidmachine/BidMachineAd;

    const-string v1, "processImpression"

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    return-void
.end method

.method public processVisibilityTrackerShown(Lio/bidmachine/unified/UnifiedAd;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/unified/UnifiedAd<",
            "**>;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
