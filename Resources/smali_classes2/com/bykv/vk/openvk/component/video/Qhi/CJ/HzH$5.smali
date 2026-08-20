.class Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$5;
.super Ljava/lang/Object;
.source "SSMediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

.field final synthetic cJ:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;Lcom/bykv/vk/openvk/component/video/api/ac/ac;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$5;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;

    iput-object p2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$5;->Qhi:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 617
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$5;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Gm(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;)V

    .line 618
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$5;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Sf(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;)Lcom/bytedance/sdk/component/utils/CQU;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$5;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Sf(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;)Lcom/bytedance/sdk/component/utils/CQU;

    move-result-object v0

    const/16 v1, 0x6b

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$5;->Qhi:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/utils/CQU;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
