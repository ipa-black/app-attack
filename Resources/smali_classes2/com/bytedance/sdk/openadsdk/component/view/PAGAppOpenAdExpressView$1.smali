.class Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView$1;
.super Ljava/lang/Object;
.source "PAGAppOpenAdExpressView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;->cJ(Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/pA;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView$1;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/pA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView$1;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/pA;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;->Qhi(Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V

    return-void
.end method
