.class Lcom/bytedance/sdk/component/widget/Qhi$1;
.super Ljava/lang/Object;
.source "ArbitrageOnTouchListener.java"

# interfaces
.implements Lcom/bytedance/sdk/component/widget/Qhi$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/widget/Qhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/component/widget/Qhi;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/widget/Qhi;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/Qhi$1;->Qhi:Lcom/bytedance/sdk/component/widget/Qhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 6

    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/Qhi$1;->Qhi:Lcom/bytedance/sdk/component/widget/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/Qhi;->Qhi(Lcom/bytedance/sdk/component/widget/Qhi;)F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    const-string v2, ", mTriggerY: "

    const-string v3, ", mTriggerX: "

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/Qhi$1;->Qhi:Lcom/bytedance/sdk/component/widget/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/Qhi;->cJ(Lcom/bytedance/sdk/component/widget/Qhi;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/Qhi$1;->Qhi:Lcom/bytedance/sdk/component/widget/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/Qhi;->ac(Lcom/bytedance/sdk/component/widget/Qhi;)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/Qhi$1;->Qhi:Lcom/bytedance/sdk/component/widget/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/Qhi;->Qhi(Lcom/bytedance/sdk/component/widget/Qhi;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/Qhi$1;->Qhi:Lcom/bytedance/sdk/component/widget/Qhi;

    invoke-static {v1}, Lcom/bytedance/sdk/component/widget/Qhi;->cJ(Lcom/bytedance/sdk/component/widget/Qhi;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v4, "first trigger triggerJump()"

    filled-new-array {v4, v3, v0, v2, v1}, [Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/Qhi$1;->Qhi:Lcom/bytedance/sdk/component/widget/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/Qhi;->CJ(Lcom/bytedance/sdk/component/widget/Qhi;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/widget/Qhi;->Qhi(Lcom/bytedance/sdk/component/widget/Qhi;F)F

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/Qhi$1;->Qhi:Lcom/bytedance/sdk/component/widget/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/Qhi;->fl(Lcom/bytedance/sdk/component/widget/Qhi;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/widget/Qhi;->cJ(Lcom/bytedance/sdk/component/widget/Qhi;F)F

    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/Qhi$1;->Qhi:Lcom/bytedance/sdk/component/widget/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/Qhi;->Tgh(Lcom/bytedance/sdk/component/widget/Qhi;)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/bytedance/sdk/component/widget/Qhi;->Qhi(Lcom/bytedance/sdk/component/widget/Qhi;J)J

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/Qhi$1;->Qhi:Lcom/bytedance/sdk/component/widget/Qhi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/widget/Qhi;->Qhi(Lcom/bytedance/sdk/component/widget/Qhi;Z)Z

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/Qhi$1;->Qhi:Lcom/bytedance/sdk/component/widget/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/Qhi;->Qhi(Lcom/bytedance/sdk/component/widget/Qhi;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/Qhi$1;->Qhi:Lcom/bytedance/sdk/component/widget/Qhi;

    invoke-static {v1}, Lcom/bytedance/sdk/component/widget/Qhi;->cJ(Lcom/bytedance/sdk/component/widget/Qhi;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v4, "everytime trigger triggerJump()"

    filled-new-array {v4, v3, v0, v2, v1}, [Ljava/lang/Object;

    return-void
.end method

.method public Qhi(I)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/Qhi$1;->Qhi:Lcom/bytedance/sdk/component/widget/Qhi;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/widget/Qhi;->Qhi(Lcom/bytedance/sdk/component/widget/Qhi;I)I

    .line 73
    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/Qhi$1;->Qhi:Lcom/bytedance/sdk/component/widget/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/component/widget/Qhi;->ROR(Lcom/bytedance/sdk/component/widget/Qhi;)V

    return-void
.end method
