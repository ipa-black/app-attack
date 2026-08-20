.class Lcom/bytedance/sdk/component/adexpress/cJ/HzH$Qhi;
.super Ljava/lang/Object;
.source "WebViewRenderInterceptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/adexpress/cJ/HzH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Qhi"
.end annotation


# instance fields
.field Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

.field private ac:I

.field final synthetic cJ:Lcom/bytedance/sdk/component/adexpress/cJ/HzH;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/cJ/HzH;ILcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH$Qhi;->cJ:Lcom/bytedance/sdk/component/adexpress/cJ/HzH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH$Qhi;->ac:I

    .line 116
    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH$Qhi;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 121
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH$Qhi;->ac:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH$Qhi;->cJ:Lcom/bytedance/sdk/component/adexpress/cJ/HzH;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->cJ(Lcom/bytedance/sdk/component/adexpress/cJ/HzH;)Lcom/bytedance/sdk/component/adexpress/fl/Qhi;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Qhi(Z)V

    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH$Qhi;->cJ:Lcom/bytedance/sdk/component/adexpress/cJ/HzH;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH$Qhi;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    const/16 v2, 0x6b

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/HzH;Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
