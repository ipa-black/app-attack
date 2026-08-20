.class Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl$Qhi;
.super Ljava/lang/Object;
.source "UGenRenderInterceptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Qhi"
.end annotation


# instance fields
.field Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

.field private ac:I

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;ILcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl$Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl$Qhi;->ac:I

    .line 88
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl$Qhi;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 93
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl$Qhi;->ac:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl$Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;->ac(Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;)Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Qhi(Z)V

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl$Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl$Qhi;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "real time out"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl$Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;->cJ(Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;)Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->Tgh()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x89

    invoke-static {v0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
