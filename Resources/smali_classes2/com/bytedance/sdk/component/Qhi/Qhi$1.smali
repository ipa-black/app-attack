.class Lcom/bytedance/sdk/component/Qhi/Qhi$1;
.super Ljava/lang/Object;
.source "AbstractBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/Qhi/Qhi;->invokeMethod(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Ljava/lang/String;

.field final synthetic cJ:Lcom/bytedance/sdk/component/Qhi/Qhi;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Qhi/Qhi;Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/bytedance/sdk/component/Qhi/Qhi$1;->cJ:Lcom/bytedance/sdk/component/Qhi/Qhi;

    iput-object p2, p0, Lcom/bytedance/sdk/component/Qhi/Qhi$1;->Qhi:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Qhi$1;->cJ:Lcom/bytedance/sdk/component/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/component/Qhi/Qhi;->Tgh:Z

    if-eqz v0, :cond_0

    return-void

    .line 56
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Qhi$1;->cJ:Lcom/bytedance/sdk/component/Qhi/Qhi;

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/sdk/component/Qhi/Qhi$1;->Qhi:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/Qhi/Qhi;Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/Qhi/HzH;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    invoke-static {v0}, Lcom/bytedance/sdk/component/Qhi/HzH;->Qhi(Lcom/bytedance/sdk/component/Qhi/HzH;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "By pass invalid call: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 63
    iget-object v1, p0, Lcom/bytedance/sdk/component/Qhi/Qhi$1;->cJ:Lcom/bytedance/sdk/component/Qhi/Qhi;

    new-instance v2, Lcom/bytedance/sdk/component/Qhi/tP;

    iget v3, v0, Lcom/bytedance/sdk/component/Qhi/HzH;->Qhi:I

    const-string v4, "Failed to parse invocation."

    invoke-direct {v2, v3, v4}, Lcom/bytedance/sdk/component/Qhi/tP;-><init>(ILjava/lang/String;)V

    invoke-static {v2}, Lcom/bytedance/sdk/component/Qhi/CQU;->Qhi(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/component/Qhi/Qhi;->cJ(Ljava/lang/String;Lcom/bytedance/sdk/component/Qhi/HzH;)V

    :cond_1
    return-void

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/component/Qhi/Qhi$1;->cJ:Lcom/bytedance/sdk/component/Qhi/Qhi;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/Qhi/HzH;)V

    return-void
.end method
