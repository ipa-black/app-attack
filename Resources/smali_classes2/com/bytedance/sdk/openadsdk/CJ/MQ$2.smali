.class Lcom/bytedance/sdk/openadsdk/CJ/MQ$2;
.super Ljava/lang/Object;
.source "FeatureCaculateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/openadsdk/CJ/MQ;

.field final synthetic Qhi:Ljava/lang/String;

.field final synthetic ac:Ljava/lang/String;

.field final synthetic cJ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/CJ/MQ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$2;->CJ:Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$2;->Qhi:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$2;->cJ:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$2;->ac:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$2;->CJ:Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$2;->Qhi:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$2;->cJ:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$2;->ac:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/CJ/MQ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
