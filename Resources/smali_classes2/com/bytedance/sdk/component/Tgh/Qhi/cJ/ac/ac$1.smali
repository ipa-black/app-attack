.class Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/ac$1;
.super Lcom/bytedance/sdk/component/Tgh/Qhi/fl/Tgh;
.source "AdPriorityLogThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/ac;->Qhi(Ljava/util/List;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/ac;

.field final synthetic Qhi:Ljava/util/List;

.field final synthetic ac:J

.field final synthetic cJ:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/ac;Ljava/lang/String;Ljava/util/List;ZJ)V
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/ac$1;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/ac;

    iput-object p3, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/ac$1;->Qhi:Ljava/util/List;

    iput-boolean p4, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/ac$1;->cJ:Z

    iput-wide p5, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/ac$1;->ac:J

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl/Tgh;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 597
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/ac$1;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/ac;

    iget-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/ac$1;->Qhi:Ljava/util/List;

    iget-boolean v2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/ac$1;->cJ:Z

    iget-wide v3, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/ac$1;->ac:J

    invoke-static {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/ac;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/ac;)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/ac;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/ac;Ljava/util/List;ZJI)V

    return-void
.end method
