.class Lcom/bytedance/sdk/openadsdk/common/Sf$3;
.super Ljava/lang/Object;
.source "TTBottomNewStyleManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/common/Sf;->ac()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/common/Sf;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/common/Sf;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/Sf$3;->Qhi:Lcom/bytedance/sdk/openadsdk/common/Sf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 86
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/Sf$3;->Qhi:Lcom/bytedance/sdk/openadsdk/common/Sf;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/common/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/common/Sf;)Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/Sf$3;->Qhi:Lcom/bytedance/sdk/openadsdk/common/Sf;

    const-string v0, "refresh"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/common/Sf;->cJ(Lcom/bytedance/sdk/openadsdk/common/Sf;Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/Sf$3;->Qhi:Lcom/bytedance/sdk/openadsdk/common/Sf;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/common/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/common/Sf;)Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->CJ()V

    :cond_0
    return-void
.end method
