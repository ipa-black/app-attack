.class Lcom/bytedance/sdk/component/fl/CJ/HzH$1;
.super Ljava/lang/Object;
.source "NetVisitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/fl/CJ/HzH;->Qhi(Lcom/bytedance/sdk/component/fl/ac/ac;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Ljava/lang/String;

.field final synthetic Qhi:Lcom/bytedance/sdk/component/fl/cJ;

.field final synthetic Tgh:Lcom/bytedance/sdk/component/fl/CJ/HzH;

.field final synthetic ac:Lcom/bytedance/sdk/component/fl/ac/ac;

.field final synthetic cJ:Lcom/bytedance/sdk/component/fl/ac/ROR;

.field final synthetic fl:[B


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/fl/CJ/HzH;Lcom/bytedance/sdk/component/fl/cJ;Lcom/bytedance/sdk/component/fl/ac/ROR;Lcom/bytedance/sdk/component/fl/ac/ac;Ljava/lang/String;[B)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/bytedance/sdk/component/fl/CJ/HzH$1;->Tgh:Lcom/bytedance/sdk/component/fl/CJ/HzH;

    iput-object p2, p0, Lcom/bytedance/sdk/component/fl/CJ/HzH$1;->Qhi:Lcom/bytedance/sdk/component/fl/cJ;

    iput-object p3, p0, Lcom/bytedance/sdk/component/fl/CJ/HzH$1;->cJ:Lcom/bytedance/sdk/component/fl/ac/ROR;

    iput-object p4, p0, Lcom/bytedance/sdk/component/fl/CJ/HzH$1;->ac:Lcom/bytedance/sdk/component/fl/ac/ac;

    iput-object p5, p0, Lcom/bytedance/sdk/component/fl/CJ/HzH$1;->CJ:Ljava/lang/String;

    iput-object p6, p0, Lcom/bytedance/sdk/component/fl/CJ/HzH$1;->fl:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/CJ/HzH$1;->Qhi:Lcom/bytedance/sdk/component/fl/cJ;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/fl/cJ;->CJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/CJ/HzH$1;->cJ:Lcom/bytedance/sdk/component/fl/ac/ROR;

    iget-object v1, p0, Lcom/bytedance/sdk/component/fl/CJ/HzH$1;->ac:Lcom/bytedance/sdk/component/fl/ac/ac;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/fl/ac/ac;->MQ()Lcom/bytedance/sdk/component/fl/cJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/fl/ac/ROR;->ac(Lcom/bytedance/sdk/component/fl/cJ;)Lcom/bytedance/sdk/component/fl/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/fl/CJ/HzH$1;->CJ:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/component/fl/CJ/HzH$1;->fl:[B

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/fl/ac;->Qhi(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
