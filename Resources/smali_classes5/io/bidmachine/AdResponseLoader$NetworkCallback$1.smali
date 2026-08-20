.class Lio/bidmachine/AdResponseLoader$NetworkCallback$1;
.super Ljava/lang/Object;
.source "AdResponseLoader.java"

# interfaces
.implements Lio/bidmachine/ProtoTransformer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdResponseLoader$NetworkCallback;->onSuccess(Lcom/explorestack/protobuf/openrtb/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/ProtoTransformer$Listener<",
        "Lio/bidmachine/AdResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/AdResponseLoader$NetworkCallback;


# direct methods
.method constructor <init>(Lio/bidmachine/AdResponseLoader$NetworkCallback;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback$1;->this$0:Lio/bidmachine/AdResponseLoader$NetworkCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lio/bidmachine/utils/BMError;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback$1;->this$0:Lio/bidmachine/AdResponseLoader$NetworkCallback;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/bidmachine/AdResponseLoader$NetworkCallback;->access$100(Lio/bidmachine/AdResponseLoader$NetworkCallback;Lio/bidmachine/AdResponse;)V

    .line 136
    iget-object v0, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback$1;->this$0:Lio/bidmachine/AdResponseLoader$NetworkCallback;

    invoke-static {v0, p1}, Lio/bidmachine/AdResponseLoader$NetworkCallback;->access$300(Lio/bidmachine/AdResponseLoader$NetworkCallback;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onSuccess(Lio/bidmachine/AdResponse;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback$1;->this$0:Lio/bidmachine/AdResponseLoader$NetworkCallback;

    invoke-static {v0}, Lio/bidmachine/AdResponseLoader$NetworkCallback;->access$000(Lio/bidmachine/AdResponseLoader$NetworkCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lio/bidmachine/AdResponseStatus;->Idle:Lio/bidmachine/AdResponseStatus;

    goto :goto_0

    .line 124
    :cond_0
    sget-object v0, Lio/bidmachine/AdResponseStatus;->Busy:Lio/bidmachine/AdResponseStatus;

    .line 125
    :goto_0
    invoke-virtual {p1, v0}, Lio/bidmachine/AdResponse;->setStatus(Lio/bidmachine/AdResponseStatus;)V

    .line 126
    invoke-static {}, Lio/bidmachine/AdResponseManager;->get()Lio/bidmachine/AdResponseManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/AdResponseManager;->store(Lio/bidmachine/AdResponse;)V

    .line 127
    iget-object v0, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback$1;->this$0:Lio/bidmachine/AdResponseLoader$NetworkCallback;

    invoke-static {v0, p1}, Lio/bidmachine/AdResponseLoader$NetworkCallback;->access$100(Lio/bidmachine/AdResponseLoader$NetworkCallback;Lio/bidmachine/AdResponse;)V

    .line 129
    iget-object v0, p0, Lio/bidmachine/AdResponseLoader$NetworkCallback$1;->this$0:Lio/bidmachine/AdResponseLoader$NetworkCallback;

    invoke-static {v0, p1}, Lio/bidmachine/AdResponseLoader$NetworkCallback;->access$200(Lio/bidmachine/AdResponseLoader$NetworkCallback;Lio/bidmachine/AdResponse;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 119
    check-cast p1, Lio/bidmachine/AdResponse;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdResponseLoader$NetworkCallback$1;->onSuccess(Lio/bidmachine/AdResponse;)V

    return-void
.end method
