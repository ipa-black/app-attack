.class Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$10;
.super Ljava/lang/Object;
.source "ViewabilitySessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:J

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

.field final synthetic cJ:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;JZ)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$10;->ac:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$10;->Qhi:J

    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$10;->cJ:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 299
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$10;->ac:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$10;->Qhi:J

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$10;->cJ:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->cJ(JZ)V

    return-void
.end method
