.class public Lcom/bytedance/adsdk/ugeno/core/fl;
.super Ljava/lang/Object;
.source "ComponentRegistrar.java"


# static fields
.field private static Qhi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/ugeno/core/cJ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/adsdk/ugeno/core/fl;->Qhi:Ljava/util/Map;

    return-void
.end method

.method public static Qhi(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/core/cJ;
    .locals 1

    .line 26
    sget-object v0, Lcom/bytedance/adsdk/ugeno/core/fl;->Qhi:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/ugeno/core/cJ;

    return-object p0
.end method

.method public static Qhi(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/core/cJ;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 15
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 18
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/ugeno/core/cJ;

    if-eqz v0, :cond_1

    .line 20
    sget-object v1, Lcom/bytedance/adsdk/ugeno/core/fl;->Qhi:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/core/cJ;->Qhi()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
