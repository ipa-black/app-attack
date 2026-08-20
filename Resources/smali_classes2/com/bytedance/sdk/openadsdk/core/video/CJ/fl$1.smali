.class final Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$1;
.super Ljava/lang/Object;
.source "VideoPreloadFactory.java"

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic CJ:J

.field final synthetic Qhi:Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field final synthetic fl:Lcom/bykv/vk/openvk/component/video/api/ac/ac;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;JLcom/bykv/vk/openvk/component/video/api/ac/ac;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$1;->Qhi:Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$1;->ac:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$1;->CJ:J

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$1;->fl:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;I)V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$1;->Qhi:Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0, p1, p2}, Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;I)V

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$1;->ac:Lcom/bytedance/sdk/openadsdk/AdSlot;

    if-eqz p1, :cond_1

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$1;->CJ:J

    sub-long/2addr p1, v0

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$1;->fl:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$1;->ac:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;J)V

    :cond_1
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;ILjava/lang/String;)V
    .locals 11

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$1;->Qhi:Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0, p1, p2, p3}, Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;ILjava/lang/String;)V

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$1;->ac:Lcom/bytedance/sdk/openadsdk/AdSlot;

    if-eqz p1, :cond_1

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$1;->CJ:J

    sub-long v7, v0, v2

    .line 101
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$1;->fl:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$1;->ac:Lcom/bytedance/sdk/openadsdk/AdSlot;

    move v9, p2

    move-object v10, p3

    invoke-static/range {v4 .. v10}, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;JILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public cJ(Lcom/bykv/vk/openvk/component/video/api/ac/ac;I)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$1;->Qhi:Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;

    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0, p1, p2}, Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;I)V

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$1;->ac:Lcom/bytedance/sdk/openadsdk/AdSlot;

    if-eqz p2, :cond_1

    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$1;->fl:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 118
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$1;->fl:Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->iMK()Ljava/lang/String;

    move-result-object p1

    const-string p2, "cancel: "

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    return-void
.end method
