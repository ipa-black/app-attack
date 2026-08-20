.class Lio/bidmachine/BidMachineAd$2;
.super Ljava/lang/Object;
.source "BidMachineAd.java"

# interfaces
.implements Lio/bidmachine/AdRequest$AdRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/BidMachineAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/AdRequest$AdRequestListener<",
        "TAdRequestType;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/BidMachineAd;


# direct methods
.method constructor <init>(Lio/bidmachine/BidMachineAd;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lio/bidmachine/BidMachineAd$2;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestExpired(Lio/bidmachine/AdRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;)V"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$2;->this$0:Lio/bidmachine/BidMachineAd;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    if-ne p1, v0, :cond_0

    .line 296
    iget-object p1, p0, Lio/bidmachine/BidMachineAd$2;->this$0:Lio/bidmachine/BidMachineAd;

    iget-object p1, p1, Lio/bidmachine/BidMachineAd;->adProcessCallback:Lio/bidmachine/AdProcessCallback;

    invoke-interface {p1}, Lio/bidmachine/AdProcessCallback;->processExpired()V

    :cond_0
    return-void
.end method

.method public onRequestFailed(Lio/bidmachine/AdRequest;Lio/bidmachine/utils/BMError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;",
            "Lio/bidmachine/utils/BMError;",
            ")V"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$2;->this$0:Lio/bidmachine/BidMachineAd;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    if-ne p1, v0, :cond_0

    .line 289
    iget-object p1, p0, Lio/bidmachine/BidMachineAd$2;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-virtual {p1, p2}, Lio/bidmachine/BidMachineAd;->processRequestFail(Lio/bidmachine/utils/BMError;)V

    :cond_0
    return-void
.end method

.method public onRequestSuccess(Lio/bidmachine/AdRequest;Lio/bidmachine/models/AuctionResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;",
            "Lio/bidmachine/models/AuctionResult;",
            ")V"
        }
    .end annotation

    .line 280
    iget-object p2, p0, Lio/bidmachine/BidMachineAd$2;->this$0:Lio/bidmachine/BidMachineAd;

    iget-object p2, p2, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    if-ne p1, p2, :cond_0

    .line 281
    iget-object p2, p0, Lio/bidmachine/BidMachineAd$2;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-virtual {p2, p1}, Lio/bidmachine/BidMachineAd;->processRequestSuccess(Lio/bidmachine/AdRequest;)V

    :cond_0
    return-void
.end method
