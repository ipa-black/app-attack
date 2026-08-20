.class Lcom/bytedance/sdk/openadsdk/core/hpZ$1;
.super Ljava/lang/Object;
.source "InteractionManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/cJ/cJ$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi(Landroid/view/ViewGroup;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/hpZ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/hpZ;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/hpZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Landroid/view/View;I)V
    .locals 0

    .line 247
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/hpZ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/hpZ;)Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 248
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/hpZ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/hpZ;)Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;->onAdClicked()V

    :cond_0
    return-void
.end method
