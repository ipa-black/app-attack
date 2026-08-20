.class public Lcom/bytedance/adsdk/lottie/ac/cJ/HzH;
.super Ljava/lang/Object;
.source "ShapeGroup.java"

# interfaces
.implements Lcom/bytedance/adsdk/lottie/ac/cJ/ac;


# instance fields
.field private final Qhi:Ljava/lang/String;

.field private final ac:Z

.field private final cJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/lottie/ac/cJ/ac;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/lottie/ac/cJ/ac;",
            ">;Z)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/HzH;->Qhi:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/HzH;->cJ:Ljava/util/List;

    .line 20
    iput-boolean p3, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/HzH;->ac:Z

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/adsdk/lottie/hm;Lcom/bytedance/adsdk/lottie/ROR;Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;)Lcom/bytedance/adsdk/lottie/Qhi/Qhi/ac;
    .locals 1

    .line 36
    new-instance v0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/fl;

    invoke-direct {v0, p1, p3, p0, p2}, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/fl;-><init>(Lcom/bytedance/adsdk/lottie/hm;Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;Lcom/bytedance/adsdk/lottie/ac/cJ/HzH;Lcom/bytedance/adsdk/lottie/ROR;)V

    return-object v0
.end method

.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/HzH;->Qhi:Ljava/lang/String;

    return-object v0
.end method

.method public ac()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/HzH;->ac:Z

    return v0
.end method

.method public cJ()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/lottie/ac/cJ/ac;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/HzH;->cJ:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShapeGroup{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/HzH;->Qhi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' Shapes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/HzH;->cJ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
