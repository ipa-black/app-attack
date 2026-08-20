.class final Lcom/bytedance/sdk/openadsdk/utils/es$4;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/es;->Qhi(Landroid/view/ViewGroup;ZILcom/bytedance/sdk/openadsdk/utils/es$cJ;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/es$4;->Qhi:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 154
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/es$4;->Qhi:Landroid/view/ViewGroup;

    const v0, 0x1f000045

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/utils/es$cJ;

    if-eqz p1, :cond_0

    .line 156
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/es$cJ;->Qhi()V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 162
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/es$4;->Qhi:Landroid/view/ViewGroup;

    const v0, 0x1f000045

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/utils/es$cJ;

    if-eqz p1, :cond_0

    .line 164
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/es$cJ;->cJ()V

    :cond_0
    return-void
.end method
