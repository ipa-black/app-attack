.class Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl$3;
.super Lcom/bytedance/sdk/component/Tgh/Qhi/fl/Tgh;
.source "LogThreadCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;->fl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/ac;

.field final synthetic cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;Ljava/lang/String;Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/ac;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl$3;->cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;

    iput-object p3, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl$3;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/ac;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl/Tgh;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl$3;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/ac;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 248
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/ac;->ac(I)V

    :cond_0
    return-void
.end method
