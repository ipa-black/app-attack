.class Lcom/bytedance/sdk/openadsdk/common/hm$2;
.super Ljava/lang/Object;
.source "TTPrivacyAdReportDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/common/hm;->cJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/common/hm;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/common/hm;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/hm$2;->Qhi:Lcom/bytedance/sdk/openadsdk/common/hm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 116
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/hm$2;->Qhi:Lcom/bytedance/sdk/openadsdk/common/hm;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/common/hm;->cJ(Lcom/bytedance/sdk/openadsdk/common/hm;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "loading ..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/hm$2;->Qhi:Lcom/bytedance/sdk/openadsdk/common/hm;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/common/hm;->cancel()V

    return-void
.end method
