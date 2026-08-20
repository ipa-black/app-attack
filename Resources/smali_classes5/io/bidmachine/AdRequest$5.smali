.class Lio/bidmachine/AdRequest$5;
.super Ljava/lang/Object;
.source "AdRequest.java"

# interfaces
.implements Lio/bidmachine/AdResponseLoader$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdRequest;->processRequestBuilder(Lio/bidmachine/ApiRequest$Builder;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/AdRequest;

.field final synthetic val$requestBuilder:Lio/bidmachine/ApiRequest$Builder;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/bidmachine/AdRequest;Ljava/lang/String;Lio/bidmachine/ApiRequest$Builder;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lio/bidmachine/AdRequest$5;->this$0:Lio/bidmachine/AdRequest;

    iput-object p2, p0, Lio/bidmachine/AdRequest$5;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lio/bidmachine/AdRequest$5;->val$requestBuilder:Lio/bidmachine/ApiRequest$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 547
    iget-object v0, p0, Lio/bidmachine/AdRequest$5;->this$0:Lio/bidmachine/AdRequest;

    invoke-static {v0}, Lio/bidmachine/AdRequest;->access$900(Lio/bidmachine/AdRequest;)V

    return-void
.end method

.method public onFail(Lio/bidmachine/utils/BMError;)V
    .locals 2

    .line 542
    iget-object v0, p0, Lio/bidmachine/AdRequest$5;->this$0:Lio/bidmachine/AdRequest;

    iget-object v1, p0, Lio/bidmachine/AdRequest$5;->val$requestBuilder:Lio/bidmachine/ApiRequest$Builder;

    invoke-virtual {v0, v1, p1}, Lio/bidmachine/AdRequest;->processApiRequestLoadedFail(Lio/bidmachine/ApiRequest$Builder;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onSuccess(Lio/bidmachine/AdResponse;)V
    .locals 2

    .line 536
    iget-object v0, p0, Lio/bidmachine/AdRequest$5;->this$0:Lio/bidmachine/AdRequest;

    iget-object v1, p0, Lio/bidmachine/AdRequest$5;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/bidmachine/AdRequest;->setAuctionUrl(Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lio/bidmachine/AdRequest$5;->this$0:Lio/bidmachine/AdRequest;

    invoke-virtual {v0, p1}, Lio/bidmachine/AdRequest;->processApiRequestSuccess(Lio/bidmachine/AdResponse;)V

    return-void
.end method
