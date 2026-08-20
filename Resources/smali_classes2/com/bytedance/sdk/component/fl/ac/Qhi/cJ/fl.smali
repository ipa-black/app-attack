.class public Lcom/bytedance/sdk/component/fl/ac/Qhi/cJ/fl;
.super Ljava/lang/Object;
.source "MemoryCacheWrapper.java"

# interfaces
.implements Lcom/bytedance/sdk/component/fl/tP;


# instance fields
.field private final Qhi:Lcom/bytedance/sdk/component/fl/tP;

.field private final cJ:Lcom/bytedance/sdk/component/fl/ac/Qhi/cJ;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/fl/tP;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/fl/ac/Qhi/cJ/fl;-><init>(Lcom/bytedance/sdk/component/fl/tP;Lcom/bytedance/sdk/component/fl/ac/Qhi/cJ;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/fl/tP;Lcom/bytedance/sdk/component/fl/ac/Qhi/cJ;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/Qhi/cJ/fl;->Qhi:Lcom/bytedance/sdk/component/fl/tP;

    .line 25
    iput-object p2, p0, Lcom/bytedance/sdk/component/fl/ac/Qhi/cJ/fl;->cJ:Lcom/bytedance/sdk/component/fl/ac/Qhi/cJ;

    return-void
.end method


# virtual methods
.method public Qhi(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/Qhi/cJ/fl;->Qhi:Lcom/bytedance/sdk/component/fl/tP;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/fl/tP;->Qhi(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public bridge synthetic Qhi(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/fl/ac/Qhi/cJ/fl;->Qhi(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Qhi(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 13
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/fl/ac/Qhi/cJ/fl;->Qhi(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method

.method public Qhi(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/Qhi/cJ/fl;->Qhi:Lcom/bytedance/sdk/component/fl/tP;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/fl/tP;->Qhi(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 32
    iget-object p2, p0, Lcom/bytedance/sdk/component/fl/ac/Qhi/cJ/fl;->cJ:Lcom/bytedance/sdk/component/fl/ac/Qhi/cJ;

    if-eqz p2, :cond_0

    .line 33
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_0
    return p1
.end method

.method public bridge synthetic cJ(Ljava/lang/Object;)Z
    .locals 0

    .line 13
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/fl/ac/Qhi/cJ/fl;->cJ(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public cJ(Ljava/lang/String;)Z
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/Qhi/cJ/fl;->Qhi:Lcom/bytedance/sdk/component/fl/tP;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/fl/tP;->cJ(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
