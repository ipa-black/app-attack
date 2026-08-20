.class final Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$2;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "VideoPreloadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

.field final synthetic cJ:Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;)V
    .locals 0

    .line 133
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$2;->Qhi:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$2;->cJ:Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 138
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl;->Qhi:Lcom/bykv/vk/openvk/component/video/api/fl/Qhi;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$2;->Qhi:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$2;->cJ:Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;

    invoke-interface {v0, v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/api/fl/Qhi;->Qhi(Landroid/content/Context;Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method
