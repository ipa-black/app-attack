.class Lio/bidmachine/AdResponseLoader;
.super Ljava/lang/Object;
.source "AdResponseLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/AdResponseLoader$NetworkCallback;,
        Lio/bidmachine/AdResponseLoader$Listener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private callback:Lio/bidmachine/AdResponseLoader$NetworkCallback;

.field private final id:Ljava/lang/String;

.field private listener:Lio/bidmachine/AdResponseLoader$Listener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/bidmachine/AdResponseLoader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "AdResponseLoader"

    invoke-static {v0, p0}, Lio/bidmachine/core/Utils;->generateTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/AdResponseLoader;->TAG:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lio/bidmachine/AdResponseLoader;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 66
    iget-object v0, p0, Lio/bidmachine/AdResponseLoader;->TAG:Ljava/lang/String;

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lio/bidmachine/AdResponseLoader;->listener:Lio/bidmachine/AdResponseLoader$Listener;

    .line 69
    iget-object v1, p0, Lio/bidmachine/AdResponseLoader;->callback:Lio/bidmachine/AdResponseLoader$NetworkCallback;

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v1}, Lio/bidmachine/AdResponseLoader$NetworkCallback;->clear()V

    .line 71
    iput-object v0, p0, Lio/bidmachine/AdResponseLoader;->callback:Lio/bidmachine/AdResponseLoader$NetworkCallback;

    :cond_0
    return-void
.end method

.method getId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lio/bidmachine/AdResponseLoader;->id:Ljava/lang/String;

    return-object v0
.end method

.method public load(Lio/bidmachine/AdRequestParameters;Ljava/util/List;Lio/bidmachine/ApiRequest$Builder;Lio/bidmachine/AdResponseLoader$Listener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequestParameters;",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkAdUnit;",
            ">;",
            "Lio/bidmachine/ApiRequest$Builder<",
            "*",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            ">;",
            "Lio/bidmachine/AdResponseLoader$Listener;",
            ")V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lio/bidmachine/AdResponseLoader;->TAG:Ljava/lang/String;

    const-string v1, "load"

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lio/bidmachine/AdResponseLoader;->callback:Lio/bidmachine/AdResponseLoader$NetworkCallback;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Lio/bidmachine/AdResponseLoader$NetworkCallback;->clear()V

    .line 52
    :cond_0
    iput-object p4, p0, Lio/bidmachine/AdResponseLoader;->listener:Lio/bidmachine/AdResponseLoader$Listener;

    .line 53
    new-instance v0, Lio/bidmachine/AdResponseLoader$NetworkCallback;

    iget-object v2, p0, Lio/bidmachine/AdResponseLoader;->id:Ljava/lang/String;

    .line 54
    invoke-virtual {p3}, Lio/bidmachine/ApiRequest$Builder;->getUrl()Ljava/lang/String;

    move-result-object v3

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/bidmachine/AdResponseLoader$NetworkCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/bidmachine/AdRequestParameters;Ljava/util/List;Lio/bidmachine/AdResponseLoader$Listener;)V

    iput-object v0, p0, Lio/bidmachine/AdResponseLoader;->callback:Lio/bidmachine/AdResponseLoader$NetworkCallback;

    .line 59
    invoke-virtual {p3, v0}, Lio/bidmachine/ApiRequest$Builder;->setCallback(Lio/bidmachine/core/NetworkRequest$Callback;)Lio/bidmachine/ApiRequest$Builder;

    .line 60
    iget-object p1, p0, Lio/bidmachine/AdResponseLoader;->callback:Lio/bidmachine/AdResponseLoader$NetworkCallback;

    invoke-virtual {p3, p1}, Lio/bidmachine/ApiRequest$Builder;->setCancelCallback(Lio/bidmachine/core/NetworkRequest$CancelCallback;)Lio/bidmachine/ApiRequest$Builder;

    .line 62
    invoke-static {}, Lio/bidmachine/NetworkRequestManager;->get()Lio/bidmachine/NetworkRequestManager;

    move-result-object p1

    iget-object p2, p0, Lio/bidmachine/AdResponseLoader;->id:Ljava/lang/String;

    invoke-virtual {p3}, Lio/bidmachine/ApiRequest$Builder;->request()Lio/bidmachine/ApiRequest;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lio/bidmachine/NetworkRequestManager;->add(Ljava/lang/String;Lio/bidmachine/core/NetworkRequest;)V

    return-void
.end method
