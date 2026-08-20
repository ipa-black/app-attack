.class Lio/bidmachine/BidMachineImpl$4;
.super Ljava/lang/Object;
.source "BidMachineImpl.java"

# interfaces
.implements Lio/bidmachine/InitialRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/BidMachineImpl;->requestInitData(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/BidMachineImpl;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lio/bidmachine/BidMachineImpl;Landroid/content/Context;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lio/bidmachine/BidMachineImpl$4;->this$0:Lio/bidmachine/BidMachineImpl;

    iput-object p2, p0, Lio/bidmachine/BidMachineImpl$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lio/bidmachine/utils/BMError;)V
    .locals 2

    .line 222
    iget-object p1, p0, Lio/bidmachine/BidMachineImpl$4;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lio/bidmachine/BidMachineSharedPreference;->getInitResponse(Landroid/content/Context;)Lio/bidmachine/protobuf/InitResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 224
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl$4;->this$0:Lio/bidmachine/BidMachineImpl;

    iget-object v1, p0, Lio/bidmachine/BidMachineImpl$4;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdNetworksList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/bidmachine/BidMachineImpl;->initializeInitNetworks(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onFail(Ljava/lang/Object;)V
    .locals 0

    .line 204
    check-cast p1, Lio/bidmachine/utils/BMError;

    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineImpl$4;->onFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onSuccess(Lio/bidmachine/protobuf/InitResponse;)V
    .locals 2

    .line 207
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl$4;->this$0:Lio/bidmachine/BidMachineImpl;

    iget-object v0, v0, Lio/bidmachine/BidMachineImpl;->initialRequest:Lio/bidmachine/InitialRequest;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl$4;->this$0:Lio/bidmachine/BidMachineImpl;

    iget-object v0, v0, Lio/bidmachine/BidMachineImpl;->initialRequest:Lio/bidmachine/InitialRequest;

    invoke-virtual {v0}, Lio/bidmachine/InitialRequest;->destroy()V

    .line 209
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl$4;->this$0:Lio/bidmachine/BidMachineImpl;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/bidmachine/BidMachineImpl;->initialRequest:Lio/bidmachine/InitialRequest;

    :cond_0
    if-eqz p1, :cond_1

    .line 212
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl$4;->this$0:Lio/bidmachine/BidMachineImpl;

    iget-object v1, p0, Lio/bidmachine/BidMachineImpl$4;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lio/bidmachine/BidMachineImpl;->access$300(Lio/bidmachine/BidMachineImpl;Landroid/content/Context;Lio/bidmachine/protobuf/InitResponse;)V

    .line 213
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl$4;->this$0:Lio/bidmachine/BidMachineImpl;

    invoke-virtual {v0, p1}, Lio/bidmachine/BidMachineImpl;->handleInitResponse(Lio/bidmachine/protobuf/InitResponse;)V

    .line 214
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl$4;->val$context:Landroid/content/Context;

    invoke-static {v0, p1}, Lio/bidmachine/BidMachineSharedPreference;->storeInitResponse(Landroid/content/Context;Lio/bidmachine/protobuf/InitResponse;)V

    .line 216
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl$4;->this$0:Lio/bidmachine/BidMachineImpl;

    iget-object v1, p0, Lio/bidmachine/BidMachineImpl$4;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdNetworksList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/bidmachine/BidMachineImpl;->initializeInitNetworks(Landroid/content/Context;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 204
    check-cast p1, Lio/bidmachine/protobuf/InitResponse;

    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineImpl$4;->onSuccess(Lio/bidmachine/protobuf/InitResponse;)V

    return-void
.end method
