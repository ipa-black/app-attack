.class Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$4;
.super Ljava/lang/Object;
.source "BaseVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->cJ(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

.field final synthetic Qhi:J

.field final synthetic ac:I

.field final synthetic cJ:J


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;JJI)V
    .locals 0

    .line 877
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$4;->CJ:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$4;->Qhi:J

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$4;->cJ:J

    iput p6, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$4;->ac:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 880
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$4;->CJ:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->LcF(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    move-result-object v0

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$4;->Qhi:J

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$4;->cJ:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(JJ)V

    .line 881
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$4;->CJ:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Ohm(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$4;->ac:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(I)V

    .line 883
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$4;->CJ:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Ki(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$4;->CJ:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->yy(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    move-result-object v0

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$4;->Qhi:J

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$4;->cJ:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;->Qhi(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 887
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$4;->CJ:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->mz(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onProgressUpdate error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
