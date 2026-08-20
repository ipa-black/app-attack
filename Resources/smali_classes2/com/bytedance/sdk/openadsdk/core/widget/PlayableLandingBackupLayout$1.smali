.class Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLandingBackupLayout$1;
.super Ljava/lang/Object;
.source "PlayableLandingBackupLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLandingBackupLayout;->Qhi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLandingBackupLayout;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLandingBackupLayout;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLandingBackupLayout$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLandingBackupLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 122
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLandingBackupLayout$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLandingBackupLayout;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLandingBackupLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLandingBackupLayout$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLandingBackupLayout;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLandingBackupLayout;->Qhi(Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLandingBackupLayout;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLandingBackupLayout$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLandingBackupLayout;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLandingBackupLayout;->cJ(Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLandingBackupLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
