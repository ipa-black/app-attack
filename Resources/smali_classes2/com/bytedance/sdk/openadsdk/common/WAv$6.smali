.class Lcom/bytedance/sdk/openadsdk/common/WAv$6;
.super Ljava/lang/Object;
.source "TTTitleNewStyleManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/common/WAv;->Tgh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/common/WAv;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/common/WAv;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/WAv$6;->Qhi:Lcom/bytedance/sdk/openadsdk/common/WAv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(ILcom/bytedance/sdk/openadsdk/FilterWord;)V
    .locals 0

    .line 212
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/WAv$6;->Qhi:Lcom/bytedance/sdk/openadsdk/common/WAv;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/common/WAv;->CJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->hasSecondOptions()Z

    move-result p1

    if-nez p1, :cond_0

    .line 213
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/WAv$6;->Qhi:Lcom/bytedance/sdk/openadsdk/common/WAv;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/common/WAv;->CJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public Qhi(Landroid/view/View;)V
    .locals 1

    .line 197
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/WAv$6;->Qhi:Lcom/bytedance/sdk/openadsdk/common/WAv;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/common/WAv;->ac:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public cJ(Landroid/view/View;)V
    .locals 1

    .line 202
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/WAv$6;->Qhi:Lcom/bytedance/sdk/openadsdk/common/WAv;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/common/WAv;->ac:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
