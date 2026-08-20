.class Lcom/bytedance/sdk/openadsdk/core/model/HzH$12;
.super Ljava/lang/Object;
.source "LandingPageModel.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Sf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$12;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 394
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$12;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->MQ(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 395
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$12;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->MQ(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;->CJ()V

    :cond_0
    return-void
.end method
