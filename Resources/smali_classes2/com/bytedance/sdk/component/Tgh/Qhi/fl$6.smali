.class Lcom/bytedance/sdk/component/Tgh/Qhi/fl$6;
.super Lcom/bytedance/sdk/component/Tgh/Qhi/fl/Tgh;
.source "EventMultiUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/fl;

.field final synthetic Qhi:Ljava/lang/String;

.field final synthetic ac:Z

.field final synthetic cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Tgh/Qhi/fl;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;Z)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$6;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/fl;

    iput-object p3, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$6;->Qhi:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$6;->cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;

    iput-boolean p5, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$6;->ac:Z

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl/Tgh;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 308
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$6;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/fl;

    iget-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$6;->Qhi:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$6;->cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;

    invoke-interface {v2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;->Tgh()I

    move-result v2

    iget-boolean v3, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$6;->ac:Z

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/fl;Ljava/lang/String;IZ)V

    return-void
.end method
