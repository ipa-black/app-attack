.class Lcom/bytedance/sdk/component/Tgh/Qhi/fl$4;
.super Lcom/bytedance/sdk/component/Tgh/Qhi/fl/Tgh;
.source "EventMultiUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->cJ(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;

.field final synthetic ac:Lcom/bytedance/sdk/component/Tgh/Qhi/fl;

.field final synthetic cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Tgh/Qhi/fl;Ljava/lang/String;Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$4;->ac:Lcom/bytedance/sdk/component/Tgh/Qhi/fl;

    iput-object p3, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$4;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;

    iput-object p4, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$4;->cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl/Tgh;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$4;->ac:Lcom/bytedance/sdk/component/Tgh/Qhi/fl;

    iget-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$4;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;

    iget-object v2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$4;->cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;

    invoke-interface {v2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;->Tgh()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/fl;Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;I)V

    return-void
.end method
