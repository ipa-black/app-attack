.class Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Qhi/Gm$1;
.super Ljava/lang/Object;
.source "RubInAnimation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Qhi/Gm;->Qhi()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:I

.field final synthetic cJ:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Qhi/Gm;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Qhi/Gm;I)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Qhi/Gm$1;->cJ:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Qhi/Gm;

    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Qhi/Gm$1;->Qhi:I

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

    .line 69
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Qhi/Gm$1;->cJ:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Qhi/Gm;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Qhi/Gm;->Qhi(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Qhi/Gm;)Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Qhi/Gm$Qhi;

    move-result-object p1

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Qhi/Gm$1;->Qhi:I

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Qhi/Gm$Qhi;->Qhi(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    return-void
.end method
