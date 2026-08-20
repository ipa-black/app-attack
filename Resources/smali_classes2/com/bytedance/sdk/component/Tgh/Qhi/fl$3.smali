.class Lcom/bytedance/sdk/component/Tgh/Qhi/fl$3;
.super Lcom/bytedance/sdk/component/Tgh/Qhi/fl/Tgh;
.source "EventMultiUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->cJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;

.field final synthetic cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/fl;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Tgh/Qhi/fl;Ljava/lang/String;Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$3;->cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/fl;

    iput-object p3, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$3;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl/Tgh;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$3;->cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/fl;

    iget-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$3;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;->Tgh()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->cJ(Lcom/bytedance/sdk/component/Tgh/Qhi/fl;I)V

    return-void
.end method
