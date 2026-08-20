.class final Lcom/bytedance/sdk/component/utils/bxS$1;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "TTNetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/utils/bxS;->cJ(Landroid/content/Context;Landroid/content/Intent;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Landroid/content/Intent;

.field final synthetic Qhi:Z

.field final synthetic ac:Z

.field final synthetic cJ:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLandroid/content/Context;ZLandroid/content/Intent;)V
    .locals 0

    .line 93
    iput-boolean p2, p0, Lcom/bytedance/sdk/component/utils/bxS$1;->Qhi:Z

    iput-object p3, p0, Lcom/bytedance/sdk/component/utils/bxS$1;->cJ:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/bytedance/sdk/component/utils/bxS$1;->ac:Z

    iput-object p5, p0, Lcom/bytedance/sdk/component/utils/bxS$1;->CJ:Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 96
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/utils/bxS$1;->Qhi:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/bxS$1;->cJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/bxS;->Qhi(Landroid/content/Context;)I

    move-result v0

    :goto_0
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/bxS;->Qhi(I)I

    .line 98
    invoke-static {}, Lcom/bytedance/sdk/component/utils/bxS;->Qhi()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 100
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/utils/bxS$1;->ac:Z

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/bxS$1;->cJ:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/component/utils/bxS$1;->CJ:Landroid/content/Intent;

    invoke-static {}, Lcom/bytedance/sdk/component/utils/bxS;->cJ()I

    move-result v2

    iget-boolean v3, p0, Lcom/bytedance/sdk/component/utils/bxS$1;->Qhi:Z

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/utils/bxS;->Qhi(Landroid/content/Context;Landroid/content/Intent;IZ)V

    :cond_1
    return-void
.end method
