.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$9;
.super Ljava/lang/Object;
.source "NativeVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:J

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

.field final synthetic cJ:J


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;JJ)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$9;->ac:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$9;->Qhi:J

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$9;->cJ:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 305
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$9;->ac:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$9;->Qhi:J

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$9;->cJ:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;JJ)V

    .line 306
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$9;->ac:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$9;->Qhi:J

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$9;->cJ:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;JJ)V

    return-void
.end method
