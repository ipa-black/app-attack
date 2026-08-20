.class Lio/bidmachine/ads/networks/pangle/PangleAdapter$1$1;
.super Ljava/lang/Object;
.source "PangleAdapter.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/pangle/PangleAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/bidmachine/ads/networks/pangle/PangleAdapter$1;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/pangle/PangleAdapter$1;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lio/bidmachine/ads/networks/pangle/PangleAdapter$1$1;->this$1:Lio/bidmachine/ads/networks/pangle/PangleAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0

    .line 107
    iget-object p1, p0, Lio/bidmachine/ads/networks/pangle/PangleAdapter$1$1;->this$1:Lio/bidmachine/ads/networks/pangle/PangleAdapter$1;

    iget-object p1, p1, Lio/bidmachine/ads/networks/pangle/PangleAdapter$1;->val$callback:Lio/bidmachine/NetworkInitializationCallback;

    invoke-interface {p1, p2}, Lio/bidmachine/NetworkInitializationCallback;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public success()V
    .locals 1

    .line 102
    iget-object v0, p0, Lio/bidmachine/ads/networks/pangle/PangleAdapter$1$1;->this$1:Lio/bidmachine/ads/networks/pangle/PangleAdapter$1;

    iget-object v0, v0, Lio/bidmachine/ads/networks/pangle/PangleAdapter$1;->val$callback:Lio/bidmachine/NetworkInitializationCallback;

    invoke-interface {v0}, Lio/bidmachine/NetworkInitializationCallback;->onSuccess()V

    return-void
.end method
