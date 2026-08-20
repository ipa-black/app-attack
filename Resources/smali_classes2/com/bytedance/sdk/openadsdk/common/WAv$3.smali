.class Lcom/bytedance/sdk/openadsdk/common/WAv$3;
.super Ljava/lang/Object;
.source "TTTitleNewStyleManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/common/WAv;->Qhi()V
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

    .line 93
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/WAv$3;->Qhi:Lcom/bytedance/sdk/openadsdk/common/WAv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 101
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/WAv$3;->Qhi:Lcom/bytedance/sdk/openadsdk/common/WAv;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/common/WAv;->Qhi(Lcom/bytedance/sdk/openadsdk/common/WAv;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 96
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/WAv$3;->Qhi:Lcom/bytedance/sdk/openadsdk/common/WAv;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/common/WAv;->Qhi(Lcom/bytedance/sdk/openadsdk/common/WAv;Z)Z

    return-void
.end method
