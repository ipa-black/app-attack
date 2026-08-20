.class final Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$15;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "PAGSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;->getBiddingToken(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/init/BiddingTokenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/api/init/BiddingTokenCallback;

.field final synthetic cJ:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/init/BiddingTokenCallback;Ljava/lang/String;)V
    .locals 0

    .line 735
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$15;->Qhi:Lcom/bytedance/sdk/openadsdk/api/init/BiddingTokenCallback;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$15;->cJ:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 738
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$15;->Qhi:Lcom/bytedance/sdk/openadsdk/api/init/BiddingTokenCallback;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$15;->cJ:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;->getBiddingToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/init/BiddingTokenCallback;->onBiddingTokenCollected(Ljava/lang/String;)V

    return-void
.end method
