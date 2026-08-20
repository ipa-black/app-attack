.class Lcom/bytedance/sdk/openadsdk/cJ/zc$3;
.super Ljava/lang/Object;
.source "LandingPageLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Ljava/lang/String;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/cJ/zc;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/cJ/zc;Ljava/lang/String;)V
    .locals 0

    .line 788
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$3;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$3;->Qhi:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 791
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$3;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->ac(Lcom/bytedance/sdk/openadsdk/cJ/zc;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$3;->Qhi:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/zc;->Qhi(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
