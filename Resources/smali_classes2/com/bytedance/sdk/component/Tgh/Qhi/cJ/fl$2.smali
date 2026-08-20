.class Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl$2;
.super Lcom/bytedance/sdk/component/Tgh/Qhi/fl/Tgh;
.source "LogThreadCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;

.field final synthetic ac:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;

.field final synthetic cJ:J


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;Ljava/lang/String;Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;J)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl$2;->ac:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;

    iput-object p3, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl$2;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;

    iput-wide p4, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl$2;->cJ:J

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl/Tgh;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl$2;->ac:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;

    iget-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl$2;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;

    iget-wide v2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl$2;->cJ:J

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;J)V

    return-void
.end method
