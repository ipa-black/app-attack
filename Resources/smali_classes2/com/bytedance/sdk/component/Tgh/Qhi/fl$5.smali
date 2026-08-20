.class Lcom/bytedance/sdk/component/Tgh/Qhi/fl$5;
.super Lcom/bytedance/sdk/component/Tgh/Qhi/fl/Tgh;
.source "EventMultiUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;

.field final synthetic Qhi:Ljava/lang/String;

.field final synthetic ROR:Lcom/bytedance/sdk/component/Tgh/Qhi/fl;

.field final synthetic Tgh:Ljava/lang/String;

.field final synthetic ac:Z

.field final synthetic cJ:Ljava/util/List;

.field final synthetic fl:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Tgh/Qhi/fl;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/bytedance/sdk/component/Tgh/Qhi/Tgh;ILjava/lang/String;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$5;->ROR:Lcom/bytedance/sdk/component/Tgh/Qhi/fl;

    iput-object p3, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$5;->Qhi:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$5;->cJ:Ljava/util/List;

    iput-boolean p5, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$5;->ac:Z

    iput-object p6, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$5;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;

    iput p7, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$5;->fl:I

    iput-object p8, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$5;->Tgh:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl/Tgh;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 263
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$5;->ROR:Lcom/bytedance/sdk/component/Tgh/Qhi/fl;

    iget-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$5;->Qhi:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$5;->cJ:Ljava/util/List;

    iget-boolean v3, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$5;->ac:Z

    iget-object v4, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$5;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;

    invoke-interface {v4}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;->Tgh()I

    move-result v4

    iget v5, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$5;->fl:I

    iget-object v6, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$5;->Tgh:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/fl;Ljava/lang/String;Ljava/util/List;ZIILjava/lang/String;)V

    return-void
.end method
