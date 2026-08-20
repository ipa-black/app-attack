.class Lcom/bytedance/sdk/component/adexpress/fl/Qhi$1;
.super Ljava/lang/Object;
.source "BaseWebViewRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/component/adexpress/fl/Qhi;

.field final synthetic Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/pA;

.field final synthetic ac:F

.field final synthetic cJ:F


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/fl/Qhi;Lcom/bytedance/sdk/component/adexpress/cJ/pA;FF)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi$1;->CJ:Lcom/bytedance/sdk/component/adexpress/fl/Qhi;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi$1;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/pA;

    iput p3, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi$1;->cJ:F

    iput p4, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi$1;->ac:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi$1;->CJ:Lcom/bytedance/sdk/component/adexpress/fl/Qhi;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi$1;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/pA;

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi$1;->cJ:F

    iget v3, p0, Lcom/bytedance/sdk/component/adexpress/fl/Qhi$1;->ac:F

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Qhi(Lcom/bytedance/sdk/component/adexpress/fl/Qhi;Lcom/bytedance/sdk/component/adexpress/cJ/pA;FF)V

    return-void
.end method
