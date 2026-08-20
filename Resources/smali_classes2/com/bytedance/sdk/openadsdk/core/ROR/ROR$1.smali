.class Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$1;
.super Ljava/lang/Object;
.source "ViewabilitySessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Landroid/webkit/WebView;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;Landroid/webkit/WebView;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$1;->Qhi:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR$1;->Qhi:Landroid/webkit/WebView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;Landroid/webkit/WebView;)V

    return-void
.end method
