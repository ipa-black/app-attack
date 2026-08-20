.class Lcom/bytedance/sdk/component/fl/ac/ac$Qhi$2;
.super Ljava/lang/Object;
.source "ImageRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/fl/ac/ac$Qhi;->Qhi(Lcom/bytedance/sdk/component/fl/zc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/component/fl/zc;

.field final synthetic cJ:Lcom/bytedance/sdk/component/fl/ac/ac$Qhi;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/fl/ac/ac$Qhi;Lcom/bytedance/sdk/component/fl/zc;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/ac$Qhi$2;->cJ:Lcom/bytedance/sdk/component/fl/ac/ac$Qhi;

    iput-object p2, p0, Lcom/bytedance/sdk/component/fl/ac/ac$Qhi$2;->Qhi:Lcom/bytedance/sdk/component/fl/zc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 631
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$Qhi$2;->cJ:Lcom/bytedance/sdk/component/fl/ac/ac$Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/component/fl/ac/ac$Qhi;->Qhi(Lcom/bytedance/sdk/component/fl/ac/ac$Qhi;)Lcom/bytedance/sdk/component/fl/HzH;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$Qhi$2;->cJ:Lcom/bytedance/sdk/component/fl/ac/ac$Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/component/fl/ac/ac$Qhi;->Qhi(Lcom/bytedance/sdk/component/fl/ac/ac$Qhi;)Lcom/bytedance/sdk/component/fl/HzH;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/fl/ac/ac$Qhi$2;->Qhi:Lcom/bytedance/sdk/component/fl/zc;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/fl/HzH;->Qhi(Lcom/bytedance/sdk/component/fl/zc;)V

    :cond_0
    return-void
.end method
