.class Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/fl$1;
.super Ljava/lang/Object;
.source "TTWebChromeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/fl;->Qhi(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Ljava/lang/String;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/fl;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/fl;Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/fl$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/fl;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/fl$1;->Qhi:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/fl$1;->Qhi:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/fl$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/fl;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/fl;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/HzH;->Qhi(Landroid/net/Uri;Lcom/bytedance/sdk/openadsdk/core/NFd;)V

    return-void
.end method
