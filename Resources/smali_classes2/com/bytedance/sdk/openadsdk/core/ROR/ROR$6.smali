.class Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$6;
.super Ljava/lang/Object;
.source "ViewabilitySessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(ZF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Z

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

.field final synthetic cJ:F


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;ZF)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$6;->ac:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$6;->Qhi:Z

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$6;->cJ:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$6;->ac:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$6;->Qhi:Z

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$6;->cJ:F

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;ZF)V

    return-void
.end method
