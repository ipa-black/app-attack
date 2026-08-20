.class Lcom/bytedance/sdk/openadsdk/core/NFd$9;
.super Ljava/lang/Object;
.source "TTAndroidObject.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/WAv/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/WAv/ac;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/WAv/ac;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/NFd;Lcom/bytedance/sdk/openadsdk/WAv/ac;)V
    .locals 0

    .line 1492
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$9;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$9;->Qhi:Lcom/bytedance/sdk/openadsdk/WAv/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/tP;",
            ">;)V"
        }
    .end annotation

    .line 1495
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/NFd$9$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/NFd$9$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/NFd$9;ZLjava/util/List;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Ljava/lang/Runnable;)V

    return-void
.end method
