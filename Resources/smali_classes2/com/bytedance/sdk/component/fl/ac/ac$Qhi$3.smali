.class Lcom/bytedance/sdk/component/fl/ac/ac$Qhi$3;
.super Ljava/lang/Object;
.source "ImageRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/fl/ac/ac$Qhi;->Qhi(ILjava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/component/fl/ac/ac$Qhi;

.field final synthetic Qhi:I

.field final synthetic ac:Ljava/lang/Throwable;

.field final synthetic cJ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/fl/ac/ac$Qhi;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 661
    iput-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/ac$Qhi$3;->CJ:Lcom/bytedance/sdk/component/fl/ac/ac$Qhi;

    iput p2, p0, Lcom/bytedance/sdk/component/fl/ac/ac$Qhi$3;->Qhi:I

    iput-object p3, p0, Lcom/bytedance/sdk/component/fl/ac/ac$Qhi$3;->cJ:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/component/fl/ac/ac$Qhi$3;->ac:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 664
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$Qhi$3;->CJ:Lcom/bytedance/sdk/component/fl/ac/ac$Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/component/fl/ac/ac$Qhi;->Qhi(Lcom/bytedance/sdk/component/fl/ac/ac$Qhi;)Lcom/bytedance/sdk/component/fl/HzH;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/ac$Qhi$3;->CJ:Lcom/bytedance/sdk/component/fl/ac/ac$Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/component/fl/ac/ac$Qhi;->Qhi(Lcom/bytedance/sdk/component/fl/ac/ac$Qhi;)Lcom/bytedance/sdk/component/fl/HzH;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/fl/ac/ac$Qhi$3;->Qhi:I

    iget-object v2, p0, Lcom/bytedance/sdk/component/fl/ac/ac$Qhi$3;->cJ:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/component/fl/ac/ac$Qhi$3;->ac:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/fl/HzH;->Qhi(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
