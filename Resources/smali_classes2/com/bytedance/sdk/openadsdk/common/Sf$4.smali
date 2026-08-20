.class Lcom/bytedance/sdk/openadsdk/common/Sf$4;
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

    .line 92
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/Sf$4;->Qhi:Lcom/bytedance/sdk/openadsdk/common/Sf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 95
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/Sf$4;->Qhi:Lcom/bytedance/sdk/openadsdk/common/Sf;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/common/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/common/Sf;)Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/Sf$4;->Qhi:Lcom/bytedance/sdk/openadsdk/common/Sf;

    const-string v0, "external_btn_click"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/common/Sf;->cJ(Lcom/bytedance/sdk/openadsdk/common/Sf;Ljava/lang/String;)V

    .line 97
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Sf$4;->Qhi:Lcom/bytedance/sdk/openadsdk/common/Sf;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/common/Sf;)Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Sf$4;->Qhi:Lcom/bytedance/sdk/openadsdk/common/Sf;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/Sf;->ac(Lcom/bytedance/sdk/openadsdk/common/Sf;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/component/utils/cJ;->Qhi(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/cJ$Qhi;)Z

    :cond_0
    return-void
.end method
