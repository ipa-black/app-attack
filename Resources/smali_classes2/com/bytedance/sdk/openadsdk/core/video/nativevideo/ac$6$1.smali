.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$6$1;
.super Ljava/lang/Object;
.source "NativeVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$6;->Qhi(Landroid/content/Context;Landroid/content/Intent;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:I

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$6;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$6;I)V
    .locals 0

    .line 910
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$6$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$6;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$6$1;->Qhi:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 913
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$6$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$6;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$6;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$6$1;->Qhi:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;I)V

    return-void
.end method
