.class Lcom/bytedance/sdk/openadsdk/core/ROR/fl$1;
.super Ljava/lang/Object;
.source "VideoTrackers.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ROR/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

.field final synthetic cJ:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ROR/fl;Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;I)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/fl$1;->ac:Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/fl$1;->cJ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    if-eqz v0, :cond_0

    .line 168
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/fl$1;->cJ:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(I)V

    :cond_0
    return-void
.end method
