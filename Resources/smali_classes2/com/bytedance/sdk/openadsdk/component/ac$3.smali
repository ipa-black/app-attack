.class Lcom/bytedance/sdk/openadsdk/component/ac$3;
.super Ljava/lang/Object;
.source "AppOpenAdNativeManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/ac;->Qhi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/ac;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/ac;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ac$3;->Qhi:Lcom/bytedance/sdk/openadsdk/component/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac$3;->Qhi:Lcom/bytedance/sdk/openadsdk/component/ac;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/ac;->fl:Lcom/bytedance/sdk/openadsdk/component/Qhi;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ac$3;->Qhi:Lcom/bytedance/sdk/openadsdk/component/ac;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/ac;->fl:Lcom/bytedance/sdk/openadsdk/component/Qhi;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/Qhi;->cJ(Landroid/view/View;)V

    :cond_0
    return-void
.end method
