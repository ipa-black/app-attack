.class Lcom/bytedance/adsdk/ugeno/core/Tgh$7;
.super Lcom/bytedance/adsdk/ugeno/core/cJ;
.source "DefaultComponentBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/ugeno/core/Tgh;->Qhi()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/adsdk/ugeno/core/Tgh;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/ugeno/core/Tgh;Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/Tgh$7;->Qhi:Lcom/bytedance/adsdk/ugeno/core/Tgh;

    invoke-direct {p0, p2}, Lcom/bytedance/adsdk/ugeno/core/cJ;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public Qhi(Landroid/content/Context;)Lcom/bytedance/adsdk/ugeno/component/cJ;
    .locals 1

    .line 56
    new-instance v0, Lcom/bytedance/adsdk/ugeno/component/scroll/Qhi;

    invoke-direct {v0, p1}, Lcom/bytedance/adsdk/ugeno/component/scroll/Qhi;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
