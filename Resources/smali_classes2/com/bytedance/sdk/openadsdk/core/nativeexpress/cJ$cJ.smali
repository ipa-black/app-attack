.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$cJ;
.super Ljava/lang/Object;
.source "BrandBannerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "cJ"
.end annotation


# instance fields
.field Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$ac;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$ac;)V
    .locals 0

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$ac;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$ac;

    if-eqz v0, :cond_0

    const/16 v1, 0x6b

    .line 428
    invoke-interface {v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$ac;->Qhi(II)V

    :cond_0
    return-void
.end method
